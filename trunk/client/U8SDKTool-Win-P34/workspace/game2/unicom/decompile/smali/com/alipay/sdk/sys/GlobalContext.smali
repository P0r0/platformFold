.class public Lcom/alipay/sdk/sys/GlobalContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/sys/GlobalContext;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private f:Lcom/alipay/sdk/data/MspConfig;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/GlobalContext;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/alipay/sdk/sys/GlobalContext;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/GlobalContext;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    .line 41
    :cond_b
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->a:Lcom/alipay/sdk/sys/GlobalContext;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 112
    const-string v2, ""

    .line 113
    const/4 v0, 0x0

    .line 115
    :try_start_3
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_3a
    .catchall {:try_start_3 .. :try_end_f} :catchall_43

    move-result-object v1

    .line 120
    :try_start_10
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    if-eqz v0, :cond_56

    if-eqz v3, :cond_56

    .line 125
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_51
    .catchall {:try_start_10 .. :try_end_29} :catchall_4f

    move-result-object v2

    move-object v0, v2

    .line 127
    :goto_2b
    :try_start_2b
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 129
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_54
    .catchall {:try_start_2b .. :try_end_36} :catchall_4f

    .line 134
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_4b

    .line 139
    :goto_39
    return-object v0

    .line 130
    :catch_3a
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 134
    :goto_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_39

    .line 135
    :catch_41
    move-exception v1

    goto :goto_39

    .line 133
    :catchall_43
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 134
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 136
    :goto_4a
    throw v0

    .line 135
    :catch_4b
    move-exception v1

    goto :goto_39

    :catch_4d
    move-exception v1

    goto :goto_4a

    .line 133
    :catchall_4f
    move-exception v0

    goto :goto_47

    .line 130
    :catch_51
    move-exception v0

    move-object v0, v2

    goto :goto_3d

    :catch_54
    move-exception v2

    goto :goto_3d

    :cond_56
    move-object v0, v2

    goto :goto_2b
.end method

.method private a(Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 170
    const/16 v0, 0x41

    new-array v4, v0, [C

    fill-array-data v4, :array_28

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 178
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_f
    if-ge v3, v6, :cond_22

    .line 180
    aget-char v7, v5, v3

    .line 181
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_16
    if-ge v1, v8, :cond_20

    .line 182
    aget-char v9, v4, v1

    if-ne v7, v9, :cond_1d

    .line 183
    const/4 v0, 0x1

    .line 181
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 185
    :cond_20
    if-nez v0, :cond_23

    .line 188
    :cond_22
    return v0

    .line 178
    :cond_23
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    .line 170
    nop

    :array_28
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
        0x3ds
    .end array-data
.end method

.method public static g()Z
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
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

    .line 92
    :goto_1d
    :try_start_1d
    array-length v4, v3

    if-ge v2, v4, :cond_70

    .line 93
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

    .line 94
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    if-eqz v5, :cond_6c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 96
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

    .line 97
    invoke-static {v2}, Lcom/alipay/sdk/sys/GlobalContext;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_67} :catch_6f

    move-result v2

    if-ne v3, v2, :cond_6b

    :cond_6a
    move v0, v1

    .line 107
    :cond_6b
    :goto_6b
    return v0

    .line 92
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 105
    :catch_6f
    move-exception v0

    :cond_70
    move v0, v1

    .line 107
    goto :goto_6b
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .prologue
    .line 153
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/sdk/util/BaseHelper;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    sput-object v0, Lcom/alipay/sdk/sys/GlobalContext;->e:Ljava/lang/String;

    .line 155
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lcom/alipay/sdk/sys/GlobalContext;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 73
    iput p1, p0, Lcom/alipay/sdk/sys/GlobalContext;->d:I

    .line 74
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/alipay/sdk/sys/GlobalContext;->f:Lcom/alipay/sdk/data/MspConfig;

    .line 52
    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/alipay/sdk/data/MspConfig;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->f:Lcom/alipay/sdk/data/MspConfig;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Ljava/lang/String;

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/util/BaseHelper;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/sdk/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/alipay/sdk/sys/GlobalContext;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 166
    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method
