.class public final Lcom/baidu/mtjstatsdk/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 130
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cx;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    .line 137
    :goto_9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 140
    return v0

    .line 133
    :catch_c
    move-exception v1

    .line 134
    const-string v2, "createAdReqURL"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 65
    const-string v0, ""

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_f} :catch_41

    move-result-object v2

    .line 83
    if-eqz v2, :cond_40

    .line 85
    const/4 v1, 0x0

    .line 86
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    .line 87
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    :cond_1d
    if-nez v1, :cond_4c

    .line 92
    const-string v1, "StatSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null,can\'t find information for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "BaiduMobAd_STAT_ID"

    if-ne p1, v1, :cond_40

    .line 96
    const-string v1, "\u4e0d\u80fd\u5728manifest.xml\u4e2d\u627e\u5230APP Key||can\'t find app key in manifest.xml."

    .line 97
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I

    .line 122
    :cond_40
    :goto_40
    return-object v0

    .line 73
    :catch_41
    move-exception v1

    .line 76
    const-string v1, "BaiduMobAd_STAT_ID"

    if-ne p1, v1, :cond_40

    .line 77
    const-string v1, "\u4e0d\u80fd\u5728manifest.xml\u4e2d\u627e\u5230APP Key||can\'t find app key in manifest.xml."

    .line 78
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I

    goto :goto_40

    .line 108
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 113
    const-string v1, "BaiduMobAd_STAT_ID"

    if-ne p1, v1, :cond_40

    .line 114
    const-string v1, "APP Key\u503c\u4e3a\u7a7a||The value of APP Key is empty."

    .line 115
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I

    goto :goto_40
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpPost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I

    .line 215
    invoke-static {p0, p1, p3, p4}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 218
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 219
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 220
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 221
    const-string v0, "Content-Type"

    const-string v1, "gzip"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    :try_start_35
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_48} :catch_b0

    .line 234
    :try_start_48
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4e} :catch_b8

    .line 239
    :try_start_4e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5c} :catch_b0

    .line 241
    :try_start_5c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 242
    :goto_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_79

    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_69} :catch_6a

    goto :goto_60

    .line 252
    :catch_6a
    move-exception v0

    .line 253
    :goto_6b
    if-eqz v1, :cond_70

    .line 254
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 256
    :cond_70
    if-eqz v2, :cond_75

    .line 257
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 259
    :cond_75
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    throw v0

    .line 245
    :cond_79
    :try_start_79
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_6a

    .line 247
    :try_start_7c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_89

    if-eqz v4, :cond_b3

    .line 250
    :cond_89
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http code ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "& contentResponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_b0} :catch_b0

    .line 252
    :catch_b0
    move-exception v0

    move-object v1, v2

    goto :goto_6b

    .line 264
    :cond_b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :catch_b8
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_6b
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 148
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cx;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    .line 155
    :goto_9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 157
    return v0

    .line 151
    :catch_c
    move-exception v1

    .line 152
    const-string v2, "createAdReqURL"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const v1, 0xc350

    .line 203
    const-string v0, "http://hmma.baidu.com/app.gif"

    invoke-static {p0, v0, p1, v1, v1}, Lcom/baidu/mtjstatsdk/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const-string v0, "%s_%s_%s"

    .line 337
    const-string v0, "%s_%s_%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 339
    :try_start_20
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 341
    :cond_30
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 344
    const-string v2, "getLocation cell:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-nez v0, :cond_58

    move-object v0, v1

    .line 363
    :goto_57
    return-object v0

    .line 349
    :cond_58
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_9e

    .line 350
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 351
    const-string v2, "%s_%s_%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 354
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "["

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, "%s_%s_%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aget-object v0, v0, v5

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_d2} :catch_d4

    move-result-object v0

    goto :goto_57

    .line 359
    :catch_d4
    move-exception v0

    .line 360
    const-string v2, "getLocation"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_da
    move-object v0, v1

    .line 363
    goto/16 :goto_57
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 374
    const-string v1, ""

    .line 377
    :try_start_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 378
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 379
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 380
    const-string v2, "statsdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz v0, :cond_63

    .line 382
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

    .line 391
    :goto_5c
    return-object v0

    .line 387
    :catch_5d
    move-exception v0

    .line 388
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_63
    move-object v0, v1

    .line 391
    goto :goto_5c
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 402
    const-string v1, ""

    .line 404
    :try_start_2
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 406
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 408
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_1a
    return-object v0

    .line 411
    :cond_1b
    const-string v0, "You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    :goto_20
    move-object v0, v1

    goto :goto_1a

    .line 416
    :catch_22
    move-exception v0

    .line 418
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 547
    const-string v0, ""

    .line 549
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 551
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 555
    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 556
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_24
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 4

    .prologue
    .line 563
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 566
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 705
    const-string v0, ""

    .line 707
    :try_start_2
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p0, v1}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 708
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_26

    .line 710
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 711
    if-eqz v0, :cond_26

    .line 712
    const-string v1, "h9YLQoINGWyOBYYk"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cr;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cv;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result-object v0

    .line 720
    :cond_26
    :goto_26
    return-object v0

    .line 716
    :catch_27
    move-exception v1

    .line 717
    const-string v2, "statsdk"

    invoke-static {v2, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method
