.class public Lcom/vivo/md5/Wave;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vivoAccountWave"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_4e

    :try_start_2
    invoke-static {p0}, Lcom/vivo/md5/Wave;->c([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_12

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v4, :cond_30

    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/md5/Wave;->waveStringNet(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    aget-object v0, v2, v1

    if-nez v0, :cond_36

    const-string v0, ""

    :cond_36
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :catch_4d
    move-exception v0

    :cond_4e
    const-string v0, ""

    goto :goto_2f
.end method

.method private static varargs b([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_48

    :try_start_2
    invoke-static {p0}, Lcom/vivo/md5/Wave;->c([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_12

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-lt v1, v4, :cond_30

    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/md5/Wave;->waveStringNet(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    aget-object v0, v2, v1

    if-nez v0, :cond_36

    const-string v0, ""

    :cond_36
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_47

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :catch_47
    move-exception v0

    :cond_48
    const-string v0, ""

    goto :goto_2f
.end method

.method private static c([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-lt v0, v1, :cond_8

    return-object v2

    :cond_8
    aget-object v1, p0, v0

    if-nez v1, :cond_e

    const-string v1, ""

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static getM2(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, v5

    :cond_16
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1d
    array-length v3, v2

    if-lt v0, v3, :cond_25

    invoke-static {v1}, Lcom/vivo/md5/Wave;->getM2(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v5, :cond_3d

    aget-object v4, v3, v5

    if-nez v4, :cond_38

    const-string v4, ""

    aput-object v4, v3, v5

    :cond_38
    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public static getM2(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1e

    invoke-static {v2}, Lcom/vivo/md5/Wave;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method public static getM2ForPost(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1e

    invoke-static {v2}, Lcom/vivo/md5/Wave;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method public static getWaveEnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, ""

    :try_start_2
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/md5/Wave;->waveStringEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_16
.end method

.method public static native waveFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native waveString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native waveStringEnd(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native waveStringNet(Ljava/lang/String;)J
.end method
