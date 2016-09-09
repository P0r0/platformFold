.class public Lcom/nearme/platform/opensdk/pay/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 65
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    .line 69
    :goto_c
    return v0

    .line 67
    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method static getNearmePayApkVersinCode(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 78
    const-string v0, "com.nearme.atlas"

    invoke-static {p0, v0}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 79
    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 43
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 48
    :goto_b
    return v0

    .line 45
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const/4 v0, 0x1

    goto :goto_b
.end method

.method static hasInstallNearmePayApk(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    const-string v1, "com.nearme.atlas"

    invoke-static {p0, v1}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 74
    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    if-nez v0, :cond_d

    move v0, v1

    .line 114
    :goto_c
    return v0

    .line 104
    :cond_d
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    if-eqz v0, :cond_2d

    .line 106
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 108
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_2d

    .line 109
    const/4 v0, 0x1

    goto :goto_c

    :cond_2d
    move v0, v1

    .line 114
    goto :goto_c
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 83
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    .line 88
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
