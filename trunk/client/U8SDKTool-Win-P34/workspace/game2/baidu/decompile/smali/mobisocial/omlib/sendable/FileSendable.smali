.class public Lmobisocial/omlib/sendable/FileSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "FileSendable.java"


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v1, "file"

    invoke-direct {p0, v1}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 17
    :try_start_5
    iget-object v1, p0, Lmobisocial/omlib/sendable/FileSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "fileUrl"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lmobisocial/omlib/sendable/FileSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "mimeType"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    .line 22
    return-void

    .line 19
    :catch_18
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
