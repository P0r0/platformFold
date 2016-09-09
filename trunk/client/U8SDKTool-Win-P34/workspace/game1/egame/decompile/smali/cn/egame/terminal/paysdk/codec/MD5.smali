.class public Lcn/egame/terminal/paysdk/codec/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcn/egame/terminal/paysdk/codec/MD5;->hexDigits:[C

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 116
    sget-object v2, Lcn/egame/terminal/paysdk/codec/MD5;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 117
    .local v0, "c0":C
    sget-object v2, Lcn/egame/terminal/paysdk/codec/MD5;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 118
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 103
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/egame/terminal/paysdk/codec/MD5;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 107
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 108
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 109
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_a
    if-ge v1, v0, :cond_14

    .line 110
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcn/egame/terminal/paysdk/codec/MD5;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 112
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    .local v0, "in":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcn/egame/terminal/paysdk/codec/MD5;->getIsMD5String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileMD5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/egame/terminal/paysdk/codec/MD5;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsMD5String(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v3, 0x0

    .line 20
    .local v3, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_1b

    move-result-object v3

    .line 26
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 28
    .local v1, "digestInputStream":Ljava/security/DigestInputStream;
    const/16 v4, 0x4000

    new-array v0, v4, [B

    .line 30
    .local v0, "buf":[B
    :goto_10
    invoke-virtual {v1, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1f

    .line 32
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v3

    goto :goto_10

    .line 21
    .end local v0    # "buf":[B
    .end local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    :catch_1b
    move-exception v2

    .line 23
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, ""

    .line 34
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1e
    return-object v4

    .restart local v0    # "buf":[B
    .restart local v1    # "digestInputStream":Ljava/security/DigestInputStream;
    :cond_1f
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcn/egame/terminal/paysdk/codec/MD5;->bufferToHex([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcn/egame/terminal/paysdk/codec/MD5;->getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 67
    :goto_9
    return-object v1

    .line 65
    :catch_a
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static getMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    invoke-static {v2, v3, p0}, Lcn/egame/terminal/paysdk/codec/MD5;->getMD5(Ljava/security/MessageDigest;[BLjava/io/InputStream;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_a

    move-result-object v1

    .line 79
    :goto_7
    return-object v1

    .line 74
    :catch_8
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_7

    .line 77
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_a
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    goto :goto_7
.end method

.method public static getMD5(Ljava/security/MessageDigest;[BLjava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "md"    # Ljava/security/MessageDigest;
    .param p1, "buffer"    # [B
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p0, :cond_8

    .line 86
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 89
    :cond_8
    if-nez p1, :cond_e

    .line 90
    const/16 v1, 0x4000

    new-array p1, v1, [B

    .line 95
    :cond_e
    :goto_e
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "num":I
    if-lez v0, :cond_19

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_e

    .line 99
    :cond_19
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcn/egame/terminal/paysdk/codec/MD5;->bufferToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcn/egame/terminal/paysdk/codec/MD5;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "md":Ljava/security/MessageDigest;
    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_13

    move-result-object v1

    .line 58
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 59
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcn/egame/terminal/paysdk/codec/MD5;->bufferToHex([B)Ljava/lang/String;

    move-result-object v2

    :goto_12
    return-object v2

    .line 54
    :catch_13
    move-exception v0

    .line 56
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, ""

    goto :goto_12
.end method
