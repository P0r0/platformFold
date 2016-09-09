.class public final Lcom/baidu/mtjstatsdk/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/net/Proxy;

.field private static final b:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x50

    .line 440
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/ct;->a:Ljava/net/Proxy;

    .line 442
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.200"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/ct;->b:Ljava/net/Proxy;

    return-void
.end method

.method public static a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 37
    if-eqz p0, :cond_7

    .line 38
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/ct;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1, p2}, Lcom/baidu/mtjstatsdk/ct;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .registers 8

    .prologue
    .line 455
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 458
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 459
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 460
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 463
    const-string v0, ""

    const-string v2, "WIFI is available"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 485
    :goto_2c
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 486
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 488
    return-object v0

    .line 465
    :cond_33
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 466
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_6b

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_45
    const-string v2, "current APN"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 475
    :cond_62
    sget-object v0, Lcom/baidu/mtjstatsdk/ct;->a:Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 470
    :cond_6b
    const-string v0, ""

    goto :goto_45

    .line 476
    :cond_6e
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 477
    sget-object v0, Lcom/baidu/mtjstatsdk/ct;->b:Ljava/net/Proxy;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 479
    :cond_7f
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 482
    :cond_86
    const-string v0, ""

    const-string v2, "getConnection:not wifi and mobile"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 653
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/ct;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permission. Open AndroidManifest.xml and just before the final </manifest> tag add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<uses-permission android:name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/ct;->b(Ljava/lang/String;)V

    .line 659
    :cond_32
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 87
    const/4 v1, 0x0

    .line 89
    if-eqz p3, :cond_1c

    const v2, 0x8000

    :goto_7
    :try_start_7
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_1e

    .line 92
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_3a
    .catchall {:try_start_7 .. :try_end_16} :catchall_5a

    .line 100
    :goto_16
    if-eqz v1, :cond_1b

    .line 102
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_51

    .line 108
    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v2, v0

    .line 89
    goto :goto_7

    .line 94
    :cond_1e
    :try_start_1e
    const-string v2, "statsdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MoUtil.write fout is null:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a
    .catchall {:try_start_1e .. :try_end_39} :catchall_5a

    goto :goto_16

    .line 97
    :catch_3a
    move-exception v0

    .line 98
    :try_start_3b
    const-string v2, "statsdk"

    const-string v3, "MoUtil.write"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_5a

    .line 100
    if-eqz v1, :cond_1b

    .line 102
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_1b

    .line 103
    :catch_48
    move-exception v0

    .line 104
    const-string v1, "statsdk"

    const-string v2, "MoUtil.write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 103
    :catch_51
    move-exception v0

    .line 104
    const-string v1, "statsdk"

    const-string v2, "MoUtil.write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 100
    :catchall_5a
    move-exception v0

    if-eqz v1, :cond_60

    .line 102
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 105
    :cond_60
    :goto_60
    throw v0

    .line 103
    :catch_61
    move-exception v1

    .line 104
    const-string v2, "statsdk"

    const-string v3, "MoUtil.write"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 247
    :cond_c
    :goto_c
    return-void

    .line 223
    :cond_d
    const/4 v1, 0x0

    .line 225
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 226
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 232
    :cond_3e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_43} :catch_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_43} :catch_72
    .catchall {:try_start_e .. :try_end_43} :catchall_89

    .line 233
    :try_start_43
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_4c} :catch_9f
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_9c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_99

    .line 240
    if-eqz v2, :cond_c

    .line 241
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_c

    .line 243
    :catch_52
    move-exception v0

    .line 244
    const-string v1, "statsdk"

    const-string v2, "MoUtil.writeExt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 234
    :catch_5b
    move-exception v0

    .line 235
    :goto_5c
    :try_start_5c
    const-string v2, "statsdk"

    const-string v3, "MoUtil.writeExt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_89

    .line 240
    if-eqz v1, :cond_c

    .line 241
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_c

    .line 243
    :catch_69
    move-exception v0

    .line 244
    const-string v1, "statsdk"

    const-string v2, "MoUtil.writeExt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 236
    :catch_72
    move-exception v0

    .line 237
    :goto_73
    :try_start_73
    const-string v2, "statsdk"

    const-string v3, "MoUtil.writeExt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_89

    .line 240
    if-eqz v1, :cond_c

    .line 241
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_c

    .line 243
    :catch_80
    move-exception v0

    .line 244
    const-string v1, "statsdk"

    const-string v2, "MoUtil.writeExt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 239
    :catchall_89
    move-exception v0

    .line 240
    :goto_8a
    if-eqz v1, :cond_8f

    .line 241
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 245
    :cond_8f
    :goto_8f
    throw v0

    .line 243
    :catch_90
    move-exception v1

    .line 244
    const-string v2, "statsdk"

    const-string v3, "MoUtil.writeExt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    .line 239
    :catchall_99
    move-exception v0

    move-object v1, v2

    goto :goto_8a

    .line 236
    :catch_9c
    move-exception v0

    move-object v1, v2

    goto :goto_73

    .line 234
    :catch_9f
    move-exception v0

    move-object v1, v2

    goto :goto_5c
.end method

.method public static a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 45
    if-eqz p0, :cond_6

    .line 46
    invoke-static {p2, p3, p4}, Lcom/baidu/mtjstatsdk/ct;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    :goto_5
    return-void

    .line 48
    :cond_6
    invoke-static {p1, p2, p3, p4}, Lcom/baidu/mtjstatsdk/ct;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 200
    const-string v1, "MoUtil.deleteExt"

    invoke-static {v1, p0}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 203
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 212
    :cond_12
    :goto_12
    return v0

    .line 207
    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_12
.end method

.method private static a(Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 165
    const-string v0, "MoUtil.existsExt"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 169
    const/4 v0, 0x0

    .line 174
    :goto_12
    return v0

    .line 172
    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/io/File;

    if-eqz p1, :cond_23

    :goto_1b
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_12

    .line 173
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 673
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 675
    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK install error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    const/4 v0, 0x1

    .line 668
    :goto_8
    const-string v1, "hasPermission "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return v0

    .line 662
    :cond_25
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static b(ZLandroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 61
    if-eqz p0, :cond_7

    .line 62
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/ct;->d(Ljava/lang/String;)Z

    move-result v0

    .line 64
    :goto_6
    return v0

    :cond_7
    invoke-static {p1, p2}, Lcom/baidu/mtjstatsdk/ct;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 111
    const-string v0, "MoUtil.read"

    invoke-static {v0, p1}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, ""

    .line 115
    :try_start_7
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/ct;->d(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    .line 116
    if-eqz v2, :cond_1d

    .line 117
    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 122
    :goto_14
    return-object v0

    .line 119
    :catch_15
    move-exception v0

    .line 120
    const-string v2, "statsdk"

    const-string v3, "MoUtil.read"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    move-object v0, v1

    goto :goto_14
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x10

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 697
    const/4 v1, 0x0

    .line 698
    new-array v3, v9, [C

    fill-array-data v3, :array_48

    .line 700
    :try_start_d
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 701
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 702
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 703
    const/16 v2, 0x20

    new-array v5, v2, [C

    move v2, v0

    .line 705
    :goto_1f
    if-ge v0, v9, :cond_38

    .line 706
    aget-byte v6, v4, v0

    .line 707
    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v2

    .line 708
    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v7

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 710
    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_3d} :catch_3e

    .line 715
    :goto_3d
    return-object v0

    .line 712
    :catch_3e
    move-exception v0

    .line 713
    const-string v2, "MoUtil.getMD5"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_3d

    .line 698
    :array_48
    .array-data 2
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/ct;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 126
    .line 129
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_4} :catch_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_39
    .catchall {:try_start_1 .. :try_end_4} :catchall_52

    move-result-object v1

    .line 131
    if-eqz v1, :cond_7d

    .line 132
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 133
    new-array v2, v0, [B
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_71
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_65
    .catchall {:try_start_7 .. :try_end_d} :catchall_62

    .line 134
    :try_start_d
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_77
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_6b
    .catchall {:try_start_d .. :try_end_10} :catchall_62

    move-object v0, v2

    .line 142
    :goto_11
    if-eqz v1, :cond_16

    .line 143
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 150
    :cond_16
    :goto_16
    return-object v0

    .line 145
    :catch_17
    move-exception v1

    .line 146
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readBinary"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 136
    :catch_20
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 137
    :goto_23
    :try_start_23
    const-string v3, "statsdk"

    const-string v4, "MoUtil.readBinary"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_52

    .line 142
    if-eqz v2, :cond_16

    .line 143
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_16

    .line 145
    :catch_30
    move-exception v1

    .line 146
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readBinary"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 138
    :catch_39
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 139
    :goto_3c
    :try_start_3c
    const-string v3, "statsdk"

    const-string v4, "MoUtil.readBinary"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_52

    .line 142
    if-eqz v2, :cond_16

    .line 143
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_16

    .line 145
    :catch_49
    move-exception v1

    .line 146
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readBinary"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 141
    :catchall_52
    move-exception v0

    .line 142
    :goto_53
    if-eqz v2, :cond_58

    .line 143
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 147
    :cond_58
    :goto_58
    throw v0

    .line 145
    :catch_59
    move-exception v1

    .line 146
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readBinary"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 141
    :catchall_62
    move-exception v0

    move-object v2, v1

    goto :goto_53

    .line 138
    :catch_65
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_3c

    :catch_6b
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_3c

    .line 136
    :catch_71
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_23

    :catch_77
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_23

    :cond_7d
    move-object v0, v2

    goto :goto_11
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 250
    const-string v0, "MoUtil.readExt"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 254
    const-string v1, ""

    .line 285
    :cond_1b
    :goto_1b
    return-object v1

    .line 257
    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 258
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, ""

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 265
    const/4 v3, 0x0

    .line 267
    :try_start_45
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4a} :catch_6a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_84
    .catchall {:try_start_45 .. :try_end_4a} :catchall_9e

    .line 268
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    .line 269
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 270
    new-instance v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_5a} :catch_b3
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_b1
    .catchall {:try_start_4a .. :try_end_5a} :catchall_af

    .line 277
    if-eqz v2, :cond_5f

    .line 278
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_61

    :cond_5f
    :goto_5f
    move-object v1, v0

    .line 285
    goto :goto_1b

    .line 280
    :catch_61
    move-exception v1

    .line 281
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readExt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 271
    :catch_6a
    move-exception v0

    move-object v2, v3

    .line 272
    :goto_6c
    :try_start_6c
    const-string v3, "statsdk"

    const-string v4, "MoUtil.readExt"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_af

    .line 277
    if-eqz v2, :cond_78

    .line 278
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7a

    :cond_78
    move-object v0, v1

    .line 282
    goto :goto_5f

    .line 280
    :catch_7a
    move-exception v0

    .line 281
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readExt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 283
    goto :goto_5f

    .line 273
    :catch_84
    move-exception v0

    move-object v2, v3

    .line 274
    :goto_86
    :try_start_86
    const-string v3, "statsdk"

    const-string v4, "MoUtil.readExt"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_af

    .line 277
    if-eqz v2, :cond_92

    .line 278
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_94

    :cond_92
    move-object v0, v1

    .line 282
    goto :goto_5f

    .line 280
    :catch_94
    move-exception v0

    .line 281
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readExt"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 283
    goto :goto_5f

    .line 276
    :catchall_9e
    move-exception v0

    move-object v2, v3

    .line 277
    :goto_a0
    if-eqz v2, :cond_a5

    .line 278
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 282
    :cond_a5
    :goto_a5
    throw v0

    .line 280
    :catch_a6
    move-exception v1

    .line 281
    const-string v2, "statsdk"

    const-string v3, "MoUtil.readExt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 276
    :catchall_af
    move-exception v0

    goto :goto_a0

    .line 273
    :catch_b1
    move-exception v0

    goto :goto_86

    .line 271
    :catch_b3
    move-exception v0

    goto :goto_6c
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 160
    const-string v1, "MoUtil.exists"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return v0
.end method
