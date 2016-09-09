.class public Lcom/vivo/sdkplugin/Utils/Vw;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vivo_sdk_wave"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1f

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/Vw;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_c

    const-string v0, "Account.Wave"

    const-string v1, "getSign  params contains null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_17

    array-length v3, p0

    const/4 v0, 0x0

    :goto_15
    if-lt v0, v3, :cond_33

    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/Vw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/Vw;->waveStringNet(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_33
    aget-object v1, p0, v0

    if-nez v1, :cond_39

    const-string v1, ""

    :cond_39
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_b
.end method

.method private static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_11
    const-string v2, "\\?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object p0, v2, v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_31

    :cond_1a
    :goto_1a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_28
    const-string v0, "Account.Wave"

    const-string v1, "keyUrl is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_30
    return-object v0

    :catch_31
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    goto :goto_1a

    :cond_37
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_43
    array-length v2, v5

    if-lt v0, v2, :cond_4b

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move-object v0, v3

    goto :goto_30

    :cond_4b
    aget-object v2, v5, v0

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v2, v7

    if-le v2, v8, :cond_8c

    aget-object v2, v7, v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, ""

    aput-object v2, v7, v8

    :cond_62
    aget-object v2, v7, v8

    :try_start_64
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_64 .. :try_end_69} :catch_83

    move-result-object v2

    :goto_6a
    aget-object v4, v7, v1

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    aget-object v4, v7, v1

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_7b
    aget-object v4, v7, v1

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :catch_83
    move-exception v4

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6a

    :cond_88
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_8c
    array-length v2, v7

    if-ne v2, v8, :cond_80

    aget-object v2, v7, v1

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    aget-object v2, v7, v1

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a0
    aget-object v2, v7, v1

    const-string v4, ""

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :cond_a8
    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0
.end method

.method private static a(Ljava/util/HashMap;Z)Ljava/util/ArrayList;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    return-object v2

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2c

    const-string v0, ""

    :cond_2c
    if-eqz p1, :cond_34

    :try_start_2e
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_33} :catch_38

    move-result-object v0

    :cond_34
    :goto_34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_34
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-lt v0, v4, :cond_21

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [B

    :goto_16
    array-length v0, v3

    if-lt v1, v0, :cond_4d

    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_20
    return-object v0

    :cond_21
    aget-byte v5, v3, v0

    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_33

    sub-int v6, v4, v0

    const/4 v7, 0x4

    if-lt v6, v7, :cond_33

    add-int/lit8 v0, v0, 0x3

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_33
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_30

    :catch_3b
    move-exception v0

    const-string v1, "Account.Wave"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    goto :goto_20

    :cond_4d
    :try_start_4d
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_3b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16
.end method

.method public static getValueForCookies(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_11

    const-string v0, "Account.Wave"

    const-string v1, "cookiesParams is null"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/util/HashMap;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static getValueForGetRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Account.Wave"

    const-string v1, "url is empty "

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static getValueForPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Account.Wave"

    const-string v1, "url is empty "

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_14
    return-object v0

    :cond_15
    if-nez p1, :cond_26

    const-string v0, "Account.Wave"

    const-string v1, "postParams is null"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    goto :goto_14

    :cond_26
    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/util/HashMap;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/Vw;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public static native waveStringNet(Ljava/lang/String;)J
.end method
