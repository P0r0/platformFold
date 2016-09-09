.class public final Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/alipay/sdk/sys/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/b;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/alipay/sdk/sys/b;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    .line 36
    :cond_b
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 76
    const-string v2, ""

    .line 77
    const/4 v0, 0x0

    .line 79
    :try_start_3
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_35
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    move-result-object v1

    .line 84
    :try_start_10
    new-instance v3, Ljava/io/DataOutputStream;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    new-instance v0, Ljava/io/DataInputStream;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_25} :catch_4c
    .catchall {:try_start_10 .. :try_end_25} :catchall_4a

    move-result-object v0

    .line 91
    :try_start_26
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_31} :catch_4f
    .catchall {:try_start_26 .. :try_end_31} :catchall_4a

    .line 97
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_46

    .line 101
    :goto_34
    return-object v0

    :catch_35
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 97
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_34

    .line 100
    :catch_3c
    move-exception v1

    goto :goto_34

    .line 96
    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 97
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_48

    .line 99
    :goto_45
    throw v0

    .line 100
    :catch_46
    move-exception v1

    goto :goto_34

    :catch_48
    move-exception v1

    goto :goto_45

    .line 96
    :catchall_4a
    move-exception v0

    goto :goto_42

    :catch_4c
    move-exception v0

    move-object v0, v2

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public static b()Z
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const-string v2, "/system/sbin/"

    aput-object v2, v3, v4

    const-string v2, "/sbin/"

    aput-object v2, v3, v5

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    .line 56
    :goto_1d
    :try_start_1d
    array-length v4, v3

    if-ge v2, v4, :cond_6e

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 60
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "-l"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 61
    invoke-static {v2}, Lcom/alipay/sdk/sys/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "root"

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_65} :catch_6d

    move-result v2

    if-ne v3, v2, :cond_69

    :cond_68
    move v0, v1

    .line 71
    :cond_69
    :goto_69
    return v0

    .line 56
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_6d
    move-exception v0

    :cond_6e
    move v0, v1

    .line 71
    goto :goto_69
.end method

.method private d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static e()Lcom/alipay/sdk/data/c;
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    const-string v0, ""

    .line 107
    :try_start_2
    iget-object v1, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object v0

    .line 109
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method
