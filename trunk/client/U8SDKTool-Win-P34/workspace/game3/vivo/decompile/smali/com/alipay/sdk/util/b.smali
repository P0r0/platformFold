.class public final Lcom/alipay/sdk/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static e:Lcom/alipay/sdk/util/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/util/b;->e:Lcom/alipay/sdk/util/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_3
    const-string v0, "phone"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 34
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/sdk/util/b;->b(Ljava/lang/String;)V

    .line 35
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
    iput-object v0, p0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/String;

    .line 36
    const-string v0, "wifi"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 38
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_53
    .catchall {:try_start_3 .. :try_end_46} :catchall_61

    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 43
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    .line 47
    :cond_52
    :goto_52
    return-void

    .line 40
    :catch_53
    move-exception v0

    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 43
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    goto :goto_52

    .line 42
    :catchall_61
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 43
    const-string v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    :cond_6e
    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/sdk/util/b;->e:Lcom/alipay/sdk/util/b;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/alipay/sdk/util/b;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/sdk/util/b;->e:Lcom/alipay/sdk/util/b;

    .line 26
    :cond_b
    sget-object v0, Lcom/alipay/sdk/util/b;->e:Lcom/alipay/sdk/util/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 66
    if-eqz p1, :cond_1c

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_1c
    iput-object p1, p0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/alipay/sdk/util/g;
    .registers 3

    .prologue
    .line 120
    const-string v0, "connectivity"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 123
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1d

    .line 125
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1d

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/util/g;->a(I)Lcom/alipay/sdk/util/g;

    move-result-object v0

    .line 134
    :goto_1c
    return-object v0

    .line 127
    :cond_1d
    if-eqz v0, :cond_29

    .line 128
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 129
    sget-object v0, Lcom/alipay/sdk/util/g;->a:Lcom/alipay/sdk/util/g;

    goto :goto_1c

    .line 131
    :cond_29
    sget-object v0, Lcom/alipay/sdk/util/g;->o:Lcom/alipay/sdk/util/g;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_1c

    .line 134
    :catch_2c
    move-exception v0

    sget-object v0, Lcom/alipay/sdk/util/g;->o:Lcom/alipay/sdk/util/g;

    goto :goto_1c
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_3a

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v0, v1

    .line 77
    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 78
    aget-byte v3, v2, v0

    if-lt v3, v5, :cond_17

    aget-byte v3, v2, v0

    const/16 v4, 0x39

    if-le v3, v4, :cond_19

    .line 79
    :cond_17
    aput-byte v5, v2, v0

    .line 77
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 83
    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_3a
    iput-object p1, p0, Lcom/alipay/sdk/util/b;->c:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    invoke-static {p0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

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

    .line 140
    :goto_38
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0

    .line 139
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
    .line 93
    invoke-virtual {p0}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_34
    return-object v0

    .line 104
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


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/String;

    .line 54
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/sdk/util/b;->c:Ljava/lang/String;

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/sdk/util/b;->d:Ljava/lang/String;

    return-object v0
.end method
