.class public Lcom/baidu/bdgame/sdk/obf/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/bz;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kn;->a:Ljava/util/concurrent/ExecutorService;

    .line 34
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ml;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kn;->b:Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kn;->c:Z

    .line 52
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0, p3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 200
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 201
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 2

    .prologue
    .line 191
    if-eqz p1, :cond_5

    .line 192
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 195
    :cond_5
    return-void
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kn;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static c()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kn;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .line 72
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kn;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/kn$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/kn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kn;Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method public static d()Lcom/baidu/bdgame/sdk/obf/kn;
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kn;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kn;-><init>()V

    return-object v0
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, -0x1

    const-string v1, "connect error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 206
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 207
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kn;->c:Z

    .line 214
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This thread(non_ui) forbids invoke."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/kn;->c(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 68
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/kz",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This thread(ui) forbids invoke."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_14
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST ACT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->k()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 95
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST ACT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->k()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Network Not Avaliable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "Net not connected."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 188
    :goto_8c
    return-void

    .line 104
    :cond_8d
    const/4 v1, 0x0

    .line 106
    :try_start_8e
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/mb;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 107
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->l()[B

    move-result-object v0

    .line 110
    if-nez v0, :cond_bc

    .line 111
    const/high16 v0, -0x80000000

    const-string v2, "encode error"

    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 113
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_b8} :catch_164
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_b8} :catch_1c0
    .catchall {:try_start_8e .. :try_end_b8} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_8c

    .line 116
    :cond_bc
    :try_start_bc
    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/net/HttpURLConnection;)V

    .line 118
    const-string v2, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->k()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXECUTE START"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/baidu/bdgame/sdk/obf/kn;->c:Z

    if-eqz v2, :cond_ec

    .line 123
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Lcom/baidu/bdgame/sdk/obf/o;)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_e8} :catch_164
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e8} :catch_1c0
    .catchall {:try_start_bc .. :try_end_e8} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_8c

    .line 128
    :cond_ec
    :try_start_ec
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 131
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 135
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_10a

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_14c

    .line 137
    :cond_10a
    const-string v2, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->k()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, -0x1

    const-string v3, "http %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 143
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_147} :catch_164
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_147} :catch_1c0
    .catchall {:try_start_ec .. :try_end_147} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_8c

    .line 148
    :cond_14c
    :try_start_14c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 151
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 153
    :goto_159
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v6, :cond_17d

    .line 154
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_163} :catch_164
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_163} :catch_1c0
    .catchall {:try_start_14c .. :try_end_163} :catchall_1dd

    goto :goto_159

    .line 177
    :catch_164
    move-exception v0

    .line 178
    :try_start_165
    const-class v2, Lcom/baidu/bdgame/sdk/obf/kn;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/kn;->d(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_178
    .catchall {:try_start_165 .. :try_end_178} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_8c

    .line 156
    :cond_17d
    :try_start_17d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 160
    const-string v0, "BaiduPlatformSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST ACT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->k()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXECUTE END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kn;->c:Z

    if-eqz v0, :cond_1b5

    .line 165
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Lcom/baidu/bdgame/sdk/obf/o;)V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_1b0} :catch_164
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1b0} :catch_1c0
    .catchall {:try_start_17d .. :try_end_1b0} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_8c

    .line 172
    :cond_1b5
    :try_start_1b5
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a([B)V

    .line 173
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/o;)V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1bb} :catch_164
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1bb} :catch_1c0
    .catchall {:try_start_1b5 .. :try_end_1bb} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_8c

    .line 181
    :catch_1c0
    move-exception v0

    .line 182
    :try_start_1c1
    const-class v2, Lcom/baidu/bdgame/sdk/obf/kn;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d8
    .catchall {:try_start_1c1 .. :try_end_1d8} :catchall_1dd

    .line 186
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_8c

    :catchall_1dd
    move-exception v0

    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method
