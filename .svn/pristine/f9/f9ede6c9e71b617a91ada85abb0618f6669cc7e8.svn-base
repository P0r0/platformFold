.class public Lcom/baidu/bdgame/sdk/obf/kv;
.super Lcom/baidu/bdgame/sdk/obf/kz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kz",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x1s


# instance fields
.field private b:Z

.field private f:Z

.field private g:[B


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 47
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->b:Z

    .line 50
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->f:Z

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/baidu/bdgame/sdk/obf/kv;
    .registers 5

    .prologue
    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kv;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/la;->a()Lcom/baidu/bdgame/sdk/obf/la;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kv;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kv;->b(I)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kv;->a(S)V

    .line 62
    iput-boolean p1, v0, Lcom/baidu/bdgame/sdk/obf/kv;->f:Z

    .line 63
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    const-string v0, ""

    .line 104
    :try_start_2
    invoke-static {p0}, Lcom/baidu/android/common/util/CommonParam;->getCUID(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_b

    move-result-object v0

    .line 108
    :goto_6
    if-nez v0, :cond_a

    .line 109
    const-string v0, ""

    .line 111
    :cond_a
    return-object v0

    .line 105
    :catch_b
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 533
    :try_start_0
    const-string v0, "SdkConfig"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 534
    if-nez v0, :cond_9

    .line 550
    :cond_8
    :goto_8
    return-void

    .line 537
    :cond_9
    const-string v1, "sdk_RealNameAuth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_8

    .line 541
    const-string v1, "Open"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->e(Z)V

    .line 543
    const-string v1, "Force"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->f(Z)V

    .line 545
    const-string v1, "CheckWay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    const/4 v0, 0x1

    :goto_4a
    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ks;->g(Z)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_8

    .line 547
    :catch_4e
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 546
    :cond_53
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 339
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 116
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    const-string p4, ""

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->g:[B

    const-string v1, "utf-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lf;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ll;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_1b} :catch_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1b} :catch_2b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_1b} :catch_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_35

    .line 133
    :goto_1b
    return-void

    .line 120
    :catch_1c
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1b

    .line 122
    :catch_21
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1b

    .line 124
    :catch_26
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1b

    .line 126
    :catch_2b
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1b

    .line 128
    :catch_30
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1b

    .line 130
    :catch_35
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 288
    .line 289
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 290
    if-nez v1, :cond_a

    .line 300
    :cond_9
    :goto_9
    return v0

    .line 293
    :cond_a
    const-string v2, "ErrorDescVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 299
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 554
    const-string v1, "ServerTime"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 565
    :goto_d
    return v0

    .line 558
    :cond_e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 560
    :try_start_15
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 561
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/le;->a(J)V
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_20} :catch_22

    .line 562
    const/4 v0, 0x1

    goto :goto_d

    .line 563
    :catch_22
    move-exception v1

    goto :goto_d
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 365
    const-string v0, "Seda"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 367
    const/4 v0, 0x0

    .line 370
    :goto_d
    return v0

    .line 369
    :cond_e
    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->j:Ljava/lang/String;

    .line 370
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 569
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 573
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 304
    .line 305
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    if-nez v1, :cond_a

    .line 316
    :cond_9
    :goto_9
    return v0

    .line 309
    :cond_a
    const-string v2, "PayConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 315
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 577
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 581
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 321
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    if-nez v1, :cond_a

    .line 335
    :cond_9
    :goto_9
    return v0

    .line 325
    :cond_a
    const-string v2, "RealNameAuthVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 328
    :try_start_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_23

    move-result v0

    .line 332
    :goto_1e
    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->b(Landroid/content/Context;I)V

    .line 333
    const/4 v0, 0x1

    goto :goto_9

    .line 329
    :catch_23
    move-exception v1

    goto :goto_1e
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 585
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 589
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 343
    const-string v0, "BackCallUrl"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_d

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 361
    :goto_14
    return v0

    .line 354
    :cond_15
    :try_start_15
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_1a} :catch_1f

    .line 360
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kr;->a(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x1

    goto :goto_14

    .line 355
    :catch_1f
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v1

    .line 357
    goto :goto_14
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 593
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 597
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 598
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 599
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 602
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_32
    return-object v0

    :cond_33
    const-string v0, ""

    goto :goto_32
.end method

.method private e(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 374
    .line 375
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 376
    if-nez v1, :cond_a

    .line 386
    :cond_9
    :goto_9
    return v0

    .line 379
    :cond_a
    const-string v2, "BasicConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 385
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private f(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/cu;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 391
    :try_start_1
    const-string v1, "SdkConfig"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 392
    if-nez v1, :cond_a

    .line 425
    :cond_9
    :goto_9
    return-object v0

    .line 396
    :cond_a
    const-string v2, "sdk_baidu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_9

    .line 401
    const-string v2, "appid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    const-string v3, "appkey"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    const-string v4, "tpl"

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 408
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 412
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 417
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 418
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/cu;->b(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/cu;->c(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_46

    move-object v0, v1

    .line 421
    goto :goto_9

    .line 422
    :catch_46
    move-exception v1

    .line 423
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 608
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lv;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 609
    if-nez v0, :cond_8

    .line 610
    const-string v0, ""

    .line 612
    :cond_8
    return-object v0
.end method

.method private g(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 438
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->c(Z)V

    .line 440
    :try_start_8
    const-string v0, "SdkConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 441
    if-nez v0, :cond_11

    .line 460
    :cond_10
    :goto_10
    return-void

    .line 444
    :cond_11
    const-string v1, "sdk_duoku"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_10

    .line 448
    const-string v1, "Open"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    const-string v2, "OpenLogin"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 453
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ks;->c(Z)V

    .line 456
    :cond_35
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->b(Landroid/content/Context;Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_3f

    goto :goto_10

    .line 457
    :catch_3f
    move-exception v0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private h(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 464
    :try_start_0
    const-string v0, "SdkConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 465
    if-nez v0, :cond_9

    .line 481
    :cond_8
    :goto_8
    return-void

    .line 468
    :cond_9
    const-string v1, "sdk_91"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_8

    .line 472
    const-string v1, "OpenLogin"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 474
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->c(Landroid/content/Context;Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_8

    .line 478
    :catch_24
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 476
    :cond_29
    const/4 v0, 0x0

    :try_start_2a
    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/mf;->c(Landroid/content/Context;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_24

    goto :goto_8
.end method

.method private i(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 485
    :try_start_0
    const-string v0, "SdkConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    if-nez v0, :cond_9

    .line 502
    :cond_8
    :goto_8
    return-void

    .line 489
    :cond_9
    const-string v1, "sdk_omlet"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_8

    .line 493
    const-string v1, "Open"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 495
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->a(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_8

    .line 499
    :catch_28
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 497
    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->a(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_28

    goto :goto_8
.end method

.method private j(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 512
    :try_start_0
    const-string v0, "SdkConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 513
    if-nez v0, :cond_9

    .line 529
    :cond_8
    :goto_8
    return-void

    .line 516
    :cond_9
    const-string v1, "sdk_perf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_8

    .line 520
    const-string v1, "Open"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 522
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->b(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_8

    .line 526
    :catch_28
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 524
    :cond_2d
    :try_start_2d
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->b(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_28

    goto :goto_8
.end method

.method private static m()[B
    .registers 1

    .prologue
    .line 136
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lf;->a()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 622
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kr;->o:Ljava/lang/String;

    .line 624
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kv;->m()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->g:[B

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    .line 76
    const-string v2, "Sign"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/la;->f(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kv;->g:[B

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Ljava/security/Key;[B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ll;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "AppKey"

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/la;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "IMSI"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "IMEI"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "AdId"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "MAC"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "ICCID"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "MCC"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lv;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "MNC"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/lv;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "CUID_ENCRYPT"

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "AccountTypePrefer"

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "AppVersionName"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/mc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v1, "AppVersionCode"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/mc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/la;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lcom/baidu/bdgame/sdk/obf/la;ILcom/baidu/bdgame/sdk/obf/ky;Lorg/json/JSONObject;)Z

    .line 148
    const-string v2, "SdkSysBackCallUrl"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const/16 v3, 0x3ec

    if-ne p2, v3, :cond_28

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/baidu/bdgame/sdk/obf/kv;->f:Z

    if-nez v3, :cond_28

    .line 150
    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/kr;->a(Ljava/lang/String;)V

    .line 151
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->b:Z

    .line 152
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->f:Z

    .line 153
    const-string v1, "BaiduPlatformSDK"

    const-string v2, " sys url redirection."

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_27
    :goto_27
    return v0

    .line 156
    :cond_28
    if-nez p2, :cond_13e

    .line 159
    const-string v2, "SessionId"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 161
    const-string v0, "SessionId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 162
    goto :goto_27

    .line 165
    :cond_40
    const/4 v3, 0x0

    .line 167
    :try_start_41
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_6f

    move-result-object v2

    .line 171
    :goto_47
    if-eqz v2, :cond_133

    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_133

    .line 173
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/lc;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/lc;-><init>()V

    .line 174
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/lc;->a([B)V

    .line 175
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kv;->g:[B

    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/lc;->b([B)V

    .line 177
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p1, v2, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->f(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/cu;

    move-result-object v2

    .line 178
    if-nez v2, :cond_75

    .line 179
    const-string v0, "SdkConfig"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 180
    goto :goto_27

    .line 168
    :catch_6f
    move-exception v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto :goto_47

    .line 183
    :cond_75
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Lcom/baidu/bdgame/sdk/obf/cu;)V

    .line 184
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/lc;)V

    .line 186
    const-string v1, "ok"

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ck;->b(Landroid/content/Context;)V

    .line 195
    const-string v1, "GuideUserToBaidu"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ks;->a()Lcom/baidu/bdgame/sdk/obf/ks;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ks;->d(Z)V

    .line 201
    const-string v1, "PayUrlState"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kr;->a(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->d(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 206
    invoke-direct {p0, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lorg/json/JSONObject;)Z

    .line 208
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->e(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 209
    const-string v1, "BaiduPlatformSDK"

    const-string v2, "format BasicConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_c7
    invoke-direct {p0, p1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 212
    const-string v1, "BaiduPlatformSDK"

    const-string v2, "format ServerTime"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_d4
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 215
    const-string v1, "BaiduPlatformSDK"

    const-string v2, "format ErrorDescVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_e5
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->b(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 218
    const-string v1, "BaiduPlatformSDK"

    const-string v2, "format PayConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_f6
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->c(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_107

    .line 221
    const-string v1, "BaiduPlatformSDK"

    const-string v2, "format RealNameAuthVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_107
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->g(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 228
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->h(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 229
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->i(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 230
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->j(Lcom/baidu/bdgame/sdk/obf/la;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 231
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/baidu/bdgame/sdk/obf/kv;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_27

    .line 233
    :cond_133
    const-string v0, "SessionId"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 234
    goto/16 :goto_27

    .line 236
    :cond_13e
    const/16 v2, 0x3ea

    if-ne p2, v2, :cond_164

    .line 238
    const-string v2, "PubKey"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_159

    .line 240
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->b:Z

    goto/16 :goto_27

    .line 243
    :cond_159
    const-string v0, "PubKey"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ky;->a:Ljava/lang/Object;

    move v0, v1

    .line 244
    goto/16 :goto_27

    .line 246
    :cond_164
    const/16 v1, 0x3eb

    if-ne p2, v1, :cond_27

    .line 248
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kv;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/la;->e(Landroid/content/Context;)V

    .line 249
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->b:Z

    goto/16 :goto_27
.end method

.method protected b()[B
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->g:[B

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->b:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kv;->f:Z

    return v0
.end method
