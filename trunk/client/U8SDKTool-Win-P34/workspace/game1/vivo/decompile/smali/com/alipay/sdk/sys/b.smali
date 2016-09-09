.class public final Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/alipay/sdk/sys/b;


# instance fields
.field public a:Landroid/content/Context;

.field private c:Lcom/alipay/sdk/data/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/b;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/alipay/sdk/sys/b;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    .line 38
    :cond_b
    sget-object v0, Lcom/alipay/sdk/sys/b;->b:Lcom/alipay/sdk/sys/b;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 82
    const-string v2, ""

    .line 83
    const/4 v0, 0x0

    .line 85
    :try_start_3
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_35
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    move-result-object v1

    .line 90
    :try_start_10
    new-instance v3, Ljava/io/DataOutputStream;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    new-instance v0, Ljava/io/DataInputStream;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_4c
    .catchall {:try_start_10 .. :try_end_25} :catchall_4a

    move-result-object v0

    .line 97
    :try_start_26
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_4f
    .catchall {:try_start_26 .. :try_end_31} :catchall_4a

    .line 103
    :try_start_31
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_46

    .line 108
    :goto_34
    return-object v0

    :catch_35
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 103
    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_34

    .line 106
    :catch_3c
    move-exception v1

    goto :goto_34

    .line 102
    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 103
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_48

    .line 105
    :goto_45
    throw v0

    .line 106
    :catch_46
    move-exception v1

    goto :goto_34

    :catch_48
    move-exception v1

    goto :goto_45

    .line 102
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

.method public static c()Z
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
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

    .line 62
    :goto_1d
    :try_start_1d
    array-length v4, v3

    if-ge v2, v4, :cond_6e

    .line 63
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

    .line 64
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 66
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

    .line 67
    invoke-static {v2}, Lcom/alipay/sdk/sys/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    const-string v3, "root"

    .line 69
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

    .line 77
    :cond_69
    :goto_69
    return v0

    .line 62
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_6d
    move-exception v0

    :cond_6e
    move v0, v1

    .line 77
    goto :goto_69
.end method

.method private d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    .line 114
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_d
    const/16 v3, 0x18

    if-ge v0, v3, :cond_61

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_66

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :pswitch_1c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L    # 65.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L    # 97.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :pswitch_4e
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0

    .line 114
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_35
        :pswitch_4e
    .end packed-switch
.end method

.method private f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V
    .registers 4

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/alipay/sdk/sys/b;->c:Lcom/alipay/sdk/data/d;

    .line 48
    return-void
.end method

.method public final b()Lcom/alipay/sdk/data/d;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->c:Lcom/alipay/sdk/data/d;

    if-eqz v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->c:Lcom/alipay/sdk/data/d;

    .line 54
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v0

    goto :goto_6
.end method
