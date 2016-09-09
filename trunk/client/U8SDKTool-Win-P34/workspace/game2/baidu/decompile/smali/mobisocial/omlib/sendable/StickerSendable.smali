.class public Lmobisocial/omlib/sendable/StickerSendable;
.super Lmobisocial/omlib/sendable/JsonSendable;
.source "StickerSendable.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sticker"


# direct methods
.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDSticker;Landroid/content/Context;)V
    .registers 12
    .param p1, "sticker"    # Lmobisocial/longdan/LDProtocols$LDSticker;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v6, "sticker"

    invoke-direct {p0, v6}, Lmobisocial/omlib/sendable/JsonSendable;-><init>(Ljava/lang/String;)V

    .line 20
    :try_start_5
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "uuid"

    iget-object v8, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->Id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "fullSizeWidth"

    iget v8, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->Width:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "fullSizeHeight"

    iget v8, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->Height:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "customName"

    iget-object v8, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-static {p2}, Lmobisocial/omlib/service/LongdanClientHelper;->getInstance(Landroid/content/Context;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    .line 25
    .local v0, "client":Lmobisocial/omlib/client/LongdanClient;
    iget-object v6, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v7, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailBlobLinkString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v4

    .line 26
    .local v4, "thumbnailHash":[B
    iget-object v6, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v7, p1, Lmobisocial/longdan/LDProtocols$LDSticker;->FullsizeBlobLinkString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B

    move-result-object v2

    .line 27
    .local v2, "fullsizeHash":[B
    new-instance v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-direct {v5}, Lmobisocial/longdan/LDObjects$BlobReferenceObj;-><init>()V

    .line 28
    .local v5, "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iput-object v4, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    .line 29
    const-string v6, "image/png"

    iput-object v6, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 30
    const-string v6, "sticker"

    iput-object v6, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->PushType:Ljava/lang/String;

    .line 31
    sget-object v6, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    iput-object v6, v5, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 32
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mAttachments:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v3, Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    invoke-direct {v3}, Lmobisocial/longdan/LDObjects$BlobReferenceObj;-><init>()V

    .line 34
    .local v3, "fullsizeRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    iput-object v2, v3, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    .line 35
    const-string v6, "image/png"

    iput-object v6, v3, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->MimeType:Ljava/lang/String;

    .line 36
    sget-object v6, Lmobisocial/omlib/client/ClientBlobUtils;->THUMBNAIL_CATEGORY:Ljava/lang/String;

    iput-object v6, v3, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Category:Ljava/lang/String;

    .line 37
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mAttachments:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "fullSizeHash"

    const/4 v8, 0x2

    invoke-static {v2, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v6, p0, Lmobisocial/omlib/sendable/StickerSendable;->mBody:Lorg/json/JSONObject;

    const-string v7, "thumbnailHash"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_81} :catch_82

    .line 43
    return-void

    .line 40
    .end local v0    # "client":Lmobisocial/omlib/client/LongdanClient;
    .end local v2    # "fullsizeHash":[B
    .end local v3    # "fullsizeRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    .end local v4    # "thumbnailHash":[B
    .end local v5    # "thumbnailRef":Lmobisocial/longdan/LDObjects$BlobReferenceObj;
    :catch_82
    move-exception v1

    .line 41
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
