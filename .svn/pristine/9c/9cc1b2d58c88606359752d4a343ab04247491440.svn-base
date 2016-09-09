.class public final Lcom/baidu/scancode/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/scancode/a/c;->a:J

    const/16 v0, 0xa

    sput v0, Lcom/baidu/scancode/a/c;->b:I

    return-void
.end method

.method public static a(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v4, 0x3e8

    const-wide/16 v0, 0x0

    :try_start_4
    sput-wide v0, Lcom/baidu/scancode/a/c;->a:J

    new-instance v0, Ljava/net/URL;

    const-string v1, "http://www.baidu.com/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget v1, Lcom/baidu/scancode/a/c;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/baidu/scancode/a/c;->a:J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    sget-wide v2, Lcom/baidu/scancode/a/c;->a:J

    sub-long p0, v0, v2

    :goto_3c
    return-wide p0

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v1, Lcom/baidu/scancode/a/d;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/baidu/scancode/a/d;-><init>(Ljava/lang/String;IJI)V

    invoke-interface {v1, p0}, Lcom/baidu/scancode/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getPassUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    :try_start_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/scancode/a/c;->a([BZ)[B

    move-result-object v0

    :goto_1f
    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/android/pay/SafePay;->tokenEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2e
    :goto_2e
    return-object p0

    :cond_2f
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/scancode/a/c;->a([B[B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/scancode/a/c;->a([BZ)[B
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_43} :catch_45

    move-result-object v0

    goto :goto_1f

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2e
.end method

.method private static a([BZ)[B
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    array-length v4, p0

    move v2, v0

    move v3, v0

    :goto_f
    if-ge v2, v4, :cond_1a

    aget-byte v5, p0, v2

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    array-length v2, p0

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object p0, v1

    goto :goto_6
.end method

.method public static a([B[B)[B
    .registers 9

    const/4 v0, 0x0

    array-length v1, p0

    new-array v3, v1, [B

    array-length v4, p0

    move v1, v0

    :goto_6
    if-ge v0, v4, :cond_19

    aget-byte v5, p0, v0

    add-int/lit8 v2, v1, 0x1

    array-length v6, p1

    rem-int v6, v1, v6

    aget-byte v6, p1, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_6

    :cond_19
    return-object v3
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getPassUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/android/pay/SafePay;->tokenDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    :try_start_17
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v0, v2

    if-lt v0, v6, :cond_51

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    if-ne v2, v6, :cond_54

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scancode/a/c;->a([B[B)[B

    move-result-object v0

    move-object v1, v0

    :goto_45
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_4c} :catch_4d

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_51
    const-string v0, ""

    goto :goto_4c

    :cond_54
    move-object v1, v0

    goto :goto_45
.end method
