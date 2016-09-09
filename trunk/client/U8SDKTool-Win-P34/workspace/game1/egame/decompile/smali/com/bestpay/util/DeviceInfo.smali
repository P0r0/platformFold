.class public Lcom/bestpay/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceInfo"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public getBaseVersion()Ljava/lang/String;
    .registers 9

    .prologue
    .line 214
    const/4 v3, 0x0

    .line 217
    .local v3, "result":Ljava/lang/Object;
    :try_start_1
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "invoker":Ljava/lang/Object;
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 222
    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 221
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 224
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "gsm.version.baseband"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 225
    const-string v6, "no message"

    aput-object v6, v4, v5

    .line 224
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_32

    move-result-object v3

    .line 230
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "invoker":Ljava/lang/Object;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Object;
    :goto_2f
    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 227
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_32
    move-exception v4

    goto :goto_2f
.end method

.method public getClientVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 88
    iget-object v3, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 92
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_7
    iget-object v3, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_15

    move-result-object v1

    .line 97
    :goto_12
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v3

    .line 93
    :catch_15
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_12
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 124
    .local v0, "phonetype":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 107
    .local v0, "deviceName":Ljava/lang/String;
    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .registers 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 132
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 133
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "IMEI":Ljava/lang/String;
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .registers 5

    .prologue
    .line 141
    iget-object v2, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 142
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 143
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "IMSI":Ljava/lang/String;
    return-object v0
.end method

.method public getKernelVersion()Ljava/lang/String;
    .registers 13

    .prologue
    .line 238
    const-string v6, ""

    .line 239
    .local v6, "kernelVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 241
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    const-string v10, "/proc/version"

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_4b

    .line 246
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    .line 247
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x2000

    .line 246
    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 248
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 249
    .local v3, "info":Ljava/lang/String;
    const-string v9, ""

    .line 251
    .local v9, "line":Ljava/lang/String;
    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_63
    .catchall {:try_start_1a .. :try_end_1d} :catchall_73

    move-result-object v9

    if-nez v9, :cond_51

    .line 258
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_80

    .line 266
    :goto_26
    :try_start_26
    const-string v10, ""

    if-eq v3, v10, :cond_48

    .line 267
    const-string v8, "version "

    .line 268
    .local v8, "keyword":Ljava/lang/String;
    const-string v10, "version "

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 269
    .local v2, "index":I
    const-string v10, "version "

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 270
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 271
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_47} :catch_85

    move-result-object v6

    .end local v2    # "index":I
    .end local v8    # "keyword":Ljava/lang/String;
    :cond_48
    :goto_48
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    move-object v7, v6

    .line 277
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "info":Ljava/lang/String;
    .end local v6    # "kernelVersion":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .local v7, "kernelVersion":Ljava/lang/String;
    :goto_4a
    return-object v7

    .line 242
    .end local v7    # "kernelVersion":Ljava/lang/String;
    .restart local v6    # "kernelVersion":Ljava/lang/String;
    :catch_4b
    move-exception v1

    .line 243
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v7, v6

    .line 244
    .end local v6    # "kernelVersion":Ljava/lang/String;
    .restart local v7    # "kernelVersion":Ljava/lang/String;
    goto :goto_4a

    .line 252
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "kernelVersion":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "kernelVersion":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    :cond_51
    :try_start_51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_61} :catch_63
    .catchall {:try_start_51 .. :try_end_61} :catchall_73

    move-result-object v3

    goto :goto_1a

    .line 254
    :catch_63
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    :try_start_64
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_73

    .line 258
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_6e

    goto :goto_26

    .line 260
    :catch_6e
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_73
    move-exception v10

    .line 258
    :try_start_74
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7b

    .line 263
    :goto_7a
    throw v10

    .line 260
    :catch_7b
    move-exception v1

    .line 261
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v1

    .line 261
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_85
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_48
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 190
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_c

    .line 207
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_a
    const/4 v4, 0x0

    :goto_b
    return-object v4

    .line 191
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 193
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 195
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_16

    .line 197
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v4}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    .line 197
    if-eqz v4, :cond_16

    .line 199
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v4

    goto :goto_b

    .line 203
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :catch_3b
    move-exception v4

    goto :goto_a
.end method

.method public getLocationWithGps()Ljava/lang/String;
    .registers 14

    .prologue
    .line 56
    iget-object v6, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 57
    const-string v12, "location"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 56
    check-cast v11, Landroid/location/LocationManager;

    .line 59
    .local v11, "locationManager":Landroid/location/LocationManager;
    const-string v6, "gps"

    invoke-virtual {v11, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 60
    .local v10, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Geocoder;

    iget-object v6, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v1, v6, v12}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 62
    .local v1, "geocoder":Landroid/location/Geocoder;
    const-wide/16 v2, 0x0

    .line 63
    .local v2, "latitude":D
    const-wide/16 v4, 0x0

    .line 64
    .local v4, "longitude":D
    if-eqz v10, :cond_29

    .line 65
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 66
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 68
    :cond_29
    const/4 v7, 0x0

    .line 70
    .local v7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v6, 0x1

    :try_start_2b
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_4c

    move-result-object v7

    .line 74
    :goto_2f
    const/4 v9, 0x0

    .local v9, "country":Ljava/lang/String;
    const/4 v8, 0x0

    .line 75
    .local v8, "city":Ljava/lang/String;
    if-eqz v7, :cond_4b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4b

    .line 76
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 77
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 81
    .end local v0    # "address":Landroid/location/Address;
    :cond_4b
    return-object v8

    .line 71
    .end local v8    # "city":Ljava/lang/String;
    .end local v9    # "country":Ljava/lang/String;
    :catch_4c
    move-exception v6

    goto :goto_2f
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 115
    .local v0, "osVersion":Ljava/lang/String;
    return-object v0
.end method

.method public getPhoneIp()Ljava/lang/String;
    .registers 6

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "ip":Ljava/lang/String;
    iget-object v3, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 172
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 174
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_19

    const/4 v0, 0x0

    .line 175
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_e
    if-eqz v0, :cond_18

    .line 176
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_18
    return-object v1

    .line 174
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_19
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_e
.end method

.method public getPhoneMac()Ljava/lang/String;
    .registers 6

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "macAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/bestpay/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 154
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 156
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_15

    const/4 v0, 0x0

    .line 157
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_e
    if-eqz v0, :cond_14

    .line 158
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_14
    return-object v1

    .line 156
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_15
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_e
.end method
