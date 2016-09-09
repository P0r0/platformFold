.class public Lmobisocial/omlib/sendable/CustomSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "CustomSendable.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "+"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom type must have prefix \'+\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_13
    return-void
.end method


# virtual methods
.method public setAttachmentUri(Landroid/net/Uri;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 6
    .param p1, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "fileUrl"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 88
    return-object p0

    .line 89
    :catch_c
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCallback(Ljava/lang/String;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 5
    .param p1, "callback"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "callback"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 74
    return-object p0

    .line 75
    :catch_8
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "json"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 41
    return-object p0

    .line 42
    :catch_8
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/JsonSendable;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lmobisocial/omlib/sendable/CustomSendable;->setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/CustomSendable;

    move-result-object v0

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 5
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "mimeType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 65
    return-object p0

    .line 66
    :catch_8
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPayload([B)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 6
    .param p1, "payload"    # [B

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "payload"

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 56
    return-object p0

    .line 57
    :catch_d
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setText(Ljava/lang/String;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 29
    return-object p0

    .line 30
    :catch_8
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lmobisocial/omlib/sendable/CustomSendable;
    .registers 5
    .param p1, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_a

    .line 102
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "thumbnailUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    :goto_9
    return-object p0

    .line 105
    :cond_a
    :try_start_a
    iget-object v1, p0, Lmobisocial/omlib/sendable/CustomSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "thumbnailUrl"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_9

    .line 106
    :catch_12
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
