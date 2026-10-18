import os, jwt, datetime, hashlib, pymysql, requests
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException, Depends
from fastapi.security import HTTPBearer, HTTPAuthorizationCredentials
from pydantic import BaseModel

load_dotenv()
app, security = FastAPI(), HTTPBearer()
SECRET_KEY = os.getenv("SECRET_KEY", "fallback_key")
DB_CONF = {'host': os.getenv("DB_HOST", "127.0.0.1"), 
           'port': int(os.getenv("DB_PORT", 3306)), 
           'user': os.getenv("DB_USER", "root"), 
           'password': os.getenv("DB_PASSWORD", ""), 
           'database': os.getenv("DB_NAME", "vt_scanner_db"), 
           'cursorclass': pymysql.cursors.DictCursor}

class LoginReq(BaseModel): username: str; password: str
class TokenReq(BaseModel): refresh_token: str

# Helper untuk menangani koneksi dan kueri database secara otomatis
def db_query(sql, params=(), fetch=False):
    with pymysql.connect(**DB_CONF) as conn, conn.cursor() as cur:
        cur.execute(sql, params)
        if fetch: return cur.fetchone()
        conn.commit()

def add_bl(token: str): db_query("INSERT IGNORE INTO blacklisted_tokens (token) VALUES (%s)", (token,))
def is_bl(token: str): return db_query("SELECT token FROM blacklisted_tokens WHERE token = %s", (token,), True) is not None

# Helper untuk membuat pasangan token baru
def gen_tokens(user: str):
    now = datetime.datetime.utcnow()
    acc = jwt.encode({"sub": user, "type": "access", "exp": now + datetime.timedelta(minutes=1)}, SECRET_KEY, "HS256")
    ref = jwt.encode({"sub": user, "type": "refresh", "exp": now + datetime.timedelta(days=1)}, SECRET_KEY, "HS256")
    return {"access_token": acc, "refresh_token": ref}

def verify_session(cred: HTTPAuthorizationCredentials = Depends(security)):
    t = cred.credentials
    if is_bl(t): raise HTTPException(401, "Token dihancurkan (Logout)")
    try:
        p = jwt.decode(t, SECRET_KEY, algorithms=["HS256"])
        if p.get("type") != "access": raise HTTPException(401, "Gunakan Access Token")
        return p["sub"]
    except (jwt.ExpiredSignatureError, jwt.InvalidTokenError):
        raise HTTPException(401, "Token tidak valid/kedaluwarsa")

@app.post("/auth/login")
def login(req: LoginReq):
    user = db_query("SELECT password_hash FROM users WHERE username = %s", (req.username,), True)
    if not user or user["password_hash"] != hashlib.sha256(req.password.encode()).hexdigest():
        raise HTTPException(401, "Kredensial salah")
    return gen_tokens(req.username)

@app.post("/auth/refresh")
def refresh(req: TokenReq):
    if is_bl(req.refresh_token): raise HTTPException(401, "Token ditukar/dihancurkan")
    try:
        p = jwt.decode(req.refresh_token, SECRET_KEY, algorithms=["HS256"])
        if p.get("type") != "refresh": raise HTTPException(401, "Gunakan Refresh Token")
        add_bl(req.refresh_token) # Hancurkan refresh token lama (Rotation)
        return gen_tokens(p["sub"])
    except (jwt.ExpiredSignatureError, jwt.InvalidTokenError):
        raise HTTPException(401, "Sesi berakhir. Silakan login ulang.")

@app.post("/auth/logout")
def logout(req: TokenReq, cred: HTTPAuthorizationCredentials = Depends(security)):
    add_bl(cred.credentials); add_bl(req.refresh_token)
    return {"message": "Berhasil logout."}

@app.get("/api/search")
def search_vt(query: str, user: str = Depends(verify_session)):
    key = os.getenv("VT_API_KEY")
    if not key: raise HTTPException(500, "API Key VirusTotal belum diatur")
    r = requests.get(f"https://www.virustotal.com/api/v3/search?query={query}", headers={"x-apikey": key, "Accept": "application/json"})
    if r.status_code == 200: return r.json()
    raise HTTPException(r.status_code, "Gagal mengambil data dari VirusTotal")
