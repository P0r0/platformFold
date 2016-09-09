.class public Lcom/vivo/upgrade/utils/MdFive;
.super Ljava/lang/Object;
.source "MdFive.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Upgrade.MdFive"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMdFive(Ljava/io/File;)Ljava/lang/String;
    .registers 12
    .param p0, "updateFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_8

    .line 86
    :goto_7
    return-object v6

    .line 60
    :cond_8
    :try_start_8
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_d} :catch_4e

    move-result-object v2

    .line 69
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_57

    .line 75
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 78
    .local v1, "buffer":[B
    :goto_17
    :try_start_17
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-gtz v7, :cond_60

    .line 81
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 82
    .local v5, "mdFiveSum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 83
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "output":Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_40} :catch_65
    .catchall {:try_start_17 .. :try_end_40} :catchall_6e

    move-result-object v6

    .line 91
    :try_start_41
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_7

    .line 92
    :catch_45
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "Upgrade.MdFive"

    const-string v9, "Exception on closing MD5 input stream"

    invoke-static {v8, v9, v3}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 61
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "mdFiveSum":[B
    .end local v6    # "output":Ljava/lang/String;
    .end local v7    # "read":I
    :catch_4e
    move-exception v3

    .line 62
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "Upgrade.MdFive"

    const-string v9, "Exception while getting Digest"

    invoke-static {v8, v9, v3}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 70
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :catch_57
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v8, "Upgrade.MdFive"

    const-string v9, "Exception while getting FileInputStream"

    invoke-static {v8, v9, v3}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    .line 79
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "read":I
    :cond_60
    const/4 v8, 0x0

    :try_start_61
    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_6e

    goto :goto_17

    .line 87
    .end local v7    # "read":I
    :catch_65
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    :try_start_66
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6e

    .line 89
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6e
    move-exception v8

    .line 91
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 95
    :goto_72
    throw v8

    .line 92
    :catch_73
    move-exception v3

    .line 93
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "Upgrade.MdFive"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v9, v10, v3}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_72
.end method

.method public static checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z
    .registers 9
    .param p0, "mdFive"    # Ljava/lang/String;
    .param p1, "updateFile"    # Ljava/io/File;
    .param p2, "checkHash"    # Z

    .prologue
    const/4 v2, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "digest":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez p1, :cond_26

    .line 24
    :cond_a
    const-string v3, "Upgrade.MdFive"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "++md5 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "Upgrade.MdFive"

    const-string v4, "md5 String NULL or UpdateFile NULL"

    invoke-static {v3, v4}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_25
    return v2

    .line 29
    :cond_26
    if-eqz p2, :cond_44

    .line 30
    invoke-static {p1}, Lcom/vivo/upgrade/utils/MdFive;->getFileMD5Hash(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v0

    .line 31
    .local v0, "MD5Hash":Ljava/lang/Long;
    if-eqz v0, :cond_3c

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .end local v0    # "MD5Hash":Ljava/lang/Long;
    :goto_32
    if-nez v1, :cond_49

    .line 41
    const-string v3, "Upgrade.MdFive"

    const-string v4, "md5 calculatedDigest NULL"

    invoke-static {v3, v4}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 34
    .restart local v0    # "MD5Hash":Ljava/lang/Long;
    :cond_3c
    const-string v3, "Upgrade.MdFive"

    const-string v4, "the value of getFileMD5Hash(updateFile) is null"

    invoke-static {v3, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 37
    .end local v0    # "MD5Hash":Ljava/lang/Long;
    :cond_44
    invoke-static {p1}, Lcom/vivo/upgrade/utils/MdFive;->calculateMdFive(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 45
    :cond_49
    const-string v2, "Upgrade.MdFive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "md5  Calculated digest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "Upgrade.MdFive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "md5  Provided digest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_25
.end method

.method public static getFileMD5Hash(Ljava/io/File;)Ljava/lang/Long;
    .registers 23
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 100
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isFile()Z

    move-result v18

    if-nez v18, :cond_9

    .line 101
    const/16 v18, 0x0

    .line 136
    :goto_8
    return-object v18

    .line 104
    :cond_9
    const/4 v4, 0x0

    .line 105
    .local v4, "digest":Ljava/security/MessageDigest;
    const/4 v7, 0x0

    .line 106
    .local v7, "in":Ljava/io/FileInputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 110
    .local v3, "buffer":[B
    :try_start_11
    const-string v18, "MD5"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 111
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_be

    .line 112
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v14, "in":Ljava/io/FileInputStream;
    :goto_1e
    const/16 v18, 0x0

    const/16 v19, 0x400

    :try_start_22
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v3, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    .local v15, "len":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_75

    .line 115
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_7d

    .line 121
    new-instance v2, Ljava/math/BigInteger;

    const/16 v18, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 122
    .local v2, "bigInt":Ljava/math/BigInteger;
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, "strMd5":Ljava/lang/String;
    const/16 v18, 0x8

    const/16 v19, 0x18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, "sign":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 125
    .local v10, "id1":J
    const-wide/16 v12, 0x0

    .line 126
    .local v12, "id2":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v6, v0, :cond_82

    .line 131
    const/16 v6, 0x8

    :goto_5f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_a0

    .line 135
    add-long v18, v10, v12

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 136
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto :goto_8

    .line 113
    .end local v2    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "i":I
    .end local v8    # "id":J
    .end local v10    # "id1":J
    .end local v12    # "id2":J
    .end local v16    # "sign":Ljava/lang/String;
    .end local v17    # "strMd5":Ljava/lang/String;
    :cond_75
    const/16 v18, 0x0

    :try_start_77
    move/from16 v0, v18

    invoke-virtual {v4, v3, v0, v15}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7c} :catch_7d

    goto :goto_1e

    .line 116
    .end local v15    # "len":I
    :catch_7d
    move-exception v5

    move-object v7, v14

    .line 118
    .end local v14    # "in":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :goto_7f
    const/16 v18, 0x0

    goto :goto_8

    .line 127
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "bigInt":Ljava/math/BigInteger;
    .restart local v6    # "i":I
    .restart local v10    # "id1":J
    .restart local v12    # "id2":J
    .restart local v14    # "in":Ljava/io/FileInputStream;
    .restart local v15    # "len":I
    .restart local v16    # "sign":Ljava/lang/String;
    .restart local v17    # "strMd5":Ljava/lang/String;
    :cond_82
    const-wide/16 v18, 0x10

    mul-long v12, v12, v18

    .line 128
    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 132
    :cond_a0
    const-wide/16 v18, 0x10

    mul-long v10, v10, v18

    .line 133
    add-int/lit8 v18, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 116
    .end local v2    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "i":I
    .end local v10    # "id1":J
    .end local v12    # "id2":J
    .end local v14    # "in":Ljava/io/FileInputStream;
    .end local v15    # "len":I
    .end local v16    # "sign":Ljava/lang/String;
    .end local v17    # "strMd5":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catch_be
    move-exception v5

    goto :goto_7f
.end method

.method public static getUriQueryMap(Ljava/net/URI;)Ljava/util/HashMap;
    .registers 12
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "query":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 145
    const-string v5, "[&]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "params":[Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_19
    if-lt v5, v7, :cond_1c

    .line 156
    .end local v3    # "params":[Ljava/lang/String;
    :cond_1b
    return-object v0

    .line 146
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_1c
    aget-object v2, v3, v5

    .line 147
    .local v2, "param":Ljava/lang/String;
    const-string v8, "[=]"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "pair":[Ljava/lang/String;
    array-length v8, v1

    if-le v8, v10, :cond_31

    .line 149
    aget-object v8, v1, v6

    aget-object v9, v1, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 151
    :cond_31
    aget-object v8, v1, v6

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e
.end method
