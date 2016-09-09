.class public Lmobisocial/omlib/sendable/JsonSendable;
.super Ljava/lang/Object;
.source "JsonSendable.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/Sendable;


# static fields
.field public static final KEY_NOTIFY:Ljava/lang/String; = "notify"

.field public static final KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final SENDABLE:Ljava/lang/String; = "Sendable"


# instance fields
.field protected final mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBody:Lorg/json/JSONObject;

.field protected mMsgId:[B

.field protected final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lmobisocial/omlib/sendable/JsonSendable;->mType:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mAttachments:Ljava/util/List;

    .line 48
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mMsgId:[B

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "body"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lmobisocial/omlib/sendable/JsonSendable;->mType:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mAttachments:Ljava/util/List;

    .line 55
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mMsgId:[B

    .line 56
    return-void
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "attachmentHash"    # Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .prologue
    .line 84
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlib/sendable/JsonSendable;->mAttachments:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p2, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "b64Hash":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 87
    iget-object v2, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    :cond_19
    iget-object v2, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 92
    return-void

    .line 89
    .end local v0    # "b64Hash":Ljava/lang/String;
    :catch_1f
    move-exception v1

    .line 90
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAttachments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getBody()[B
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBodyAsJson()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mMsgId:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lmobisocial/omlib/sendable/JsonSendable;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setId([B)V
    .registers 2
    .param p1, "id"    # [B

    .prologue
    .line 69
    iput-object p1, p0, Lmobisocial/omlib/sendable/JsonSendable;->mMsgId:[B

    .line 70
    return-void
.end method

.method public setJsonMetadata(Lorg/json/JSONObject;)Lmobisocial/omlib/sendable/JsonSendable;
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    if-nez p1, :cond_a

    .line 104
    :try_start_2
    iget-object v1, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "json"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    :goto_9
    return-object p0

    .line 106
    :cond_a
    iget-object v1, p0, Lmobisocial/omlib/sendable/JsonSendable;->mBody:Lorg/json/JSONObject;

    const-string v2, "json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_9

    .line 109
    :catch_16
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
