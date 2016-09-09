.class public Lmobisocial/omlet/overlaybar/util/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# static fields
.field public static final MIN_STORAGE_SPACE_TO_LEAVE_BYTES:J = 0x3c00000L

.field private static final SPACE_TO_LEAVE_BUFFER_BYTES:J = 0x200000L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDirectory(Ljava/io/File;[Ljava/lang/String;)V
    .registers 7
    .param p0, "dirPath"    # Ljava/io/File;
    .param p1, "excludedFiles"    # [Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "filePaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_2b

    .line 121
    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    if-eqz p1, :cond_25

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 123
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 120
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filePaths":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method public static createLDPostIdFromBytes(Ljava/nio/ByteBuffer;)Lmobisocial/longdan/LDProtocols$LDPostId;
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 25
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDPostId;-><init>()V

    .line 26
    .local v2, "postId":Lmobisocial/longdan/LDProtocols$LDPostId;
    const/4 v3, 0x0

    .line 27
    .local v3, "poster_raw":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 28
    .local v0, "accountLength":S
    if-lez v0, :cond_11

    .line 29
    new-array v3, v0, [B

    .line 30
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 32
    :cond_11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    new-array v1, v5, [B

    .line 33
    .local v1, "id_raw":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    new-array v4, v5, [B

    .line 35
    .local v4, "type_raw":[B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    if-eqz v3, :cond_2c

    .line 37
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 39
    :cond_2c
    iput-object v1, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    .line 40
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    .line 41
    return-object v2
.end method

.method public static getBase32EncodedPostId(Lmobisocial/longdan/LDProtocols$LDPostId;)Ljava/lang/String;
    .registers 2
    .param p0, "lDPostId"    # Lmobisocial/longdan/LDProtocols$LDPostId;

    .prologue
    .line 45
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/Misc;->lDPostIdtoBytes(Lmobisocial/longdan/LDProtocols$LDPostId;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lorg/emergent/android/weave/client/Base32;->encodeOriginal([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkState(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "connect":Landroid/net/ConnectivityManager;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connect":Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .restart local v0    # "connect":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_19

    .line 95
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 96
    .local v1, "result":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 97
    const/4 v2, 0x1

    .line 102
    .end local v1    # "result":Landroid/net/NetworkInfo;
    :cond_19
    return v2
.end method

.method public static hasEnoughDiskSpace(Ljava/io/File;Z)Z
    .registers 8
    .param p0, "videoFile"    # Ljava/io/File;
    .param p1, "allowBufferSpace"    # Z

    .prologue
    const-wide/32 v4, 0x3c00000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-eqz p1, :cond_1f

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0x200000

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1d

    .line 113
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 111
    goto :goto_1c

    .line 113
    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method public static isXiaomi()Z
    .registers 2

    .prologue
    .line 106
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static lDPostIdtoBytes(Lmobisocial/longdan/LDProtocols$LDPostId;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "lDPostId"    # Lmobisocial/longdan/LDProtocols$LDPostId;

    .prologue
    const/16 v7, 0x7fff

    .line 49
    iget-object v4, p0, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    .line 50
    .local v4, "poster":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostId:[B

    .line 51
    .local v2, "postId":[B
    iget-object v3, p0, Lmobisocial/longdan/LDProtocols$LDPostId;->PostType:Ljava/lang/String;

    .line 52
    .local v3, "postType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, "accountLength":I
    if-eqz v4, :cond_1a

    .line 54
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v0, v6

    .line 55
    if-le v0, v7, :cond_1a

    .line 56
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "poster size too large"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    :cond_1a
    array-length v6, v2

    if-le v6, v7, :cond_25

    .line 59
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "id size too large"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 60
    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 61
    .local v5, "typeBytes":[B
    array-length v6, v5

    if-le v6, v7, :cond_38

    .line 62
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "type size too large"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_38
    add-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    array-length v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    array-length v7, v5

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 64
    .local v1, "buf":Ljava/nio/ByteBuffer;
    int-to-short v6, v0

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 65
    if-lez v0, :cond_53

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    :cond_53
    array-length v6, v2

    int-to-short v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    array-length v6, v5

    int-to-short v6, v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    return-object v1
.end method

.method public static parse18183Link(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v3, 0x0

    .line 88
    :goto_3
    return-object v3

    .line 81
    :cond_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_14} :catch_16

    move-result-object v3

    .local v3, "url":Ljava/lang/String;
    goto :goto_3

    .line 84
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "url":Ljava/lang/String;
    :catch_16
    move-exception v1

    .line 85
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "parse18183Link"

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    .restart local v3    # "url":Ljava/lang/String;
    goto :goto_3
.end method
