.class public final Lcom/alipay/security/mobile/module/deviceinfo/e;
.super Ljava/lang/Object;


# instance fields
.field volatile a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->a:I

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/e;
    .registers 11

    new-instance v8, Lcom/alipay/security/mobile/module/deviceinfo/e;

    invoke-direct {v8}, Lcom/alipay/security/mobile/module/deviceinfo/e;-><init>()V

    iput-object p0, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    :try_start_7
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17f

    const/4 v1, 0x2

    :goto_17
    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1f} :catch_188

    const/4 v6, 0x2

    if-ne v1, v6, :cond_18b

    :try_start_22
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1ea

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_46
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_55} :catch_182
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_55} :catch_188

    move-result-object v0

    move-object v1, v0

    move-object v3, v5

    move-object v0, v2

    move-object v2, v4

    :goto_5a
    move-object v4, v2

    move-object v5, v3

    move-object v2, v0

    move-object v3, v1

    :cond_5e
    :goto_5e
    :try_start_5e
    iput-object v5, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->i:Ljava/lang/String;

    iput-object v4, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->j:Ljava/lang/String;

    iput-object v3, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->k:Ljava/lang/String;

    iput-object v2, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->l:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_66} :catch_188

    :goto_66
    :try_start_66
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6e} :catch_1d9

    if-nez v0, :cond_1cd

    :goto_70
    const/4 v7, 0x0

    :try_start_71
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e7

    new-instance v5, Lcom/alipay/security/mobile/module/deviceinfo/listener/a;

    invoke-direct {v5}, Lcom/alipay/security/mobile/module/deviceinfo/listener/a;-><init>()V

    const-string v1, "network"

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1e7

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->c:Ljava/lang/String;

    move v1, v0

    :goto_c6
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_123

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_123

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_123

    iget-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    iget-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_123

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x40cc200000000000L    # 14400.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x40cc200000000000L    # 14400.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->c:Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_123} :catch_1dc

    :cond_123
    :goto_123
    :try_start_123
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->g:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_17e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/security/mobile/module/deviceinfo/e;->h:Ljava/lang/String;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_17e} :catch_1e2

    :cond_17e
    :goto_17e
    return-object v8

    :cond_17f
    const/4 v1, 0x1

    goto/16 :goto_17

    :catch_182
    move-exception v0

    :try_start_183
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_186} :catch_188

    goto/16 :goto_5e

    :catch_188
    move-exception v0

    goto/16 :goto_66

    :cond_18b
    :try_start_18b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1b5
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1c4} :catch_1c7
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_1c4} :catch_188

    move-result-object v2

    goto/16 :goto_5e

    :catch_1c7
    move-exception v0

    :try_start_1c8
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_1cb
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_1cb} :catch_188

    goto/16 :goto_5e

    :cond_1cd
    :try_start_1cd
    new-instance v1, Lcom/alipay/security/mobile/module/deviceinfo/f;

    invoke-direct {v1, v8, v0}, Lcom/alipay/security/mobile/module/deviceinfo/f;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/e;Landroid/telephony/TelephonyManager;)V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1d7
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_1d7} :catch_1d9

    goto/16 :goto_70

    :catch_1d9
    move-exception v0

    goto/16 :goto_70

    :catch_1dc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto/16 :goto_123

    :catch_1e2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_17e

    :cond_1e7
    move v1, v7

    goto/16 :goto_c6

    :cond_1ea
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_5a
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .registers 2

    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->a:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private b()D
    .registers 3

    iget v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->d:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    if-nez v0, :cond_b

    move-object v0, v2

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_19

    move-object v0, v2

    goto :goto_a

    :cond_19
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_21

    move-object v0, v2

    goto :goto_a

    :cond_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "wifiMac"

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v1, :cond_60

    const-string v1, ""

    :goto_3e
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ssid"

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rssi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_60
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_3e

    :cond_63
    move-object v0, v2

    goto :goto_a
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->e:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->f:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_6

    :cond_15
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->g:Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_a

    :cond_19
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_a

    :cond_21
    iget-object v6, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_2b

    if-nez v7, :cond_30

    :cond_2b
    move-object v0, v5

    :goto_2c
    if-nez v0, :cond_5b

    move v0, v1

    goto :goto_a

    :cond_30
    const-string v0, "wifi"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    goto :goto_2c

    :cond_59
    move-object v0, v5

    goto :goto_2c

    :cond_5b
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_68

    move v0, v3

    :goto_64
    if-eqz v0, :cond_84

    move v0, v2

    goto :goto_a

    :cond_68
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_78

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    :cond_78
    move v0, v4

    goto :goto_64

    :cond_7a
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_82

    move v0, v2

    goto :goto_64

    :cond_82
    move v0, v1

    goto :goto_64

    :cond_84
    move v0, v1

    goto :goto_a
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->h:Ljava/lang/String;

    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->i:Ljava/lang/String;

    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->j:Ljava/lang/String;

    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->k:Ljava/lang/String;

    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method private j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->l:Ljava/lang/String;

    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/e;->l:Ljava/lang/String;

    return-object v0
.end method
