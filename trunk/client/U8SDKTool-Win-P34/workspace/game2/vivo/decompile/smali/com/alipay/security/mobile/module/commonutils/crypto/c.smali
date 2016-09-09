.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "HmacSHA1"

.field public static final b:Ljava/lang/String; = "HMAC-SHA-1"

.field public static final c:Ljava/lang/String; = "RAW"

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->d:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_e} :catch_46

    move-result-object v2

    :goto_f
    :try_start_f
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->d:[B

    const-string v5, "RAW"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    const/16 v4, 0x10

    if-ge v1, v4, :cond_4e

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_43} :catch_53

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :catch_46
    move-exception v2

    :try_start_47
    const-string v2, "HMAC-SHA-1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4c} :catch_55

    move-result-object v2

    goto :goto_f

    :cond_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_8

    :catch_53
    move-exception v1

    goto :goto_8

    :catch_55
    move-exception v1

    goto :goto_8
.end method

.method public static a([B[B)[B
    .registers 5

    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_15

    move-result-object v0

    :goto_6
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "RAW"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :catch_15
    move-exception v0

    const-string v0, "HMAC-SHA-1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_6
.end method
