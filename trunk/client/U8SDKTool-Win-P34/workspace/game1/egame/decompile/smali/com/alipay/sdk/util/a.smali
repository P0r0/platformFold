.class public final Lcom/alipay/sdk/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static e:Lcom/alipay/sdk/util/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/util/a;->e:Lcom/alipay/sdk/util/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_3
    const-string v0, "phone"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/sdk/util/a;->b(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_32
    iput-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    .line 40
    const-string v0, "wifi"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_53
    .catchall {:try_start_3 .. :try_end_46} :catchall_64

    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 48
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    .line 52
    :cond_52
    :goto_52
    return-void

    .line 44
    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_64

    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 48
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    goto :goto_52

    .line 47
    :catchall_64
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 48
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    :cond_71
    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/sdk/util/a;->e:Lcom/alipay/sdk/util/a;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/alipay/sdk/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/sdk/util/a;->e:Lcom/alipay/sdk/util/a;

    .line 30
    :cond_b
    sget-object v0, Lcom/alipay/sdk/util/a;->e:Lcom/alipay/sdk/util/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 71
    if-eqz p1, :cond_1c

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_1c
    iput-object p1, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
    .registers 3

    .prologue
    .line 125
    const-string v0, "connectivity"

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1d

    .line 130
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 131
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/util/d;->a(I)Lcom/alipay/sdk/util/d;

    move-result-object v0

    .line 139
    :goto_1c
    return-object v0

    .line 132
    :cond_1d
    if-eqz v0, :cond_29

    .line 133
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 134
    sget-object v0, Lcom/alipay/sdk/util/d;->a:Lcom/alipay/sdk/util/d;

    goto :goto_1c

    .line 136
    :cond_29
    sget-object v0, Lcom/alipay/sdk/util/d;->o:Lcom/alipay/sdk/util/d;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 139
    :catch_2c
    move-exception v0

    sget-object v0, Lcom/alipay/sdk/util/d;->o:Lcom/alipay/sdk/util/d;

    goto :goto_1c
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_3a

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v0, v1

    .line 82
    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 83
    aget-byte v3, v2, v0

    if-lt v3, v5, :cond_17

    aget-byte v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_19

    .line 84
    :cond_17
    aput-byte v5, v2, v0

    .line 82
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 88
    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_3a
    iput-object p1, p0, Lcom/alipay/sdk/util/a;->c:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_38
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0

    .line 144
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_34
    return-object v0

    .line 109
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

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    if-nez p0, :cond_5

    .line 152
    const-string v0, ""

    .line 162
    :goto_4
    return-object v0

    .line 156
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 158
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 159
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_4

    .line 162
    :catch_14
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    .line 59
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/a;->c:Ljava/lang/String;

    .line 67
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/sdk/util/a;->d:Ljava/lang/String;

    return-object v0
.end method
