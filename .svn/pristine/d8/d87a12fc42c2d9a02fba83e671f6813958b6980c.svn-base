.class public Lmobisocial/omlib/sendable/TextSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "TextSendable.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v1, "text"

    invoke-direct {p0, v1}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lmobisocial/omlib/sendable/TextSendable;->mText:Ljava/lang/String;

    .line 20
    :try_start_7
    iget-object v1, p0, Lmobisocial/omlib/sendable/TextSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_f

    .line 24
    return-void

    .line 21
    :catch_f
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlib/sendable/TextSendable;->mText:Ljava/lang/String;

    return-object v0
.end method
