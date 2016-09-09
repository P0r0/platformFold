.class public Lcom/baidu/bdgame/sdk/obf/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x4

.field private static final i:Ljava/lang/String; = "utf-8"

.field private static final j:I = 0x40

.field private static final k:I = 0x20


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private f:S

.field private g:I

.field private h:I

.field private l:Lcom/baidu/bdgame/sdk/obf/la;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-short v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    .line 51
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->g:I

    .line 52
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    .line 75
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    .line 78
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/la;->e()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->g:I

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 473
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private a(I[BII)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    packed-switch p1, :pswitch_data_1a

    .line 399
    :goto_4
    :pswitch_4
    return-object v0

    .line 373
    :pswitch_5
    new-array v0, p4, [B

    .line 374
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 378
    :pswitch_c
    invoke-static {p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a([BII)[B

    move-result-object v0

    goto :goto_4

    .line 393
    :pswitch_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->b()[B

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a([B[BII)[B

    move-result-object v0

    goto :goto_4

    .line 371
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_11
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 605
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 606
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    if-nez v1, :cond_b

    .line 617
    :goto_a
    return-object v0

    .line 608
    :cond_b
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 609
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_a

    .line 614
    :cond_15
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    .line 615
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->b()[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a([B[B)[B

    move-result-object v0

    goto :goto_a

    .line 617
    :cond_29
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a([BII)[B
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 403
    .line 406
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 407
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_47
    .catchall {:try_start_1 .. :try_end_10} :catchall_3b

    .line 408
    const/16 v0, 0x400

    :try_start_12
    new-array v0, v0, [B

    .line 410
    :goto_14
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 411
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_44

    goto :goto_14

    .line 415
    :catch_20
    move-exception v0

    move-object v0, v2

    .line 418
    :goto_22
    if-eqz v0, :cond_4a

    .line 420
    :try_start_24
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_38

    move-object v0, v1

    .line 426
    :cond_28
    :goto_28
    return-object v0

    .line 413
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 414
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_20
    .catchall {:try_start_29 .. :try_end_30} :catchall_44

    .line 418
    if-eqz v2, :cond_28

    .line 420
    :try_start_32
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_28

    .line 421
    :catch_36
    move-exception v1

    goto :goto_28

    :catch_38
    move-exception v0

    move-object v0, v1

    .line 422
    goto :goto_28

    .line 418
    :catchall_3b
    move-exception v0

    :goto_3c
    if-eqz v1, :cond_41

    .line 420
    :try_start_3e
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 422
    :cond_41
    :goto_41
    throw v0

    .line 421
    :catch_42
    move-exception v1

    goto :goto_41

    .line 418
    :catchall_44
    move-exception v0

    move-object v1, v2

    goto :goto_3c

    .line 415
    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_22

    :cond_4a
    move-object v0, v1

    goto :goto_28
.end method

.method private a([BLjava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 577
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 601
    :goto_7
    return-object p1

    .line 581
    :cond_8
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 585
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 586
    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 588
    const/16 v2, 0x25

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 589
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lm;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    if-lt v3, v4, :cond_4c

    .line 591
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 592
    const/16 v2, 0x26

    const/4 v3, 0x4

    invoke-static {v0, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    array-length v0, p1

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 599
    array-length v2, p1

    invoke-static {p1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 601
    goto :goto_7

    .line 594
    :cond_4c
    const/4 p1, 0x0

    goto :goto_7
.end method

.method private static a([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 621
    if-nez p0, :cond_a

    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_a
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lf;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([B[BII)[B
    .registers 6

    .prologue
    .line 430
    if-nez p0, :cond_a

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_a
    new-array v0, p3, [B

    .line 435
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    :try_start_10
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lf;->b([B[B)[B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v0

    .line 444
    :goto_14
    return-object v0

    .line 440
    :catch_15
    move-exception v0

    .line 442
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 477
    const-string v0, "Platform"

    const-string v3, "2"

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 478
    const-string v0, "SDKVersion"

    const-string v3, "3.7.1"

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 479
    const-string v0, "FWVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 480
    const-string v0, "PhoneType"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 483
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 484
    const-string v3, "Resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 485
    const-string v3, "Network"

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_97

    move v0, v1

    :goto_53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 486
    const-string v0, "Jailbreak"

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kz;->d()Z

    move-result v3

    if-eqz v3, :cond_63

    move v2, v1

    :cond_63
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 487
    const-string v0, "ChannelID"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 489
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v0, v2, :cond_84

    .line 490
    const-string v0, "Debug"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 493
    :cond_84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ma;->a(Landroid/content/Context;)I

    move-result v0

    .line 494
    const/4 v1, -0x1

    if-eq v0, v1, :cond_96

    .line 495
    const-string v1, "SDKType"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    .line 497
    :cond_96
    return-void

    :cond_97
    move v0, v2

    .line 485
    goto :goto_53
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 513
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 514
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    .line 519
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 631
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 632
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 633
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 634
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 635
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 636
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 637
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 641
    :goto_1d
    return-object v0

    .line 638
    :catch_1e
    move-exception v0

    .line 639
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 641
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b([B)[B
    .registers 5

    .prologue
    .line 221
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/kz;->f([B)I

    move-result v0

    .line 225
    const/16 v1, 0x20

    :try_start_6
    array-length v2, p1

    add-int/lit8 v2, v2, -0x20

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(I[BII)[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_e

    move-result-object v0

    .line 230
    :goto_d
    return-object v0

    .line 226
    :catch_e
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c([B)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 235
    :try_start_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    new-array v1, v1, [B

    .line 236
    const/16 v2, 0x20

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lm;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 239
    if-nez v1, :cond_14

    .line 258
    :cond_13
    :goto_13
    return v0

    .line 243
    :cond_14
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    .line 245
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_13

    .line 248
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x8

    const/4 v4, 0x4

    const-string v5, "utf-8"

    invoke-direct {v2, p1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_37

    move-result v1

    if-eqz v1, :cond_13

    .line 252
    const/4 v0, 0x1

    goto :goto_13

    .line 254
    :catch_37
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private final c()[B
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/la;->f()Lcom/baidu/bdgame/sdk/obf/lc;

    move-result-object v0

    .line 99
    if-nez v0, :cond_a

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lc;->a()[B

    move-result-object v0

    goto :goto_9
.end method

.method private static d()Z
    .registers 1

    .prologue
    .line 505
    :try_start_0
    invoke-static {}, Lcom/baidu/platformsdk/jni/RootUtil;->nativeIsRoot()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 509
    :goto_4
    return v0

    .line 506
    :catch_5
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private d([B)[B
    .registers 3

    .prologue
    .line 264
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 268
    :goto_5
    return-object v0

    .line 265
    :catch_6
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private e([B)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 275
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 280
    :goto_8
    return-object v0

    .line 276
    :catch_9
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static f([B)I
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method private static g([B)I
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 452
    new-array v0, v3, [B

    .line 453
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lk;->c([B)I

    move-result v0

    return v0
.end method

.method private m()[B
    .registers 7

    .prologue
    const/16 v2, 0x20

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 523
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 524
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 528
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->c()[B

    move-result-object v1

    .line 529
    if-eqz v1, :cond_15

    .line 531
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    :cond_15
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lk;->a(S)[B

    move-result-object v1

    .line 538
    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    if-eq v1, v3, :cond_28

    .line 544
    const/16 v1, 0x22

    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 553
    :cond_28
    iget-short v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    if-eq v1, v3, :cond_37

    .line 554
    iget-short v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lk;->a(S)[B

    move-result-object v1

    .line 555
    const/16 v2, 0x23

    invoke-static {v1, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :cond_37
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->g:I

    if-eq v1, v3, :cond_47

    .line 565
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->g:I

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lk;->a(I)[B

    move-result-object v1

    .line 566
    const/16 v2, 0x2a

    const/4 v3, 0x4

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    :cond_47
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v0

    .line 695
    const-string v1, "bdp_request_data_error"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 142
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    .line 143
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    .line 144
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method final a(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    if-eqz p1, :cond_14

    .line 129
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->o:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_14
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->o:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 135
    :goto_1d
    return-void

    .line 132
    :catch_1e
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method final a(Ljava/net/HttpURLConnection;)V
    .registers 2

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->b(Ljava/net/HttpURLConnection;)V

    .line 470
    return-void
.end method

.method protected final a(S)V
    .registers 2

    .prologue
    .line 188
    iput-short p1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    .line 189
    return-void
.end method

.method final a([B)V
    .registers 8

    .prologue
    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 286
    array-length v0, p1

    if-nez v0, :cond_11

    .line 288
    const-string v0, "receive size error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 367
    :cond_10
    :goto_10
    return-void

    .line 292
    :cond_11
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kz;->d([B)[B

    move-result-object v0

    .line 293
    if-nez v0, :cond_21

    .line 295
    const-string v0, "decrypt error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 299
    :cond_21
    array-length v1, v0

    if-ge v1, v3, :cond_2e

    .line 301
    const-string v0, "receive size error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 305
    :cond_2e
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kz;->g([B)I

    move-result v1

    .line 306
    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->c(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 307
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ky;

    move-result-object v1

    .line 308
    iget-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 312
    :cond_52
    array-length v1, v0

    if-eq v1, v3, :cond_10

    .line 317
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c([B)Z

    move-result v1

    if-nez v1, :cond_65

    .line 319
    const-string v0, "checksum error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 323
    :cond_65
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->b([B)[B

    move-result-object v0

    .line 324
    if-nez v0, :cond_75

    .line 326
    const-string v0, "decrypt error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 330
    :cond_75
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->e([B)Lorg/json/JSONObject;

    move-result-object v1

    .line 331
    if-nez v1, :cond_85

    .line 333
    const-string v0, "json error"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto :goto_10

    .line 336
    :cond_85
    const-string v0, "ResultCode"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 339
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 345
    :cond_9c
    :try_start_9c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_9f} :catch_c1

    move-result v2

    .line 352
    const-string v0, "Result"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v2, :cond_ab

    .line 354
    invoke-virtual {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    .line 358
    :cond_ab
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ky;

    invoke-direct {v3, v4, v4}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 361
    iget-object v0, v3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 346
    :catch_c1
    move-exception v0

    .line 348
    const-string v0, "ResultCode"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 364
    :cond_cd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_da

    .line 365
    :goto_d3
    iget-object v1, v3, Lcom/baidu/bdgame/sdk/obf/ky;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 364
    :cond_da
    iget-object v0, v3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_d3
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected final varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v0

    .line 704
    const-string v1, "bdp_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(I)V
    .registers 4

    .prologue
    .line 170
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->h:I

    .line 171
    packed-switch p1, :pswitch_data_e

    .line 179
    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown et."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_d
    return-void

    .line 171
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_5
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method

.method protected b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method final b(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "request cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected b()[B
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/la;->f()Lcom/baidu/bdgame/sdk/obf/lc;

    move-result-object v0

    .line 107
    if-nez v0, :cond_a

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lc;->b()[B

    move-result-object v0

    goto :goto_9
.end method

.method final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 671
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    .line 148
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kz;->o:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method protected final c(I)Z
    .registers 5

    .prologue
    .line 709
    sparse-switch p1, :sswitch_data_30

    .line 727
    :goto_3
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    :goto_6
    return v0

    .line 711
    :sswitch_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    const-string v2, "session invalid 2"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Landroid/content/Context;I)V

    goto :goto_3

    .line 718
    :sswitch_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    const-string v2, "accesstoken invalid 18"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Landroid/content/Context;I)V

    goto :goto_3

    .line 727
    :cond_2d
    const/4 v0, 0x0

    goto :goto_6

    .line 709
    nop

    :sswitch_data_30
    .sparse-switch
        0x2 -> :sswitch_7
        0x12 -> :sswitch_1a
    .end sparse-switch
.end method

.method protected final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 676
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "absent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 88
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->a:Ljava/lang/String;

    .line 90
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 681
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "format"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Landroid/content/Context;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 686
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "illegal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Lcom/baidu/bdgame/sdk/obf/la;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->l:Lcom/baidu/bdgame/sdk/obf/la;

    return-object v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->m:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->o:Ljava/lang/Object;

    return-object v0
.end method

.method k()S
    .registers 2

    .prologue
    .line 192
    iget-short v0, p0, Lcom/baidu/bdgame/sdk/obf/kz;->f:S

    return v0
.end method

.method final l()[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 648
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->m()[B

    move-result-object v2

    .line 650
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->g()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;

    move-result-object v1

    .line 652
    if-eqz v1, :cond_1d

    .line 653
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    :goto_13
    invoke-direct {p0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a([BLjava/lang/String;)[B
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v0

    .line 665
    :goto_17
    return-object v0

    .line 660
    :catch_18
    move-exception v1

    .line 662
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :cond_1d
    move-object v1, v0

    goto :goto_13
.end method
