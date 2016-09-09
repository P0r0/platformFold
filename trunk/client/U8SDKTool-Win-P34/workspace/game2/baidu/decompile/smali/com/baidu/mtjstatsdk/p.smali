.class public Lcom/baidu/mtjstatsdk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mtjstatsdk/p;->a:Ljava/lang/String;

    .line 52
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mtjstatsdk/p;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/baidu/mtjstatsdk/p;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 59
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->b([B)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 68
    :goto_18
    return-object v0

    .line 64
    :catch_19
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 68
    const-string v0, ""

    goto :goto_18
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 75
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    .line 82
    :goto_9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    .line 78
    :catch_c
    move-exception v1

    .line 79
    const-string v2, "createAdReqURL"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static c(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->i(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    .line 96
    :goto_9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 92
    :catch_c
    move-exception v1

    .line 93
    const-string v2, "createAdReqURL"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 147
    const-string v1, ""

    .line 150
    :try_start_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 151
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 152
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 153
    const-string v2, "BPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v0, :cond_63

    .line 155
    const-string v2, "%s_%s_%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_5d

    move-result-object v0

    .line 163
    :goto_5c
    return-object v0

    .line 159
    :catch_5d
    move-exception v0

    .line 160
    const-string v2, "BPlus"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_63
    move-object v0, v1

    .line 163
    goto :goto_5c
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    :try_start_1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 179
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_43

    move-result-object v1

    .line 184
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->b([B)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_4d

    move-result-object v0

    .line 186
    :try_start_21
    const-string v1, "ssid=%s mac=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3b} :catch_52

    .line 196
    :goto_3b
    return-object v0

    .line 188
    :cond_3c
    :try_start_3c
    const-string v0, "You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->c(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_43

    move-object v0, v1

    goto :goto_3b

    .line 192
    :catch_43
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 193
    :goto_47
    const-string v2, "BPlus"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 192
    :catch_4d
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_47

    :catch_52
    move-exception v1

    goto :goto_47
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 304
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 305
    const-string v2, "4.1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "TCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 306
    const-string v0, ""

    .line 324
    :cond_16
    :goto_16
    return-object v0

    .line 309
    :cond_17
    const-string v0, ""

    .line 311
    :try_start_19
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/baidu/mtjstatsdk/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 312
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_16

    .line 314
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_16

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/j;->a([B)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/m;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3a} :catch_3c

    move-result-object v0

    goto :goto_16

    .line 320
    :catch_3c
    move-exception v1

    .line 321
    const-string v2, "BPlus"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v14, 0x1e

    const/4 v1, 0x0

    .line 335
    const-string v3, ""

    .line 336
    if-nez p0, :cond_a

    .line 427
    :cond_9
    :goto_9
    return-object v3

    .line 340
    :cond_a
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    :try_start_12
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/l;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 347
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 348
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_b6

    move-result v0

    :goto_28
    move v2, v0

    .line 357
    :goto_29
    :try_start_29
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 358
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_34} :catch_bd

    move-result-object v5

    .line 361
    :try_start_35
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_121

    move-result-object v0

    move-object v8, v0

    move-object v9, v5

    .line 366
    :goto_3b
    if-eqz v8, :cond_4b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 367
    new-instance v0, Lcom/baidu/mtjstatsdk/q;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/q;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 376
    :cond_4b
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    move v7, v1

    .line 377
    :goto_51
    if-eqz v8, :cond_cd

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_cd

    if-ge v7, v14, :cond_cd

    .line 379
    :try_start_5b
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 381
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v5, "|"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v12, "\\|"

    const-string v13, ""

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_87

    const/4 v12, 0x0

    const/16 v13, 0x1e

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_87
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v5, "|"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    const-string v5, "|"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    if-eqz v9, :cond_c6

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    move v0, v6

    :goto_a8
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_b2} :catch_c8

    .line 377
    :goto_b2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_51

    .line 350
    :catch_b6
    move-exception v0

    .line 351
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    move v2, v1

    goto/16 :goto_29

    .line 362
    :catch_bd
    move-exception v0

    move-object v5, v4

    .line 363
    :goto_bf
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    move-object v8, v4

    move-object v9, v5

    goto/16 :goto_3b

    :cond_c6
    move v0, v1

    .line 393
    goto :goto_a8

    .line 396
    :catch_c8
    move-exception v0

    .line 397
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_b2

    .line 401
    :cond_cd
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d6

    move-object v3, v4

    .line 402
    goto/16 :goto_9

    .line 405
    :cond_d6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 407
    :try_start_db
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    if-eqz v2, :cond_ef

    move v1, v6

    :cond_ef
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v1, "ap-list"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v1, "meta-data"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->c([B)Ljava/lang/String;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_117} :catch_11b

    move-result-object v0

    :goto_118
    move-object v3, v0

    .line 427
    goto/16 :goto_9

    .line 423
    :catch_11b
    move-exception v0

    .line 424
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_118

    .line 362
    :catch_121
    move-exception v0

    goto :goto_bf

    :cond_123
    move v0, v1

    goto/16 :goto_28
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 436
    const/4 v2, 0x0

    .line 438
    if-eqz p0, :cond_21

    .line 440
    :try_start_4
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 441
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_22

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_20
    move v2, v0

    .line 450
    :cond_21
    :goto_21
    return v2

    .line 445
    :catch_22
    move-exception v0

    .line 446
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_21

    :cond_27
    move v0, v2

    goto :goto_20
.end method

.method public static i(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4

    .prologue
    .line 475
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 478
    return-object v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 499
    if-eqz p0, :cond_13

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 502
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->b([B)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v0

    .line 508
    :goto_e
    return-object v0

    .line 503
    :catch_f
    move-exception v0

    .line 504
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->b(Ljava/lang/Throwable;)I

    .line 508
    :cond_13
    const-string v0, ""

    goto :goto_e
.end method
