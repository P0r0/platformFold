.class public Lcom/ta/utdid2/android/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_WIFI_ADDRESS:Ljava/lang/String; = "00-00-00-00-00-00"

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"

.field private static final WEAK_NETWORK_GROUP:[I

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static sConnManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->WEAK_NETWORK_GROUP:[I

    return-void

    :array_c
    .array-data 4
        0x4
        0x7
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _convertIntToIp(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 76
    if-nez p0, :cond_b

    .line 77
    const-string v0, "NetworkUtils"

    const-string v1, "context is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 85
    :goto_a
    return-object v0

    .line 80
    :cond_b
    sget-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_19

    .line 81
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    .line 85
    :cond_19
    sget-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    goto :goto_a
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Unknown"

    aput-object v0, v1, v2

    const-string v0, "Unknown"

    aput-object v0, v1, v3

    .line 91
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 96
    const/4 v0, 0x0

    const-string v2, "Unknown"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 123
    :goto_23
    return-object v0

    .line 99
    :cond_24
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    if-nez v0, :cond_35

    .line 102
    const/4 v0, 0x0

    const-string v2, "Unknown"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 103
    goto :goto_23

    .line 105
    :cond_35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4b

    .line 109
    const/4 v0, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 110
    goto :goto_23

    .line 112
    :cond_4b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_69

    .line 116
    const/4 v2, 0x0

    const-string v3, "2G/3G"

    aput-object v3, v1, v2

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_66} :catch_68

    move-object v0, v1

    .line 118
    goto :goto_23

    .line 120
    :catch_68
    move-exception v0

    :cond_69
    move-object v0, v1

    .line 123
    goto :goto_23
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    if-eqz p0, :cond_20

    .line 128
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 130
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1d

    .line 132
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 134
    const-string v0, "00-00-00-00-00-00"

    .line 141
    :cond_1c
    :goto_1c
    return-object v0

    .line 138
    :cond_1d
    const-string v0, "00-00-00-00-00-00"

    goto :goto_1c

    .line 141
    :cond_20
    const-string v0, "00-00-00-00-00-00"

    goto :goto_1c
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 150
    if-eqz p0, :cond_1d

    .line 152
    :try_start_3
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1a

    .line 156
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->_convertIntToIp(I)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1c

    move-result-object v0

    .line 164
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    .line 158
    goto :goto_19

    :catch_1c
    move-exception v0

    :cond_1d
    move-object v0, v1

    .line 164
    goto :goto_19
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 32
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1d

    .line 35
    :try_start_6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1b

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_11

    move-result v0

    .line 45
    :goto_10
    return v0

    .line 39
    :catch_11
    move-exception v0

    .line 40
    const-string v1, "NetworkUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    goto :goto_10

    .line 43
    :cond_1d
    const-string v0, "NetworkUtils"

    const-string v1, "connManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public static isConnectedToWeakNetwork(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_59

    .line 53
    :try_start_7
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_46

    .line 55
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 56
    sget-boolean v3, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    if-eqz v3, :cond_37

    const-string v3, "NetworkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "subType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_37
    sget-object v3, Lcom/ta/utdid2/android/utils/NetworkUtils;->WEAK_NETWORK_GROUP:[I

    array-length v4, v3

    move v1, v0

    :goto_3b
    if-ge v1, v4, :cond_42

    aget v5, v3, v1

    .line 58
    if-ne v5, v2, :cond_43

    .line 59
    const/4 v0, 0x1

    .line 71
    :cond_42
    :goto_42
    return v0

    .line 57
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 63
    :cond_46
    const-string v1, "NetworkUtils"

    const-string v2, "networkInfo is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4d} :catch_4e

    goto :goto_42

    .line 65
    :catch_4e
    move-exception v1

    .line 66
    const-string v2, "NetworkUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 69
    :cond_59
    const-string v1, "NetworkUtils"

    const-string v2, "connManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p0, :cond_13

    .line 170
    :try_start_3
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Wi-Fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_14

    move-result v1

    if-eqz v1, :cond_13

    .line 172
    const/4 v0, 0x1

    .line 178
    :cond_13
    :goto_13
    return v0

    :catch_14
    move-exception v1

    goto :goto_13
.end method
