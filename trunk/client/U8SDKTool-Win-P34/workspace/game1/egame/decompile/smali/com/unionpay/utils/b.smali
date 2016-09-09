.class public final Lcom/unionpay/utils/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/utils/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v8, 0x2

    const/4 v2, 0x0

    const-string v1, ""

    const-string v0, "configs"

    invoke-static {p0, v0}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mode"

    invoke-static {p0, v3}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "or"

    invoke-static {p0, v4}, Lcom/unionpay/utils/UPUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    :try_start_28
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {v5, v0}, Lcom/unionpay/utils/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_32} :catch_ac

    move-result-object v6

    :try_start_33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_36} :catch_9e
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_36} :catch_ac

    move-result v0

    move v3, v0

    :goto_38
    :try_start_38
    new-instance v0, Ljava/lang/String;

    const-string v7, "configs"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/utils/UPUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6}, Lcom/unionpay/utils/UPUtils;->forConfig(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_68} :catch_ac

    move-result v3

    if-eqz v3, :cond_ae

    :goto_6b
    move-object v1, v0

    :cond_6c
    :goto_6c
    :try_start_6c
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_71} :catch_a1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v2

    :goto_76
    if-ge v1, v4, :cond_a9

    invoke-static {v3, v1}, Lcom/unionpay/utils/f;->a(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a5

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/unionpay/utils/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "app"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const-string v1, "ca"

    invoke-static {v0, v1}, Lcom/unionpay/utils/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_9d
    return-object v0

    :catch_9e
    move-exception v0

    move v3, v2

    goto :goto_38

    :catch_a1
    move-exception v0

    const-string v0, ""

    goto :goto_9d

    :cond_a5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    :cond_a9
    const-string v0, ""

    goto :goto_9d

    :catch_ac
    move-exception v0

    goto :goto_6c

    :cond_ae
    move-object v0, v1

    goto :goto_6b
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_2a

    aget-byte v5, v3, v0

    and-int/lit16 v6, v5, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_45

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_28
    const/4 v4, 0x2

    if-le v3, v4, :cond_31

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_31
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_42

    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_11

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    :try_start_7
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_40

    move-result-object v0

    :goto_b
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_19
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_1e} :catch_46

    move-result-object v0

    :goto_1f
    :try_start_1f
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_1f .. :try_end_25} :catch_4c

    :goto_25
    :try_start_25
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/utils/b;->a([B)Ljava/lang/String;
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_36} :catch_52
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25 .. :try_end_36} :catch_57

    move-result-object v1

    :goto_37
    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_b

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1f

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v0, v1

    goto :goto_25

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_37

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_37
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_3d
    .catchall {:try_start_b .. :try_end_33} :catchall_4c

    move-result-object v0

    :try_start_34
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    return-object v0

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    :try_start_41
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_46

    move-object v0, v6

    goto :goto_37

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v6

    goto :goto_37

    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    :goto_50
    throw v0

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public static c(Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_17
    return-void

    :cond_18
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_14

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/utils/b;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method
