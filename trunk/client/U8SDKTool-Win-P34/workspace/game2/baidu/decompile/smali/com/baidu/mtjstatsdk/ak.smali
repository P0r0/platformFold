.class Lcom/baidu/mtjstatsdk/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ldalvik/system/DexClassLoader;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mtjstatsdk/ak;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/ak;->c(Landroid/content/Context;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    .line 55
    const-string v1, "BPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez v0, :cond_20

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1f
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 210
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "BPlus"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/o;->a([Ljava/lang/Object;)I

    .line 212
    :cond_22
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v2, "BPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jarFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 216
    const-string v0, "Plugin-Version"

    invoke-virtual {v2, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_6e

    move-result-object v0

    .line 217
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baidu remote sdk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";localVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6d} :catch_8c

    .line 223
    :goto_6d
    return-object v0

    .line 218
    :catch_6e
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 219
    :goto_72
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu remote sdk is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    goto :goto_6d

    .line 218
    :catch_8c
    move-exception v1

    goto :goto_72
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 100
    const-class v1, Lcom/baidu/mtjstatsdk/ak;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 101
    const-string v0, "BPlus"

    const-string v2, "isWifiAvailable = false, will not to update"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_35

    .line 119
    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    .line 105
    :cond_12
    :try_start_12
    sget-boolean v0, Lcom/baidu/mtjstatsdk/ak;->b:Z

    if-nez v0, :cond_10

    .line 109
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/ak;->d(Landroid/content/Context;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_10

    .line 113
    const-string v0, "BPlus"

    const-string v2, "can start update config"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mtjstatsdk/ak;->b:Z

    .line 116
    const-string v0, "backups/system/remote.jar"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 117
    new-instance v2, Lcom/baidu/mtjstatsdk/al;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mtjstatsdk/al;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 118
    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/al;->start()V
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_35

    goto :goto_10

    .line 100
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/ak;->b(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 19

    .prologue
    .line 319
    if-eqz p2, :cond_66

    .line 321
    sget-object v3, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 322
    if-nez v3, :cond_8

    .line 323
    sget-object v3, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    .line 326
    :cond_8
    const-string v2, "\\|"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 327
    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 328
    const/4 v4, 0x1

    aget-object v7, v2, v4

    .line 329
    const/4 v4, 0x2

    aget-object v8, v2, v4

    .line 330
    const/4 v4, 0x3

    aget-object v11, v2, v4

    .line 331
    const/4 v4, 0x4

    aget-object v12, v2, v4

    .line 332
    const/4 v4, 0x5

    aget-object v13, v2, v4

    .line 333
    const/4 v4, 0x6

    aget-object v6, v2, v4

    .line 335
    array-length v4, v2

    .line 336
    const-string v9, "30"

    .line 337
    const/4 v10, 0x7

    if-le v4, v10, :cond_2e

    .line 338
    const/4 v9, 0x7

    aget-object v9, v2, v9

    .line 340
    :cond_2e
    const-string v10, "1"

    .line 341
    const/16 v14, 0x8

    if-le v4, v14, :cond_38

    .line 342
    const/16 v4, 0x8

    aget-object v10, v2, v4

    .line 344
    :cond_38
    const-string v4, "BPlus"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "save******************configs="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :try_start_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v4, p0

    invoke-interface/range {v3 .. v15}, Lcom/baidu/bplus/IBPStretegyController;->saveRemoteConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_67

    .line 353
    :goto_59
    const-string v2, "BPlus"

    const-string v3, "null reset******************"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;

    .line 355
    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 357
    :cond_66
    return-void

    .line 350
    :catch_67
    move-exception v2

    .line 351
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_59
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/baidu/mtjstatsdk/ak;->b:Z

    return p0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/ak;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/io/File;)V
    .registers 9

    .prologue
    .line 279
    const-class v2, Lcom/baidu/mtjstatsdk/ak;

    monitor-enter v2

    :try_start_3
    const-string v0, ">>>start version check"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 280
    const-string v1, "3"

    .line 281
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mtjstatsdk/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "backups/system/remote.jar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v3, "BPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDownload remote jar file version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v0, :cond_10c

    .line 290
    :goto_45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "v"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "p"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "c"

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v0, "utf-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://bdplus.baidu.com/s?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "BPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update req url is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 300
    const-string v1, "x-sdk-config"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    const-string v3, "BPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_3 .. :try_end_d9} :catchall_109

    .line 303
    if-nez v1, :cond_dd

    .line 315
    :goto_db
    monitor-exit v2

    return-void

    .line 307
    :cond_dd
    const/4 v3, 0x1

    :try_start_de
    const-string v4, "backups/system/remote.jar"

    invoke-static {v3, p0, v4, v0}, Lcom/baidu/mtjstatsdk/l;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;)Z

    move-result v0

    .line 308
    const-string v3, "BPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish download the remote jar saveResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_de .. :try_end_fc} :catchall_109

    .line 311
    :try_start_fc
    invoke-static {p0, v0, v1}, Lcom/baidu/mtjstatsdk/ak;->a(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_100
    .catchall {:try_start_fc .. :try_end_ff} :catchall_109

    goto :goto_db

    .line 312
    :catch_100
    move-exception v0

    .line 313
    :try_start_101
    const-string v0, "BPlus"

    const-string v1, "config save exception"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_101 .. :try_end_108} :catchall_109

    goto :goto_db

    .line 279
    :catchall_109
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_10c
    move-object v0, v1

    goto/16 :goto_45
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "BPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote.jar local file md5 value md5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-nez v1, :cond_27

    .line 126
    const-string v1, "BPlus"

    const-string v2, "remote.jar local file md5 value fail"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_26
    :goto_26
    return v0

    .line 130
    :cond_27
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v3, "BPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote.jar local file md5 value version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v2, :cond_26

    .line 136
    invoke-static {p0, v2}, Lcom/baidu/mtjstatsdk/ak;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "BPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote.jar config md5 value remoteJarMd5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez v2, :cond_6b

    .line 139
    const-string v1, "BPlus"

    const-string v2, "remote.jar config md5 value lost"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 143
    :cond_6b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 144
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private static declared-synchronized c(Landroid/content/Context;)Ldalvik/system/DexClassLoader;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 64
    const-class v1, Lcom/baidu/mtjstatsdk/ak;

    monitor-enter v1

    :try_start_4
    sget-object v2, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;

    if-eqz v2, :cond_c

    .line 65
    sget-object v0, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_46

    .line 91
    :cond_a
    :goto_a
    monitor-exit v1

    return-object v0

    .line 68
    :cond_c
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mtjstatsdk/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "backups/system/remote.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "backups/system/remote.jar"

    invoke-static {v3}, Lcom/baidu/mtjstatsdk/l;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 74
    invoke-static {p0, v2}, Lcom/baidu/mtjstatsdk/ak;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 75
    const-string v2, "BPlus"

    const-string v4, "remote jar md5 is not right, need delete"

    invoke-static {v2, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_46

    goto :goto_a

    .line 64
    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :cond_49
    :try_start_49
    const-string v0, "outdex"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_46

    move-result-object v0

    .line 84
    :try_start_50
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_64} :catch_67
    .catchall {:try_start_50 .. :try_end_64} :catchall_46

    .line 91
    :goto_64
    :try_start_64
    sget-object v0, Lcom/baidu/mtjstatsdk/ak;->a:Ldalvik/system/DexClassLoader;

    goto :goto_a

    .line 87
    :catch_67
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_46

    goto :goto_64
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 189
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 190
    const-string v1, "BPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez v0, :cond_1e

    .line 192
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    .line 194
    :cond_1e
    invoke-interface {v0, p0, p1}, Lcom/baidu/bplus/IBPStretegyController;->getMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 10

    .prologue
    .line 161
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 162
    if-nez v0, :cond_d

    .line 163
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    .line 164
    const-string v1, "BPlus"

    const-string v2, "checkWithLastUpdateTime controller == null"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_d
    invoke-interface {v0, p0}, Lcom/baidu/bplus/IBPStretegyController;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 167
    invoke-interface {v0, p0}, Lcom/baidu/bplus/IBPStretegyController;->getConfigInteveral(Landroid/content/Context;)J

    move-result-wide v0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 169
    sub-long v6, v4, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_4d

    .line 170
    const-string v6, "BPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    .line 177
    :goto_4c
    return v0

    .line 175
    :cond_4d
    const-string v6, "BPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private static e(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 252
    sget-object v0, Lcom/baidu/mtjstatsdk/aj;->a:Lcom/baidu/bplus/IBPStretegyController;

    .line 253
    if-nez v0, :cond_6

    .line 254
    sget-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    .line 257
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    :try_start_a
    invoke-interface {v0, p0, v2, v3}, Lcom/baidu/bplus/IBPStretegyController;->setLastUpdateTime(Landroid/content/Context;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_26

    .line 265
    :goto_d
    const-string v0, "BPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set last update time ok, time is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 260
    :catch_26
    move-exception v0

    .line 261
    const-string v1, "BPlus"

    const-string v4, "set last update time error"

    invoke-static {v1, v4}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_d
.end method
