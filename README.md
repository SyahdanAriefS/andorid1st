
# SOC VirusTotal Scanner 🛡️

🌌 Overview
SOC VirusTotal Scanner is a high-performance tactical threat intelligence client built with Flutter. Engineered strictly under SSDLC (Secure Software Development Life Cycle) principles, it serves as a secure mobile gateway for Security Operations Center (SOC) analysts to query the VirusTotal API v3.

The application repudiates traditional, insecure mobile development paradigms. Instead, it guarantees absolute data integrity and client-side security through an on-device, hardware-backed Zero-Knowledge Local Vault and a Zero-Trust Network Architecture.

🌟 Key Features

🔐 1. Zero-Knowledge Local Vault (Auth & Data At Rest)

- Hardware-Backed Cryptography: Master credentials are sealed directly into the Android Keystore utilizing OS-level encryption via `flutter_secure_storage`.
- Dynamic First-Time Setup: Eradicates hardcoded passwords entirely. Evaluates vault initialization upon cold-boot, routing seamlessly to a secure registration flow if the vault is empty.
- Volatile Memory Sanitization: Employs `.clear()` on `TextEditingController` instances to aggressively purge plaintext passwords from RAM milliseconds after the SHA-256 hash computation, neutralizing Memory Forensics attacks.
- Anti-Brute Force Mitigation: Incorporates cryptographic time-delays during authentication to mathematically exhaust automated dictionary and brute-force scripts.

🌐 2. Zero-Trust Network Architecture (Data In Transit)

- Custom SSL/TLS Pinning: Rejects all default OS Certificate Authorities (CAs). Network sessions are established only after explicit validation of authorized Issuers (e.g., Google Trust Services).
- MitM Callback Interception: Blocks Man-in-the-Middle proxy interception tools like BurpSuite and Charles Proxy by implementing a strict `badCertificateCallback` inspection pipeline.

🛡️ 3. Advanced Input Sanitization

- HTTP Parameter Pollution Defense: All query parameters (IoCs) are scrubbed through a strict Regular Expression (Regex) engine prior to network transmission.
- Guaranteed Type Safety: Ensures that only structurally valid IPv4, IPv6, or Domain Name formats can trigger backend computational resources.

📊 4. Real-Time Threat Intelligence HUD

- Instant Telemetry: Direct REST integration with VirusTotal v3 to pull synchronous detection metrics (Malicious, Suspicious, Undetected, Harmless).
- Clean Architecture UI: Threat telemetry is rendered through decoupled, lightweight, and stateless glass-inspired metric cards (`ResultCard`) for rapid visual escalation.

🛡️ SSDLC & Production Hardening
SOC VirusTotal Scanner incorporates defense-in-depth security controls prior to binary compilation:

| Security Domain             | Hardening Mechanism                                                                                                                                 |
| :-------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Secret Management** | API Keys are isolated in a local`.env` environment and strictly omitted from version control via `.gitignore`.                                  |
| **Memory Forensics**  | Passwords are never retained in String variables longer than required and are manually zeroed out of the heap.                                      |
| **Network Security**  | System CAs are bypassed. All outbound traffic operates under a strict Zero-Trust callback validation model.                                         |
| **Code Obfuscation**  | Android R8 / ProGuard enabled (`isMinifyEnabled = true`, `isShrinkResources = true`) to thwart reverse engineering and de-compilation attempts. |

🏗️ Project Architecture
The codebase strictly adheres to Clean Architecture, segregating visual components from cryptographic and network logic:

lib/
├── main.dart                      # App entry point & environment initialization
├── screens/
│   ├── home_page.dart             # Real-time search dashboard & metric rendering
│   └── login_page.dart            # First-time setup & vault unlock interface
├── services/
│   ├── api_service.dart           # TLS Pinning, Regex sanitization & VT API integration
│   └── auth_service.dart          # Android Keystore, SHA-256 hashing & vault management
└── widgets/
    └── result_card.dart           # Extracted stateless UI for threat metric visualization

🚀 Getting Started

Prerequisites

- Flutter SDK: ^3.10.0 or later
- Dart SDK: ^3.x
- Android SDK: Min SDK 21, Target SDK 34
- VirusTotal API v3 Key

Setup & Run

1. Clone the repository:

```bash
git clone [https://github.com/SyahdanAriefS/andorid1st.git](https://github.com/SyahdanAriefS/andorid1st.git)
cd andorid1st
```

2. Establish Secure Environment:
   Create a `.env` file in the root directory and inject your VT API Key:

```env
API_KEY=your_virustotal_api_key_here
```

3. Fetch dependencies:

```bash
flutter pub get
```

4. Verify static analysis:

```bash
flutter analyze --no-pub
```

5. Launch on target device:

```bash
flutter run
```

📦 Production Release Compilation
To compile a hardened, R8-optimized release APK with per-ABI splitting (producing a lightweight and reverse-engineering-resistant binary):

1. Purge legacy build caches:

```bash
flutter clean
flutter pub get
```

2. Build release APK with architecture splitting:

```bash
flutter build apk --split-per-abi --release --no-tree-shake-icons
```

Compiled binaries will be generated at:

- `build/app/outputs/flutter-apk/app-arm64-v8a-release.apk` (Recommended for modern hardware)
- `build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk` (For legacy 32-bit devices)
