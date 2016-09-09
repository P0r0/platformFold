.class public Lcom/alipay/sdk/util/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.alipay.android.app"

.field public static final b:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final c:Ljava/lang/String; = "com.eg.android.AlipayGphoneRC"

.field public static final d:Ljava/lang/String; = "android"

.field static e:Lcom/alipay/sdk/util/DeviceInfo; = null

.field private static final f:Ljava/lang/String; = "00:00:00:00:00:00"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/util/DeviceInfo;->e:Lcom/alipay/sdk/util/DeviceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 53
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->i:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_4a

    .line 59
    :goto_15
    :try_start_15
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 62
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/util/DeviceInfo;->b(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/util/DeviceInfo;->a(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_4f

    .line 79
    :goto_2b
    :try_start_2b
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_54
    .catchall {:try_start_2b .. :try_end_3d} :catchall_65

    .line 86
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 87
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    .line 91
    :cond_49
    :goto_49
    return-void

    .line 54
    :catch_4a
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_15

    .line 74
    :catch_4f
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_2b

    .line 83
    :catch_54
    move-exception v0

    .line 84
    :try_start_55
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_65

    .line 86
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 87
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    goto :goto_49

    .line 86
    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 87
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    :cond_72
    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/sdk/util/DeviceInfo;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/sdk/util/DeviceInfo;->e:Lcom/alipay/sdk/util/DeviceInfo;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/alipay/sdk/util/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/sdk/util/DeviceInfo;->e:Lcom/alipay/sdk/util/DeviceInfo;

    .line 41
    :cond_b
    sget-object v0, Lcom/alipay/sdk/util/DeviceInfo;->e:Lcom/alipay/sdk/util/DeviceInfo;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/util/NetConnectionType;
    .registers 3

    .prologue
    .line 164
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 166
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 168
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/util/NetConnectionType;->a(I)Lcom/alipay/sdk/util/NetConnectionType;

    move-result-object v0

    .line 173
    :goto_1c
    return-object v0

    .line 169
    :cond_1d
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 171
    sget-object v0, Lcom/alipay/sdk/util/NetConnectionType;->a:Lcom/alipay/sdk/util/NetConnectionType;

    goto :goto_1c

    .line 173
    :cond_29
    sget-object v0, Lcom/alipay/sdk/util/NetConnectionType;->o:Lcom/alipay/sdk/util/NetConnectionType;

    goto :goto_1c
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-static {}, Lcom/alipay/sdk/util/DeviceInfo;->f()Z

    move-result v1

    if-nez v1, :cond_8

    .line 196
    :goto_7
    return v0

    .line 190
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    :try_start_c
    const-string v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_7

    .line 195
    :catch_12
    move-exception v0

    .line 196
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 223
    invoke-static {p0}, Lcom/alipay/sdk/util/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/DeviceInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method public static f()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 206
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    long-to-double v2, v2

    .line 214
    const-wide/high16 v4, 0x4180000000000000L    # 3.3554432E7

    cmpl-double v1, v2, v4

    if-lez v1, :cond_39

    const/4 v0, 0x1

    .line 216
    :cond_39
    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 110
    if-eqz p1, :cond_1c

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_1c
    iput-object p1, p0, Lcom/alipay/sdk/util/DeviceInfo;->g:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->g:Ljava/lang/String;

    .line 98
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_3b

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v0, v1

    .line 121
    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_1d

    .line 122
    aget-byte v3, v2, v0

    if-lt v3, v5, :cond_1a

    aget-byte v3, v2, v0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1a

    .line 121
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 125
    :cond_1a
    aput-byte v5, v2, v0

    goto :goto_17

    .line 127
    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 132
    :cond_3b
    iput-object p1, p0, Lcom/alipay/sdk/util/DeviceInfo;->h:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->h:Ljava/lang/String;

    .line 106
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    .line 140
    invoke-virtual {p0}, Lcom/alipay/sdk/util/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/alipay/sdk/util/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_34
    return-object v0

    .line 148
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/sdk/util/DeviceInfo;->j:Ljava/lang/String;

    return-object v0
.end method
