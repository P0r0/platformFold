.class public Lcom/u8/sdk/VivoSignUtils;
.super Ljava/lang/Object;
.source "VivoSignUtils.java"


# static fields
.field public static final QSTRING_EQUAL:Ljava/lang/String; = "="

.field public static final QSTRING_SPLIT:Ljava/lang/String; = "&"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGN_METHOD:Ljava/lang/String; = "signMethod"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildReq(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "req":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/u8/sdk/VivoSignUtils;->paraFilter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 42
    .local v0, "filteredReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lcom/u8/sdk/VivoSignUtils;->getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "signature":Ljava/lang/String;
    const-string v2, "signature"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "signMethod"

    const-string v3, "MD5"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/u8/sdk/VivoSignUtils;->createLinkString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createLinkString(Ljava/util/Map;ZZ)Ljava/lang/String;
    .registers 10
    .param p1, "sort"    # Z
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_e

    .line 125
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1f

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 129
    :cond_1f
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "value":Ljava/lang/String;
    if-eqz p2, :cond_33

    .line 134
    :try_start_2d
    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_32} :catch_5f

    move-result-object v4

    .line 139
    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_4b

    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 142
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 135
    :catch_5f
    move-exception v5

    goto :goto_33
.end method

.method public static getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/u8/sdk/VivoSignUtils;->paraFilter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 82
    .local v0, "filteredReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/u8/sdk/VivoSignUtils;->createLinkString(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "prestr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/u8/sdk/VivoSignUtils;->md5Summary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/u8/sdk/VivoSignUtils;->md5Summary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 190
    const-string v4, "version"

    const-string v5, "1.0.0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v4, "signMethod"

    const-string v5, "MD5"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "signature"

    const-string v5, "9107ccb42a7b1230d3d632ae8bf83e94"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v4, "storeId"

    const-string v5, "20140428114307567127"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v4, "appId"

    const-string v5, "1091"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v4, "storeOrder"

    const-string v5, "e4e2a265-3804-48a5-2380-ab1e48f215d3"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v4, "notifyUrl"

    const-string v5, "http://an.paigame3.com/api/callback/bbg/callback.php"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v4, "orderTime"

    const-string v5, "20140430135829"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v4, "orderAmount"

    const-string v5, "10.00"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "orderTitle"

    const-string v5, "\u5143\u5b9d"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v4, "orderDesc"

    const-string v5, "\u7528\u4e8e\u8d2d\u4e70\u5546\u57ce\u9053\u5177\u7684\u8d27\u5e01"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "D9D32DA92B315EBD1040387E89F7D1D6"

    .line 205
    .local v0, "key":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/u8/sdk/VivoSignUtils;->getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "sign":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vivo\u7b7e\u540d\u503c\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    invoke-static {v1, v0}, Lcom/u8/sdk/VivoSignUtils;->verifySignature(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    .line 209
    .local v3, "verify":Z
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u9a8c\u7b7e\u6210\u529f\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static md5Summary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_4

    .line 156
    const/4 p0, 0x0

    .line 183
    .end local p0    # "str":Ljava/lang/String;
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    :goto_3
    return-object p0

    .line 159
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 162
    .restart local v4    # "messageDigest":Ljava/security/MessageDigest;
    :try_start_5
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 164
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_17} :catch_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_17} :catch_2b

    .line 172
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 174
    .local v0, "byteArray":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v3, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v5, v0

    if-lt v2, v5, :cond_2d

    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 165
    .end local v0    # "byteArray":[B
    .end local v2    # "i":I
    .end local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_29
    move-exception v1

    .line 167
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_3

    .line 168
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2b
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_3

    .line 177
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "byteArray":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_2d
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_50

    .line 178
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 180
    :cond_50
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d
.end method

.method public static paraFilter(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_e

    .line 110
    :cond_d
    return-object v1

    .line 101
    :cond_e
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_16

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "signature"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 104
    const-string v4, "signMethod"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 107
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method

.method public static verifySignature(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/u8/sdk/VivoSignUtils;->paraFilter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, "filteredReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lcom/u8/sdk/VivoSignUtils;->getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "signature":Ljava/lang/String;
    const-string v3, "signature"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "respSignature":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u670d\u52a1\u5668\u7b7e\u540d\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | \u8bf7\u6c42\u6d88\u606f\u4e2d\u7684\u7b7e\u540d\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    if-eqz v1, :cond_38

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 66
    const/4 v3, 0x1

    .line 68
    :goto_37
    return v3

    :cond_38
    const/4 v3, 0x0

    goto :goto_37
.end method
