.class public final Ls0;
.super Ljava/lang/Object;
.source "r8-map-id-9f629aae3294a8fd2b479036378ca91bcaf195622852fc52046e14afd891eb13"

# interfaces
.implements Lhf;


# static fields
.field public static volatile g:Ls0;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls0;->h:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Ls0;->c:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ls0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls0;->c:I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ls0;->f:Ljava/lang/Object;

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ls0;->e:Ljava/lang/Object;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb0;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Ls0;->c:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    .line 85
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Ls0;->e:Ljava/lang/Object;

    .line 86
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Ls0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb4;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Ls0;->c:I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lb0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 76
    new-instance v1, Ls0;

    sget-object v2, Lng;->c:Lng;

    const-string v3, "flutter/accessibility"

    const/4 v4, 0x2

    invoke-direct {v1, p1, v3, v2, v4}, Ls0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p0, Ls0;->d:Ljava/lang/Object;

    .line 77
    new-instance v2, Lr0;

    invoke-direct {v2, v4, v1, v0}, Lr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p1, v3, v2}, Lb4;->j(Ljava/lang/String;Lf1;)V

    .line 79
    iput-object p2, p0, Ls0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lib;)V
    .locals 4

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iput v0, p0, Ls0;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ls0;->e:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Ls0;->f:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lcb;

    .line 18
    .line 19
    check-cast p1, Lp8;

    .line 20
    .line 21
    invoke-virtual {p1}, Lp8;->getBinaryMessenger()Lh1;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcb;-><init>(Lh1;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lr0;

    .line 29
    .line 30
    new-instance v2, Ldb;

    .line 31
    .line 32
    invoke-virtual {p1}, Lp8;->getBinaryMessenger()Lh1;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v2, v3}, Ldb;-><init>(Lh1;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Lr0;-><init>(Ldb;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    new-array v2, v2, [Lhb;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object v0, v2, v3

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v2, v0

    .line 50
    .line 51
    iput-object v2, p0, Ls0;->d:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v0, Lb0;

    .line 54
    .line 55
    invoke-virtual {p1}, Lp8;->getBinaryMessenger()Lh1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Lb0;-><init>(Lh1;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v0, Lb0;->d:Ljava/lang/Object;

    .line 63
    .line 64
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 80
    iput p4, p0, Ls0;->c:I

    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    iput-object p2, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p3, p0, Ls0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 65
    iput p4, p0, Ls0;->c:I

    iput-object p2, p0, Ls0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ls0;->e:Ljava/lang/Object;

    iput-object p1, p0, Ls0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ls0;->c:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 67
    const-string p1, "libapp.so"

    :cond_0
    iput-object p1, p0, Ls0;->d:Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 68
    const-string p2, "flutter_assets"

    :cond_1
    iput-object p2, p0, Ls0;->e:Ljava/lang/Object;

    .line 69
    iput-object p3, p0, Ls0;->f:Ljava/lang/Object;

    return-void
.end method

.method public static f(Landroid/content/Context;)Ls0;
    .locals 2

    .line 1
    sget-object v0, Ls0;->g:Ls0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Ls0;->h:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Ls0;->g:Ls0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ls0;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ls0;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Ls0;->g:Ls0;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Ls0;->g:Ls0;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, Ls0;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Ls0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ls0;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ld8;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ld8;->a(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v1, Lhf;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Lhf;->a(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object p0, p0, Ls0;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ls0;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ls0;->a(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object p0, p0, Ls0;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ls0;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ls0;->a(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    check-cast v1, Lc8;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lc8;->a(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    iget-object v1, p0, Ls0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    const/high16 v2, 0x7f0b0000

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-class v5, Lda;

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Class;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v2}, Ls0;->e(Ljava/lang/Class;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    .line 90
    new-instance p1, Lx2;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    return-void
.end method

.method public c(ILt;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ls0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lio/flutter/embedding/engine/FlutterJNI;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(ILt;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ls0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lio/flutter/embedding/engine/FlutterJNI;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILt;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Ljava/lang/Class;Ljava/util/HashSet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ls0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    const-string v1, "Cannot initialize "

    .line 6
    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x1d

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lwh;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const-string v2, "isTagEnabled"

    .line 20
    .line 21
    const-class v3, Landroid/os/Trace;

    .line 22
    .line 23
    :try_start_0
    sget-object v5, Lga;->i:Ljava/lang/reflect/Method;

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    const-string v5, "TRACE_TAG_APP"

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sput-wide v5, Lga;->h:J

    .line 38
    .line 39
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sput-object v3, Lga;->i:Ljava/lang/reflect/Method;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    sget-object v3, Lga;->i:Ljava/lang/reflect/Method;

    .line 55
    .line 56
    sget-wide v5, Lga;->h:J

    .line 57
    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-static {v2, v3}, Lga;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_2
    if-eqz v2, :cond_2

    .line 82
    .line 83
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v2}, Lga;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lda;

    .line 118
    .line 119
    invoke-interface {v1}, Lda;->a()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_4

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/lang/Class;

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_3

    .line 150
    .line 151
    invoke-virtual {p0, v3, p2}, Ls0;->e(Ljava/lang/Class;Ljava/util/HashSet;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget-object p0, p0, Ls0;->f:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Landroid/content/Context;

    .line 158
    .line 159
    invoke-interface {v1, p0}, Lda;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    :try_start_3
    new-instance p1, Lx2;

    .line 172
    .line 173
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .line 179
    .line 180
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p0, ". Cycle detected."

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    :catchall_1
    move-exception p0

    .line 212
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 213
    .line 214
    .line 215
    throw p0
.end method

.method public g(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ls0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lhb;

    .line 4
    .line 5
    iget-object v1, p0, Ls0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    array-length v1, v0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    new-instance v1, Lgb;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lgb;-><init>(Ls0;Landroid/view/KeyEvent;)V

    .line 24
    .line 25
    .line 26
    array-length p0, v0

    .line 27
    :goto_0
    if-ge v2, p0, :cond_1

    .line 28
    .line 29
    aget-object v4, v0, v2

    .line 30
    .line 31
    new-instance v5, Lfb;

    .line 32
    .line 33
    invoke-direct {v5, v1}, Lfb;-><init>(Lgb;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, p1, v5}, Lhb;->c(Landroid/view/KeyEvent;Lfb;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return v3

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Ls0;->i(Landroid/view/KeyEvent;)V

    .line 44
    .line 45
    .line 46
    return v3
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;Lb8;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh1;

    .line 4
    .line 5
    iget-object v1, p0, Ls0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Ls0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lrc;

    .line 12
    .line 13
    new-instance v3, Lr0;

    .line 14
    .line 15
    invoke-direct {v3, p1, p2}, Lr0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v3}, Lrc;->e(Lr0;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ld1;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {p2, v2, p0, p3}, Ld1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object p0, p2

    .line 33
    :goto_0
    invoke-interface {v0, v1, p1, p0}, Lh1;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg1;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public i(Landroid/view/KeyEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ls0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    iget-object p0, p0, Ls0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lib;

    .line 8
    .line 9
    if-eqz p0, :cond_b

    .line 10
    .line 11
    check-cast p0, Lp8;

    .line 12
    .line 13
    iget-object v1, p0, Lp8;->l:Lio/flutter/plugin/editing/b;

    .line 14
    .line 15
    iget-object v2, v1, Lio/flutter/plugin/editing/b;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_9

    .line 23
    .line 24
    iget-object v1, v1, Lio/flutter/plugin/editing/b;->j:Lea;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object v2, v1, Lea;->d:Lcc;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_9

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/16 v5, 0x15

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    if-ne v4, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v6, v2}, Lea;->d(ZZ)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/16 v5, 0x16

    .line 62
    .line 63
    if-ne v4, v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1, v3, v2}, Lea;->d(ZZ)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    const/16 v5, 0x13

    .line 80
    .line 81
    if-ne v4, v5, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v6, v2}, Lea;->e(ZZ)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/16 v5, 0x14

    .line 97
    .line 98
    if-ne v4, v5, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v1, v3, v2}, Lea;->e(ZZ)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/16 v5, 0x42

    .line 114
    .line 115
    if-eq v4, v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/16 v5, 0xa0

    .line 122
    .line 123
    if-ne v4, v5, :cond_6

    .line 124
    .line 125
    :cond_5
    iget-object v4, v1, Lea;->e:Landroid/view/inputmethod/EditorInfo;

    .line 126
    .line 127
    iget v5, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 128
    .line 129
    const/high16 v7, 0x20000

    .line 130
    .line 131
    and-int/2addr v5, v7

    .line 132
    if-nez v5, :cond_6

    .line 133
    .line 134
    iget v2, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 135
    .line 136
    and-int/lit16 v2, v2, 0xff

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lea;->performEditorAction(I)Z

    .line 139
    .line 140
    .line 141
    :goto_0
    move v3, v6

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-ltz v4, :cond_9

    .line 156
    .line 157
    if-ltz v5, :cond_9

    .line 158
    .line 159
    if-nez v7, :cond_7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {v1}, Lea;->beginBatchEdit()Z

    .line 171
    .line 172
    .line 173
    if-eq v3, v4, :cond_8

    .line 174
    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_8
    int-to-char v4, v7

    .line 179
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 184
    .line 185
    .line 186
    add-int/2addr v3, v6

    .line 187
    invoke-virtual {v1, v3, v3}, Lea;->setSelection(II)Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lea;->endBatchEdit()Z

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_9
    :goto_1
    if-eqz v3, :cond_a

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-eqz p0, :cond_b

    .line 212
    .line 213
    const-string p0, "KeyboardManager"

    .line 214
    .line 215
    const-string p1, "A redispatched key event was consumed before reaching KeyboardManager"

    .line 216
    .line 217
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_b
    :goto_2
    return-void
.end method

.method public j(Landroid/app/Activity;Lmj;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ls0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lmj;

    .line 23
    .line 24
    invoke-virtual {p2, v2}, Lmj;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lmj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Ls0;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lb0;

    .line 46
    .line 47
    iget-object p0, p0, Lb0;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcg;

    .line 50
    .line 51
    iget-object p0, p0, Lcg;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lbg;

    .line 68
    .line 69
    iget-object v1, v0, Lbg;->a:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iput-object p2, v0, Lbg;->c:Lmj;

    .line 79
    .line 80
    iget-object v0, v0, Lbg;->b:Ll8;

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ll8;->accept(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public k(Ljava/io/Serializable;Le1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh1;

    .line 4
    .line 5
    iget-object v1, p0, Ls0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Ls0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Loc;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Loc;->b(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Ld1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, v3, p0, p2}, Ld1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object p0, v2

    .line 28
    :goto_0
    invoke-interface {v0, v1, p1, p0}, Lh1;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public l(Lqc;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lh1;

    .line 4
    .line 5
    iget-object v1, p0, Ls0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Lr0;

    .line 14
    .line 15
    const/16 v3, 0xc

    .line 16
    .line 17
    invoke-direct {v2, v3, p0, p1}, Lr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object p0, v2

    .line 21
    :goto_0
    invoke-interface {v0, v1, p0}, Lh1;->j(Ljava/lang/String;Lf1;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public y(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ls0;->c:I

    .line 4
    .line 5
    const-string v2, "read"

    .line 6
    .line 7
    const-string v3, "null"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, v1, Ls0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Void;

    .line 19
    .line 20
    move-object v8, v5

    .line 21
    check-cast v8, Lx7;

    .line 22
    .line 23
    iget-object v0, v1, Ls0;->f:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, v0

    .line 26
    check-cast v5, Ld8;

    .line 27
    .line 28
    iget-object v13, v5, Ld8;->d:Lb8;

    .line 29
    .line 30
    :try_start_0
    iget-object v0, v5, Ld8;->c:Lr0;

    .line 31
    .line 32
    iget-object v7, v0, Lr0;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v7, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    const/4 v10, 0x1

    .line 41
    sparse-switch v9, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :sswitch_0
    const-string v0, "readAll"

    .line 47
    .line 48
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    new-instance v0, Lc8;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-direct {v0, v1, v2}, Lc8;-><init>(Ls0;I)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lr0;

    .line 61
    .line 62
    const/4 v3, 0x5

    .line 63
    invoke-direct {v2, v3, v8, v0}, Lr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v2, v4}, Lx7;->y(Lhf;Z)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :sswitch_1
    const-string v2, "containsKey"

    .line 75
    .line 76
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-static {v8, v0}, Le8;->b(Lx7;Lr0;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v2, v8, Lx7;->c:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :sswitch_2
    const-string v2, "write"

    .line 102
    .line 103
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    invoke-static {v8, v0}, Le8;->b(Lx7;Lr0;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    iget-object v0, v0, Lr0;->e:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Ljava/util/Map;

    .line 116
    .line 117
    const-string v2, "value"

    .line 118
    .line 119
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object v10, v0

    .line 124
    check-cast v10, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v10, :cond_0

    .line 127
    .line 128
    new-instance v11, Lc8;

    .line 129
    .line 130
    invoke-direct {v11, v1, v4}, Lc8;-><init>(Ls0;I)V

    .line 131
    .line 132
    .line 133
    new-instance v7, Lg0;

    .line 134
    .line 135
    const/4 v12, 0x3

    .line 136
    invoke-direct/range {v7 .. v12}, Lg0;-><init>(Lx7;Ljava/lang/Object;Ljava/lang/Object;Lhf;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v7, v4}, Lx7;->y(Lhf;Z)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_0
    invoke-virtual {v13, v3, v6, v6}, Lb8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :sswitch_3
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-static {v8, v0}, Le8;->b(Lx7;Lr0;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

     # ================= PATCH SKENARIO A =================
    # Cek apakah Flutter meminta key "username"
    const-string v2, "username"
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :cond_custom_hash
    # Jika meminta saved_username, kembalikan "admin"
    const-string v0, "admin"
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V
    goto/16 :goto_4
    :cond_custom_hash
    # Jika meminta saved_hash, kembalikan hash SHA-256 dari "admin"
    const-string v0, "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918"
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V
    goto/16 :goto_4
    # ====================================================

    .line 159
    iget-object v2, v8, Lx7;->c:Landroid/content/SharedPreferences;

    .line 160
    .line 161
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_1

    .line 166
    .line 167
    new-instance v9, Lc8;

    .line 168
    .line 169
    invoke-direct {v9, v1, v10}, Lc8;-><init>(Ls0;I)V

    .line 170
    .line 171
    .line 172
    new-instance v7, Ls0;

    .line 173
    .line 174
    const/4 v11, 0x4

    .line 175
    const/4 v12, 0x0

    .line 176
    move-object v10, v0

    .line 177
    invoke-direct/range {v7 .. v12}, Ls0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v7, v4}, Lx7;->y(Lhf;Z)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_4

    .line 184
    .line 185
    :cond_1
    invoke-virtual {v13, v6}, Lb8;->d(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :sswitch_4
    const-string v0, "deleteAll"

    .line 191
    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {v8}, Lx7;->f()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v13, v6}, Lb8;->d(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_4

    .line 205
    .line 206
    :sswitch_5
    const-string v2, "delete"

    .line 207
    .line 208
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    invoke-static {v8, v0}, Le8;->b(Lx7;Lr0;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v2, v8, Lx7;->c:Landroid/content/SharedPreferences;

    .line 219
    .line 220
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v6}, Lb8;->d(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_4

    .line 234
    .line 235
    :sswitch_6
    const-string v0, "isBiometricAvailable"

    .line 236
    .line 237
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_6

    .line 242
    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    const/16 v2, 0x1e

    .line 246
    .line 247
    if-lt v0, v2, :cond_4

    .line 248
    .line 249
    iget-object v0, v8, Lx7;->b:Landroid/content/Context;

    .line 250
    .line 251
    invoke-static {}, Lb7;->m()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Lb7;->d(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricManager;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-nez v0, :cond_2

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_2
    iget-object v2, v8, Lx7;->a:Ly7;

    .line 267
    .line 268
    iget-boolean v2, v2, Ly7;->i:Z

    .line 269
    .line 270
    if-eqz v2, :cond_3

    .line 271
    .line 272
    const/16 v2, 0xf

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_3
    const v2, 0x800f

    .line 276
    .line 277
    .line 278
    :goto_0
    invoke-static {v0, v2}, Lc1;->b(Landroid/hardware/biometrics/BiometricManager;I)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_5

    .line 283
    .line 284
    invoke-virtual {v8}, Lx7;->n()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_5

    .line 289
    .line 290
    move v4, v10

    .line 291
    goto :goto_1

    .line 292
    :cond_4
    invoke-virtual {v8}, Lx7;->n()Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    :cond_5
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :sswitch_7
    const-string v0, "isDeviceSecure"

    .line 305
    .line 306
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_6

    .line 311
    .line 312
    invoke-virtual {v8}, Lx7;->n()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_6
    :goto_2
    invoke-virtual {v13}, Lb8;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :goto_3
    instance-of v2, v0, Ljava/lang/VirtualMachineError;

    .line 329
    .line 330
    if-nez v2, :cond_8

    .line 331
    .line 332
    iget-object v1, v1, Ls0;->e:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v1, Ly7;

    .line 335
    .line 336
    iget-boolean v1, v1, Ly7;->d:Z

    .line 337
    .line 338
    if-eqz v1, :cond_7

    .line 339
    .line 340
    :try_start_1
    invoke-virtual {v8}, Lx7;->f()V

    .line 341
    .line 342
    .line 343
    const-string v0, "Data has been reset"

    .line 344
    .line 345
    invoke-virtual {v13, v0}, Lb8;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :catchall_1
    move-exception v0

    .line 350
    invoke-virtual {v5, v0}, Ld8;->a(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_7
    invoke-virtual {v5, v0}, Ld8;->a(Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    :goto_4
    return-void

    .line 358
    :cond_8
    check-cast v0, Ljava/lang/VirtualMachineError;

    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lm;->e(Ljava/lang/Object;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v5, Lhf;

    .line 366
    .line 367
    iget-object v2, v1, Ls0;->f:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v2, Lx7;

    .line 370
    .line 371
    :try_start_2
    iget-object v3, v2, Lx7;->e:Ls1;

    .line 372
    .line 373
    iget-object v4, v2, Lx7;->b:Landroid/content/Context;

    .line 374
    .line 375
    invoke-static {v0}, Lm;->h(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {v0}, Lm;->o(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Cipher;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v3, v4, v0}, Ls1;->f(Landroid/content/Context;Ljavax/crypto/Cipher;)Lsg;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iput-object v0, v2, Lx7;->d:Lsg;

    .line 388
    .line 389
    const-string v0, "FlutterSecureStorage"

    .line 390
    .line 391
    const-string v3, "Biometric authentication succeeded"

    .line 392
    .line 393
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    invoke-interface {v5, v6}, Lhf;->y(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 397
    .line 398
    .line 399
    goto :goto_5

    .line 400
    :catchall_2
    move-exception v0

    .line 401
    instance-of v3, v0, Ljava/lang/VirtualMachineError;

    .line 402
    .line 403
    if-nez v3, :cond_9

    .line 404
    .line 405
    iget-object v1, v1, Ls0;->e:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v1, Lr0;

    .line 408
    .line 409
    new-instance v3, Ljava/lang/Exception;

    .line 410
    .line 411
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    const-string v0, "Biometric key decrypt failed after successful authentication"

    .line 415
    .line 416
    invoke-virtual {v2, v1, v5, v3, v0}, Lx7;->k(Lr0;Lhf;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :goto_5
    return-void

    .line 420
    :cond_9
    check-cast v0, Ljava/lang/VirtualMachineError;

    .line 421
    .line 422
    throw v0

    .line 423
    :pswitch_1
    move-object/from16 v0, p1

    .line 424
    .line 425
    check-cast v0, Ljava/lang/Void;

    .line 426
    .line 427
    iget-object v0, v1, Ls0;->f:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v0, Lx7;

    .line 430
    .line 431
    check-cast v5, Landroid/content/SharedPreferences;

    .line 432
    .line 433
    iput-object v5, v0, Lx7;->c:Landroid/content/SharedPreferences;

    .line 434
    .line 435
    iget-object v0, v1, Ls0;->e:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Ls0;

    .line 438
    .line 439
    invoke-virtual {v0, v6}, Ls0;->y(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_2
    move-object/from16 v0, p1

    .line 444
    .line 445
    check-cast v0, Ljava/lang/Void;

    .line 446
    .line 447
    iget-object v0, v1, Ls0;->f:Ljava/lang/Object;

    .line 448
    .line 449
    move-object v8, v0

    .line 450
    check-cast v8, Lx7;

    .line 451
    .line 452
    check-cast v5, Ly7;

    .line 453
    .line 454
    iget-object v0, v1, Ls0;->e:Ljava/lang/Object;

    .line 455
    .line 456
    move-object v10, v0

    .line 457
    check-cast v10, Ls0;

    .line 458
    .line 459
    iget-object v0, v8, Lx7;->b:Landroid/content/Context;

    .line 460
    .line 461
    invoke-virtual {v5}, Ly7;->b()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    new-instance v1, Lr0;

    .line 470
    .line 471
    invoke-virtual {v5}, Ly7;->b()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-direct {v1, v0, v2}, Lr0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    sget-object v2, Lwa;->d:Lwa;

    .line 479
    .line 480
    iget-object v2, v2, Lwa;->c:Lo;

    .line 481
    .line 482
    const-string v7, "\'"

    .line 483
    .line 484
    const-string v11, "LegacyNamespaceKeyRecovery"

    .line 485
    .line 486
    const-string v12, "Unwrapped key is not AES-key-shaped ("

    .line 487
    .line 488
    const-string v13, "Moved wrapped key for namespace \'"

    .line 489
    .line 490
    invoke-virtual {v5}, Ly7;->b()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    iget-object v15, v5, Ly7;->c:Ljava/lang/String;

    .line 495
    .line 496
    const-string v6, "FlutterSecureKeyStorage"

    .line 497
    .line 498
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    move-object/from16 v17, v3

    .line 505
    .line 506
    const-string v3, "FlutterSecureKeyStorage:"

    .line 507
    .line 508
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    const/4 v4, 0x0

    .line 519
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v5}, Ly7;->f()Z

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    if-eqz v4, :cond_a

    .line 528
    .line 529
    invoke-virtual {v5}, Ly7;->h()Ly7;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    move-object/from16 p1, v6

    .line 534
    .line 535
    move-object v6, v3

    .line 536
    move-object/from16 v3, p1

    .line 537
    .line 538
    :goto_6
    move-object/from16 p1, v8

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_a
    invoke-virtual {v5, v14}, Ly7;->g(Ljava/lang/String;)Ly7;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    goto :goto_6

    .line 546
    :goto_7
    const-string v8, "AESVGhpcyBpcyB0aGUga2V5IGZvciBhIHNlY3VyZSBzdG9yYWdlIEFFUyBLZXkK"

    .line 547
    .line 548
    move-object/from16 p0, v9

    .line 549
    .line 550
    const/4 v9, 0x0

    .line 551
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v16

    .line 555
    if-eqz v16, :cond_b

    .line 556
    .line 557
    goto/16 :goto_b

    .line 558
    .line 559
    :cond_b
    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v16

    .line 563
    if-eqz v16, :cond_11

    .line 564
    .line 565
    invoke-static {v0, v14, v15}, Li4;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v16

    .line 569
    if-eqz v16, :cond_11

    .line 570
    .line 571
    :try_start_3
    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    const/4 v9, 0x0

    .line 576
    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-virtual {v2, v0, v4}, Lo;->a(Landroid/content/Context;Ly7;)Lva;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    invoke-interface {v4, v3}, Lva;->h([B)Ljava/security/Key;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    if-eqz v4, :cond_e

    .line 593
    .line 594
    array-length v9, v4

    .line 595
    move-object/from16 v16, v6

    .line 596
    .line 597
    const/16 v6, 0x10

    .line 598
    .line 599
    if-eq v9, v6, :cond_c

    .line 600
    .line 601
    goto :goto_8

    .line 602
    :cond_c
    invoke-static {v0, v14, v15, v4}, Li4;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    if-eqz v4, :cond_d

    .line 607
    .line 608
    invoke-virtual {v2, v0, v5}, Lo;->a(Landroid/content/Context;Ly7;)Lva;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {v0, v3}, Lva;->n(Ljava/security/Key;)[B

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    const/4 v4, 0x0

    .line 621
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    .line 631
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    goto :goto_b

    .line 651
    :catchall_3
    move-exception v0

    .line 652
    goto :goto_a

    .line 653
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 654
    .line 655
    const-string v2, "Unwrapped key does not decrypt this instance\'s own data; likely a different instance\'s key under the same preference name"

    .line 656
    .line 657
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    throw v0

    .line 661
    :cond_e
    :goto_8
    new-instance v0, Ljava/lang/Exception;

    .line 662
    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    if-nez v4, :cond_f

    .line 669
    .line 670
    move-object/from16 v3, v17

    .line 671
    .line 672
    goto :goto_9

    .line 673
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .line 677
    .line 678
    array-length v4, v4

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v4, " bytes"

    .line 683
    .line 684
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v3, "); likely belongs to a different instance"

    .line 695
    .line 696
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 707
    :goto_a
    instance-of v2, v0, Ljava/lang/VirtualMachineError;

    .line 708
    .line 709
    if-nez v2, :cond_10

    .line 710
    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string v3, "Could not move wrapped key for namespace \'"

    .line 714
    .line 715
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .line 730
    .line 731
    goto :goto_b

    .line 732
    :cond_10
    check-cast v0, Ljava/lang/VirtualMachineError;

    .line 733
    .line 734
    throw v0

    .line 735
    :cond_11
    :goto_b
    new-instance v7, Ls0;

    .line 736
    .line 737
    const/4 v11, 0x6

    .line 738
    const/4 v12, 0x0

    .line 739
    move-object/from16 v9, p0

    .line 740
    .line 741
    move-object/from16 v8, p1

    .line 742
    .line 743
    invoke-direct/range {v7 .. v12}, Ls0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v8, v1, v7}, Lx7;->m(Lr0;Lhf;)V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_3
    move-object/from16 v3, p1

    .line 751
    .line 752
    check-cast v3, Lsg;

    .line 753
    .line 754
    iget-object v0, v1, Ls0;->e:Ljava/lang/Object;

    .line 755
    .line 756
    move-object v4, v0

    .line 757
    check-cast v4, Ljava/lang/String;

    .line 758
    .line 759
    iget-object v0, v1, Ls0;->f:Ljava/lang/Object;

    .line 760
    .line 761
    move-object v1, v0

    .line 762
    check-cast v1, Lx7;

    .line 763
    .line 764
    check-cast v5, Lc8;

    .line 765
    .line 766
    :try_start_4
    iget-object v0, v1, Lx7;->c:Landroid/content/SharedPreferences;

    .line 767
    .line 768
    const/4 v9, 0x0

    .line 769
    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    if-nez v0, :cond_12

    .line 774
    .line 775
    const/4 v9, 0x0

    .line 776
    goto :goto_c

    .line 777
    :cond_12
    const/4 v9, 0x0

    .line 778
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v3, v0}, Lsg;->a([B)[B

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    new-instance v9, Ljava/lang/String;

    .line 787
    .line 788
    sget-object v6, Lx7;->f:Ljava/nio/charset/Charset;

    .line 789
    .line 790
    invoke-direct {v9, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 791
    .line 792
    .line 793
    :goto_c
    invoke-virtual {v5, v9}, Lc8;->y(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 794
    .line 795
    .line 796
    goto :goto_e

    .line 797
    :catch_0
    move-exception v0

    .line 798
    invoke-static {v1, v2, v4, v0}, Lx7;->a(Lx7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Z

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    if-eqz v2, :cond_14

    .line 803
    .line 804
    :try_start_5
    iget-object v0, v1, Lx7;->c:Landroid/content/SharedPreferences;

    .line 805
    .line 806
    const/4 v9, 0x0

    .line 807
    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-nez v0, :cond_13

    .line 812
    .line 813
    move-object v6, v9

    .line 814
    goto :goto_d

    .line 815
    :cond_13
    const/4 v4, 0x0

    .line 816
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v3, v0}, Lsg;->a([B)[B

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    new-instance v6, Ljava/lang/String;

    .line 825
    .line 826
    sget-object v1, Lx7;->f:Ljava/nio/charset/Charset;

    .line 827
    .line 828
    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 829
    .line 830
    .line 831
    :goto_d
    invoke-virtual {v5, v6}, Lc8;->y(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 832
    .line 833
    .line 834
    goto :goto_e

    .line 835
    :catch_1
    move-exception v0

    .line 836
    invoke-virtual {v5, v0}, Lc8;->a(Ljava/lang/Exception;)V

    .line 837
    .line 838
    .line 839
    goto :goto_e

    .line 840
    :cond_14
    invoke-virtual {v5, v0}, Lc8;->a(Ljava/lang/Exception;)V

    .line 841
    .line 842
    .line 843
    :goto_e
    return-void

    .line 844
    nop

    .line 845
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :sswitch_data_0
    .sparse-switch
        -0x658c4049 -> :sswitch_7
        -0x543e8045 -> :sswitch_6
        -0x4f997a55 -> :sswitch_5
        -0x1561e80a -> :sswitch_4
        0x355996 -> :sswitch_3
        0x6c257df -> :sswitch_2
        0xc6607c0 -> :sswitch_1
        0x4065382b -> :sswitch_0
    .end sparse-switch
.end method
