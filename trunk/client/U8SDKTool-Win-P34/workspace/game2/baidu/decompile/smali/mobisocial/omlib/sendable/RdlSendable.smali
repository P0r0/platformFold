.class public Lmobisocial/omlib/sendable/RdlSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "RdlSendable.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "rdl"

    invoke-direct {p0, v0}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public setCallback(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "callback"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 114
    return-object p0

    .line 115
    :catch_8
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayCaption(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "displayCaption"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 73
    return-object p0

    .line 74
    :catch_8
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayText(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "displayText"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 61
    return-object p0

    .line 62
    :catch_8
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayThumbnailUrl(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "displayThumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_a

    .line 141
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "displayThumbnailUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    :goto_9
    return-object p0

    .line 144
    :cond_a
    :try_start_a
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "displayThumbnailUrl"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_9

    .line 145
    :catch_12
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayTitle(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "displayTitle"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 49
    return-object p0

    .line 50
    :catch_8
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/JsonSendable;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lmobisocial/omlib/sendable/RdlSendable;->setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/RdlSendable;

    move-result-object v0

    return-object v0
.end method

.method public setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "json"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 85
    return-object p0

    .line 86
    :catch_8
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNoun(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "noun"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "noun"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 37
    return-object p0

    .line 38
    :catch_8
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPayload([B)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 6
    .param p1, "payload"    # [B

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "payload"

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 100
    return-object p0

    .line 101
    :catch_d
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setWebCallback(Ljava/lang/String;)Lmobisocial/omlib/sendable/RdlSendable;
    .registers 5
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/RdlSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "webcallback"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 127
    return-object p0

    .line 128
    :catch_8
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
