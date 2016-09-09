.class public Lmobisocial/omlib/helper/LikeEncoder;
.super Ljava/lang/Object;
.source "LikeEncoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Ljava/util/Map;
    .registers 15
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_8

    .line 35
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 47
    :cond_7
    return-object v10

    .line 37
    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_12
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 41
    .local v2, "count":J
    new-instance v10, Ljava/util/HashMap;

    long-to-int v11, v2

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .local v10, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    int-to-long v12, v5

    cmp-long v11, v12, v2

    if-gez v11, :cond_7

    .line 43
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 44
    .local v6, "id":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 45
    .local v8, "likes":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_35} :catch_38

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 48
    .end local v2    # "count":J
    .end local v5    # "i":I
    .end local v6    # "id":J
    .end local v8    # "likes":J
    .end local v10    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_38
    move-exception v4

    .line 49
    .local v4, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method public static encode(Ljava/util/Map;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "likeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 16
    :cond_8
    const/4 v4, 0x0

    .line 30
    :goto_9
    return-object v4

    .line 18
    :cond_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 19
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1c
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 23
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 24
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_52} :catch_53

    goto :goto_2c

    .line 27
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_53
    move-exception v2

    .line 28
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 26
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5a
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_53

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_9
.end method
