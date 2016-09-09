.class public final Lcom/alipay/apmobilesecuritysdk/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_34

    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_34
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    array-length v1, v4

    if-gtz v1, :cond_44

    :cond_3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_44
    if-eqz p0, :cond_4c

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_51

    :cond_4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_51
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_5d

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_62

    :cond_5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_62
    :try_start_62
    array-length v1, v4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [B

    move v1, v0

    :goto_6a
    array-length v2, v6

    if-ge v1, v2, :cond_73

    const/4 v2, 0x0

    aput-byte v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_73
    array-length v7, v4

    move v1, v0

    move v2, v0

    :goto_76
    if-ge v1, v7, :cond_97

    aget-object v8, v4, v1

    div-int/lit8 v0, v2, 0x8

    aget-byte v0, v6, v0

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    const/16 v8, 0x80

    rem-int/lit8 v9, v2, 0x8

    shr-int/2addr v8, v9

    or-int/2addr v0, v8

    :cond_8a
    div-int/lit8 v8, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v6, v8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    :cond_97
    invoke-static {v6}, Lcom/alipay/security/mobile/module/commonutils/crypto/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_9e} :catch_a4

    :goto_9e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :catch_a4
    move-exception v0

    goto :goto_9e
.end method
