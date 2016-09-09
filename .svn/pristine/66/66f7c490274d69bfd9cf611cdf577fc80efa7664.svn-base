.class public Lmobisocial/omlib/sendable/PictureSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "PictureSendable.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "picture"


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .registers 6
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 19
    const-string v1, "picture"

    invoke-direct {p0, v1}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 21
    :try_start_5
    iget-object v1, p0, Lmobisocial/omlib/sendable/PictureSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "_imageUrl"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_10} :catch_11

    .line 25
    return-void

    .line 22
    :catch_11
    move-exception v0

    .line 23
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
