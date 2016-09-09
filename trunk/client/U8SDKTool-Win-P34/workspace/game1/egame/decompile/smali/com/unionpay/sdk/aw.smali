.class final Lcom/unionpay/sdk/aw;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:Z

.field static c:Z

.field private static final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/aw;->a:Z

    sput-boolean v1, Lcom/unionpay/sdk/aw;->b:Z

    sput-boolean v1, Lcom/unionpay/sdk/aw;->c:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/aw;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_28
    .catchall {:try_start_1 .. :try_end_8} :catchall_32

    move-result-object v1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "channel_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_21} :catch_42
    .catchall {:try_start_9 .. :try_end_21} :catchall_40

    move-result-object v0

    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_3c

    :cond_27
    :goto_27
    return-object v0

    :catch_28
    move-exception v1

    move-object v1, v0

    :goto_2a
    if-eqz v1, :cond_27

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_27

    :catch_30
    move-exception v1

    goto :goto_27

    :catchall_32
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3e

    :cond_3b
    :goto_3b
    throw v0

    :catch_3c
    move-exception v1

    goto :goto_27

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catchall_40
    move-exception v0

    goto :goto_36

    :catch_42
    move-exception v2

    goto :goto_2a
.end method

.method static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v1, 0x100

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_20

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_16

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a()Ljava/nio/channels/FileChannel;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/unionpay/sdk/ad;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "unionpaytd.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_17
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_23

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_39

    move-result-object v0

    :cond_22
    :goto_22
    return-object v0

    :catch_23
    move-exception v1

    move-object v2, v0

    :goto_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_30

    :cond_28
    :goto_28
    sget-boolean v2, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    :catch_30
    move-exception v2

    sget-boolean v3, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :catch_39
    move-exception v1

    goto :goto_25
.end method

.method static a(Ljava/lang/Class;Lcom/unionpay/sdk/ao;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/unionpay/sdk/ay;

    invoke-direct {v3, p1, v1}, Lcom/unionpay/sdk/ay;-><init>(Lcom/unionpay/sdk/ao;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;Lcom/unionpay/sdk/ao;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/unionpay/sdk/ax;

    invoke-direct {v3, p1, v1}, Lcom/unionpay/sdk/ax;-><init>(Lcom/unionpay/sdk/ao;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/unionpay/sdk/aw;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static a(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_9

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method static final b(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/aw;->a([B)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/aw;->a([B)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_3

    :catch_19
    move-exception v1

    goto :goto_3
.end method
