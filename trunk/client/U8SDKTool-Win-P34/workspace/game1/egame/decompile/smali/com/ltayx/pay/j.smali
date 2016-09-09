.class public Lcom/ltayx/pay/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ltayx/pay/j;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ltayx/pay/j;->a:Lcom/ltayx/pay/j;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/ltayx/pay/j;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    invoke-direct {p0}, Lcom/ltayx/pay/j;->g()V

    .line 59
    invoke-direct {p0}, Lcom/ltayx/pay/j;->h()I

    move-result v0

    iput v0, p0, Lcom/ltayx/pay/j;->d:I

    .line 64
    :cond_17
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ltayx/pay/j;
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/ltayx/pay/j;->a:Lcom/ltayx/pay/j;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/ltayx/pay/j;

    invoke-direct {v0, p0}, Lcom/ltayx/pay/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ltayx/pay/j;->a:Lcom/ltayx/pay/j;

    .line 50
    :cond_b
    sget-object v0, Lcom/ltayx/pay/j;->a:Lcom/ltayx/pay/j;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 317
    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_e

    .line 319
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 321
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 254
    .line 256
    :try_start_1
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_27
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f

    .line 257
    :try_start_6
    invoke-static {}, Lcom/ltayx/pay/g;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 258
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 259
    invoke-direct {p0, v1, v2, v3}, Lcom/ltayx/pay/j;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_37

    .line 261
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ltayx/pay/j;->a([B)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_43
    .catchall {:try_start_6 .. :try_end_22} :catchall_41

    move-result-object v0

    .line 266
    :try_start_23
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3d

    .line 270
    :goto_26
    return-object v0

    .line 263
    :catch_27
    move-exception v1

    move-object v1, v0

    .line 266
    :goto_29
    :try_start_29
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_26

    .line 267
    :catch_2d
    move-exception v1

    goto :goto_26

    .line 264
    :catchall_2f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 266
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3f

    .line 269
    :goto_36
    throw v0

    .line 266
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_26

    .line 267
    :catch_3b
    move-exception v1

    goto :goto_26

    :catch_3d
    move-exception v1

    goto :goto_26

    :catch_3f
    move-exception v1

    goto :goto_36

    .line 264
    :catchall_41
    move-exception v0

    goto :goto_33

    .line 263
    :catch_43
    move-exception v2

    goto :goto_29
.end method

.method private a([B)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v6, 0xa

    .line 300
    .line 301
    array-length v2, p1

    .line 302
    mul-int/lit8 v0, v2, 0x2

    .line 303
    new-array v3, v0, [C

    .line 304
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-lt v1, v2, :cond_11

    .line 311
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 305
    :cond_11
    aget-byte v4, p1, v1

    .line 306
    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 307
    mul-int/lit8 v5, v1, 0x2

    if-lt v0, v6, :cond_35

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_1f
    int-to-char v0, v0

    aput-char v0, v3, v5

    .line 308
    and-int/lit8 v0, v4, 0xf

    .line 309
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v6, :cond_38

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_2e
    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 307
    :cond_35
    add-int/lit8 v0, v0, 0x30

    goto :goto_1f

    .line 309
    :cond_38
    add-int/lit8 v0, v0, 0x30

    goto :goto_2e
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 16

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 393
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 398
    if-eqz v5, :cond_e8

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_e8

    .line 404
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "lltt_merchantid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 405
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_70

    .line 406
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 414
    :goto_27
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "lltt_mappid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_74

    .line 416
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 424
    :goto_37
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "lltt_cpchannelid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_78

    .line 426
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_47
    if-eqz v4, :cond_4d

    if-eqz v3, :cond_4d

    if-nez v0, :cond_e3

    .line 434
    :cond_4d
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getPayMerChannetId()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getPayAppId()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getPayCpChannelId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    .line 445
    :goto_5c
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 446
    array-length v10, v9

    move v5, v2

    move v0, v2

    move v3, v2

    move v4, v2

    :goto_67
    if-lt v5, v10, :cond_7b

    .line 469
    if-eqz v4, :cond_e1

    if-eqz v3, :cond_e1

    if-eqz v0, :cond_e1

    .line 476
    :goto_6f
    return v1

    .line 409
    :cond_70
    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_27

    .line 419
    :cond_74
    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_37

    .line 429
    :cond_78
    check-cast v0, Ljava/lang/String;

    goto :goto_47

    .line 446
    :cond_7b
    aget-object v11, v9, v5

    .line 447
    const-string v12, "merchantId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9c

    .line 449
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 450
    if-eqz v8, :cond_9c

    const/4 v13, 0x1

    aget-object v13, v12, v13

    if-eqz v13, :cond_9c

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9c

    move v4, v1

    .line 454
    :cond_9c
    const-string v12, "appId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_bb

    .line 456
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 457
    if-eqz v7, :cond_bb

    const/4 v13, 0x1

    aget-object v13, v12, v13

    if-eqz v13, :cond_bb

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bb

    move v3, v1

    .line 461
    :cond_bb
    const-string v12, "cpChannelId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_da

    .line 463
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 464
    if-eqz v6, :cond_da

    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-eqz v12, :cond_da

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_d6} :catch_dd

    move-result v11

    if-eqz v11, :cond_da

    move v0, v1

    .line 446
    :cond_da
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 472
    :catch_dd
    move-exception v0

    .line 474
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_e1
    move v1, v2

    .line 476
    goto :goto_6f

    :cond_e3
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    goto/16 :goto_5c

    :cond_e8
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_47
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_4

    .line 184
    :cond_3
    :goto_3
    return v0

    .line 160
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    :try_start_f
    invoke-direct {p0, v1}, Lcom/ltayx/pay/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {}, Lcom/ltayx/pay/g;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 165
    iget-object v2, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/ltayx/pay/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/ltayx/pay/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 171
    iget-object v4, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget v2, p0, Lcom/ltayx/pay/j;->d:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_37

    if-gt v2, v3, :cond_38

    .line 172
    const/4 v0, 0x1

    goto :goto_3

    .line 176
    :catch_37
    move-exception v2

    .line 179
    :cond_38
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 216
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 217
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 219
    if-nez v2, :cond_1c

    .line 243
    :cond_1b
    :goto_1b
    return v0

    .line 222
    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 223
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 226
    :goto_28
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_3c

    .line 229
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 230
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 231
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 234
    const/4 v0, 0x1

    goto :goto_1b

    .line 227
    :cond_3c
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_40} :catch_41

    goto :goto_28

    .line 236
    :catch_41
    move-exception v2

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1b
.end method

.method private a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 284
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 285
    :cond_5
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 287
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 288
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 291
    :cond_17
    :goto_17
    return-object v0

    .line 289
    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_e

    .line 329
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 331
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/ltayx/pay/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_56
    return-object v0

    :cond_57
    const/4 v0, 0x0

    goto :goto_56
.end method

.method private e()Ljava/lang/String;
    .registers 5

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    invoke-static {}, Lcom/ltayx/pay/g;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private g()V
    .registers 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    if-nez v0, :cond_b

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    .line 343
    :cond_b
    iget-object v0, p0, Lcom/ltayx/pay/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 345
    :try_start_11
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 347
    array-length v2, v1

    const/4 v0, 0x0

    :goto_19
    if-lt v0, v2, :cond_1c

    .line 358
    :goto_1b
    return-void

    .line 347
    :cond_1c
    aget-object v3, v1, v0

    .line 348
    invoke-static {}, Lcom/ltayx/pay/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 349
    invoke-static {}, Lcom/ltayx/pay/g;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 351
    iget-object v4, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_3a

    .line 347
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 354
    :catch_3a
    move-exception v0

    goto :goto_1b
.end method

.method private h()I
    .registers 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    if-nez v0, :cond_7

    .line 365
    invoke-direct {p0}, Lcom/ltayx/pay/j;->g()V

    .line 368
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 369
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 387
    :cond_17
    :goto_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 369
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-static {}, Lcom/ltayx/pay/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 371
    invoke-static {}, Lcom/ltayx/pay/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 374
    invoke-static {}, Lcom/ltayx/pay/g;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_11

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_4e

    move-result v0

    goto :goto_18

    .line 384
    :catch_4e
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public a()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    if-nez v0, :cond_8

    .line 73
    invoke-direct {p0}, Lcom/ltayx/pay/j;->g()V

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    if-nez v0, :cond_e

    move v0, v1

    .line 103
    :goto_d
    return v0

    .line 79
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/ltayx/pay/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_1a
    move v0, v1

    .line 103
    goto :goto_d

    .line 79
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/ltayx/pay/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 81
    invoke-static {}, Lcom/ltayx/pay/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 83
    iput-object v0, p0, Lcom/ltayx/pay/j;->f:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ltayx/pay/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltayx/pay/g;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-static {}, Lcom/ltayx/pay/g;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ltayx/pay/g;->y()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7d

    .line 89
    :cond_77
    invoke-static {}, Lcom/ltayx/pay/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7d} :catch_7f

    .line 94
    :cond_7d
    const/4 v0, 0x1

    goto :goto_d

    .line 98
    :catch_7f
    move-exception v0

    .line 101
    invoke-static {}, Lcom/ltayx/pay/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    goto :goto_1a
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ltayx/pay/j;->d()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 136
    :cond_a
    :goto_a
    return-object v0

    .line 114
    :cond_b
    invoke-direct {p0}, Lcom/ltayx/pay/j;->e()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-direct {p0, v1}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v0, v1

    .line 116
    goto :goto_a

    .line 121
    :cond_17
    invoke-direct {p0}, Lcom/ltayx/pay/j;->f()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 122
    iget-object v2, p0, Lcom/ltayx/pay/j;->f:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 123
    invoke-direct {p0, v0}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 131
    :cond_2b
    iget-object v0, p0, Lcom/ltayx/pay/j;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 132
    invoke-direct {p0, v1}, Lcom/ltayx/pay/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, v1

    .line 133
    goto :goto_a

    .line 136
    :cond_3b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/ltayx/pay/j;->e:Ljava/lang/String;

    return-object v0
.end method
