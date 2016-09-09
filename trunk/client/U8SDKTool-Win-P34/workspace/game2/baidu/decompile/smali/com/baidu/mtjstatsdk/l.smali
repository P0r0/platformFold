.class public final Lcom/baidu/mtjstatsdk/l;
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

    .line 296
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.172"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/net/Proxy;

    .line 297
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "10.0.0.200"

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/l;->b:Ljava/net/Proxy;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_15
    return-object v0

    .line 146
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 37
    const-class v3, Lcom/baidu/mtjstatsdk/l;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 39
    const-string v0, ""
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_44

    .line 66
    :goto_11
    monitor-exit v3

    return-object v0

    .line 42
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 43
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 45
    const-string v0, ""
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_44

    goto :goto_11

    .line 48
    :cond_25
    const/4 v2, 0x0

    .line 50
    :try_start_26
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_47
    .catchall {:try_start_26 .. :try_end_2b} :catchall_57

    .line 51
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 52
    new-array v2, v0, [B

    .line 53
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 55
    new-instance v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_64
    .catchall {:try_start_2b .. :try_end_3b} :catchall_62

    .line 60
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_44

    goto :goto_11

    .line 61
    :catch_3f
    move-exception v1

    .line 62
    :try_start_40
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_11

    .line 37
    :catchall_44
    move-exception v0

    monitor-exit v3

    throw v0

    .line 56
    :catch_47
    move-exception v0

    move-object v1, v2

    .line 57
    :goto_49
    :try_start_49
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_62

    .line 60
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_52
    .catchall {:try_start_4c .. :try_end_4f} :catchall_44

    .line 66
    :goto_4f
    :try_start_4f
    const-string v0, ""

    goto :goto_11

    .line 61
    :catch_52
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_44

    goto :goto_4f

    .line 59
    :catchall_57
    move-exception v0

    move-object v1, v2

    .line 60
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_44

    .line 63
    :goto_5c
    :try_start_5c
    throw v0

    .line 61
    :catch_5d
    move-exception v1

    .line 62
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_44

    goto :goto_5c

    .line 59
    :catchall_62
    move-exception v0

    goto :goto_59

    .line 56
    :catch_64
    move-exception v0

    goto :goto_49
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3

    .prologue
    const v0, 0xc350

    .line 301
    invoke-static {p0, p1, v0, v0}, Lcom/baidu/mtjstatsdk/l;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .registers 7

    .prologue
    .line 306
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 310
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 313
    const-string v0, ""

    const-string v1, "WIFI is available"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 335
    :goto_2c
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 336
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 338
    return-object v0

    .line 315
    :cond_33
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 316
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_6f

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_49
    const-string v1, "current APN"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 325
    :cond_66
    sget-object v0, Lcom/baidu/mtjstatsdk/l;->a:Ljava/net/Proxy;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 320
    :cond_6f
    const-string v0, ""

    goto :goto_49

    .line 326
    :cond_72
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 327
    sget-object v0, Lcom/baidu/mtjstatsdk/l;->b:Ljava/net/Proxy;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 329
    :cond_83
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c

    .line 332
    :cond_8a
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2c
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .prologue
    .line 97
    const-class v3, Lcom/baidu/mtjstatsdk/l;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_7c

    move-result v0

    if-nez v0, :cond_11

    .line 131
    :cond_f
    :goto_f
    monitor-exit v3

    return-void

    .line 102
    :cond_11
    const/4 v1, 0x0

    .line 104
    :try_start_12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 105
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    const-string v0, "BPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_60

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 111
    const-string v2, "BPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_60

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_60
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_65} :catch_7f
    .catchall {:try_start_12 .. :try_end_65} :catchall_8e

    .line 118
    :try_start_65
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 119
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_71} :catch_9d
    .catchall {:try_start_65 .. :try_end_71} :catchall_9a

    .line 123
    if-eqz v2, :cond_f

    .line 125
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_7c

    goto :goto_f

    .line 126
    :catch_77
    move-exception v0

    .line 127
    :try_start_78
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_f

    .line 97
    :catchall_7c
    move-exception v0

    monitor-exit v3

    throw v0

    .line 120
    :catch_7f
    move-exception v0

    .line 121
    :goto_80
    :try_start_80
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_8e

    .line 123
    if-eqz v1, :cond_f

    .line 125
    :try_start_85
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_7c

    goto :goto_f

    .line 126
    :catch_89
    move-exception v0

    .line 127
    :try_start_8a
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_7c

    goto :goto_f

    .line 123
    :catchall_8e
    move-exception v0

    :goto_8f
    if-eqz v1, :cond_94

    .line 125
    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_7c

    .line 128
    :cond_94
    :goto_94
    :try_start_94
    throw v0

    .line 126
    :catch_95
    move-exception v1

    .line 127
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_7c

    goto :goto_94

    .line 123
    :catchall_9a
    move-exception v0

    move-object v1, v2

    goto :goto_8f

    .line 120
    :catch_9d
    move-exception v0

    move-object v1, v2

    goto :goto_80
.end method

.method public static a(ZLandroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;)Z
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    if-nez p1, :cond_6

    .line 261
    :cond_5
    :goto_5
    return v0

    .line 205
    :cond_6
    const-string v3, "MoUtil.save"

    const-string v4, "[%s]"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v4, 0x0

    .line 211
    :try_start_16
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_117

    .line 214
    if-eqz p0, :cond_ea

    .line 215
    :try_start_24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 216
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_11a

    move-result v5

    if-nez v5, :cond_45

    .line 244
    if-eqz v3, :cond_35

    .line 246
    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40

    .line 252
    :cond_35
    :goto_35
    if-eqz v2, :cond_5

    .line 254
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_5

    .line 255
    :catch_3b
    move-exception v1

    .line 256
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 247
    :catch_40
    move-exception v1

    .line 248
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_35

    .line 220
    :cond_45
    :try_start_45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 221
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 224
    const-string v6, "BPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parentFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v5, :cond_ab

    .line 226
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 228
    const-string v5, "BPlus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parentFile mkdirs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_ab
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_cc
    .catchall {:try_start_45 .. :try_end_cc} :catchall_11a

    move-object v2, v0

    .line 236
    :goto_cd
    const/16 v0, 0x1400

    :try_start_cf
    new-array v0, v0, [B

    .line 238
    :goto_d1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_f6

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_dc

    goto :goto_d1

    .line 244
    :catchall_dc
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_df
    if-eqz v2, :cond_e4

    .line 246
    :try_start_e1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_10d

    .line 252
    :cond_e4
    :goto_e4
    if-eqz v1, :cond_e9

    .line 254
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_112

    .line 257
    :cond_e9
    :goto_e9
    throw v0

    .line 234
    :cond_ea
    :try_start_ea
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_11a

    move-object v2, v0

    goto :goto_cd

    .line 244
    :cond_f6
    if-eqz v3, :cond_fb

    .line 246
    :try_start_f8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_103

    .line 252
    :cond_fb
    :goto_fb
    if-eqz v2, :cond_100

    .line 254
    :try_start_fd
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_108

    :cond_100
    :goto_100
    move v0, v1

    .line 261
    goto/16 :goto_5

    .line 247
    :catch_103
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_fb

    .line 255
    :catch_108
    move-exception v0

    .line 256
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_100

    .line 247
    :catch_10d
    move-exception v2

    .line 248
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_e4

    .line 255
    :catch_112
    move-exception v1

    .line 256
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_e9

    .line 244
    :catchall_117
    move-exception v0

    move-object v1, v2

    goto :goto_df

    :catchall_11a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_df
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_c

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 348
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 343
    goto :goto_9

    .line 344
    :catch_c
    move-exception v2

    .line 345
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BPlus"

    aput-object v3, v2, v1

    const-string v3, "Check permission failed."

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/o;->b([Ljava/lang/Object;)I

    move v0, v1

    .line 348
    goto :goto_9
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 83
    const-class v1, Lcom/baidu/mtjstatsdk/l;

    monitor-enter v1

    :try_start_3
    const-string v0, "MoUtil.deleteExt"

    invoke-static {v0, p0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_25

    move-result v0

    if-nez v0, :cond_17

    .line 87
    const/4 v0, 0x0

    .line 93
    :goto_15
    monitor-exit v1

    return v0

    .line 90
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    move-result v0

    goto :goto_15

    .line 83
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 160
    const/4 v0, 0x0

    .line 166
    :goto_15
    return-object v0

    .line 163
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15
.end method
