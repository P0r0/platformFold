.class public Lcom/baidu/sapi2/utils/d$a;
.super Ljava/lang/Object;
.source "SapiDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MD5"

.field private static final b:Ljava/lang/String; = "AES"

.field private static final c:Ljava/lang/String; = "UTF-8"

.field private static final d:I = 0x10

.field private static final e:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 246
    const/4 v0, 0x0

    .line 261
    :goto_7
    return-object v0

    .line 248
    :cond_8
    const/4 v0, 0x0

    .line 249
    .local v0, "cipher":Ljava/lang/String;
    const-string v4, "js52je)927!hsm^%3m"

    .line 252
    .local v4, "secretKey":Ljava/lang/String;
    :try_start_b
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/sapi2/utils/d$a;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "deviceIdBase64":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/sapi2/utils/d$a;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/sapi2/utils/d$a;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "sign":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "plainText":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/sapi2/utils/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_4a

    move-result-object v0

    goto :goto_7

    .line 258
    .end local v1    # "deviceIdBase64":Ljava/lang/String;
    .end local v3    # "plainText":Ljava/lang/String;
    .end local v5    # "sign":Ljava/lang/String;
    :catch_4a
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 275
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->b(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "secretStr":Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "ivs":Ljava/lang/String;
    const-string v8, "AES/CBC/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 279
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v5, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 281
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v8, "UTF-8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 282
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 283
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->c([B)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 284
    .local v6, "outText":[B
    invoke-static {v6}, Lcom/baidu/sapi2/utils/d$a;->b([B)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5c

    move-result-object v8

    .line 288
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "ivs":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v6    # "outText":[B
    .end local v7    # "secretStr":Ljava/lang/String;
    :goto_5b
    return-object v8

    .line 285
    :catch_5c
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 288
    const/4 v8, 0x0

    goto :goto_5b
.end method

.method public static a([B)Ljava/lang/String;
    .registers 8
    .param p0, "b"    # [B

    .prologue
    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_21

    aget-byte v0, v1, v2

    .line 183
    .local v0, "aB":B
    and-int/lit16 v5, v0, 0xff

    add-int/lit16 v5, v5, 0x100

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 185
    .end local v0    # "aB":B
    :cond_21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->b(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "secretStr":Ljava/lang/String;
    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "ivs":Ljava/lang/String;
    const-string v8, "AES/CBC/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 306
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v5, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 308
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v8, "UTF-8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 309
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/sapi2/utils/d$a;->c([B)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 311
    .local v6, "outText":[B
    invoke-static {v6}, Lcom/baidu/sapi2/utils/d$a;->b([B)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5c

    move-result-object v8

    .line 315
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "ivs":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v6    # "outText":[B
    .end local v7    # "secretStr":Ljava/lang/String;
    :goto_5b
    return-object v8

    .line 312
    :catch_5c
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 315
    const/4 v8, 0x0

    goto :goto_5b
.end method

.method public static b([B)Ljava/lang/String;
    .registers 13
    .param p0, "bytes"    # [B

    .prologue
    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v8, "result":Ljava/lang/StringBuilder;
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 196
    .local v1, "base64":Ljava/lang/String;
    const/4 v6, 0x0

    .line 197
    .local v6, "prevByteBitCount":I
    const/4 v5, 0x6

    .line 198
    .local v5, "nextByteBitCount":I
    const/4 v3, 0x0

    .line 199
    .local v3, "i":I
    const/4 v4, 0x0

    .line 200
    .local v4, "n":I
    array-length v9, p0

    mul-int/lit8 v2, v9, 0x8

    .line 201
    .local v2, "byteCount":I
    const/4 v0, 0x0

    .line 204
    .local v0, "b":B
    :cond_f
    if-lez v6, :cond_5c

    if-lez v5, :cond_5c

    .line 205
    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v5, 0x8

    shr-int/2addr v10, v11

    or-int/2addr v9, v10

    int-to-byte v0, v9

    .line 207
    and-int/lit8 v9, v0, 0x3f

    int-to-byte v0, v9

    .line 208
    rsub-int/lit8 v6, v5, 0x8

    .line 209
    rsub-int/lit8 v5, v6, 0x6

    .line 222
    :cond_2a
    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v4, v4, 0x6

    .line 224
    div-int/lit8 v3, v4, 0x8

    .line 225
    sub-int v7, v2, v4

    .line 226
    .local v7, "remainBitCount":I
    const/4 v9, 0x6

    if-ge v7, v9, :cond_f

    .line 228
    if-lez v7, :cond_4f

    .line 229
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    aget-byte v0, p0, v9

    .line 230
    rsub-int/lit8 v9, v7, 0x6

    shl-int v9, v0, v9

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v0, v9

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    :cond_4f
    rem-int/lit8 v4, v2, 0x3

    .line 235
    const/4 v3, 0x0

    :goto_52
    if-ge v3, v4, :cond_73

    .line 236
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 210
    .end local v7    # "remainBitCount":I
    :cond_5c
    if-nez v6, :cond_69

    .line 211
    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v5, 0x8

    shr-int/2addr v9, v10

    int-to-byte v0, v9

    .line 213
    const/4 v6, 0x2

    .line 214
    const/4 v5, 0x4

    goto :goto_2a

    .line 215
    :cond_69
    if-nez v5, :cond_2a

    .line 216
    aget-byte v9, p0, v3

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v0, v9

    .line 218
    const/4 v6, 0x0

    .line 219
    const/4 v5, 0x6

    goto :goto_2a

    .line 238
    .restart local v7    # "remainBitCount":I
    :cond_73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 4
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 167
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    .line 172
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :goto_11
    return-object v2

    .line 169
    :catch_12
    move-exception v0

    .line 170
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 172
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private static c([B)[B
    .registers 5
    .param p0, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 319
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1c

    .line 320
    array-length v2, p0

    div-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x10

    new-array v0, v2, [B

    .line 321
    .local v0, "buffer":[B
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v1, p0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 323
    aput-byte v3, v0, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    :cond_1c
    move-object v0, p0

    .line 327
    :cond_1d
    return-object v0
.end method
