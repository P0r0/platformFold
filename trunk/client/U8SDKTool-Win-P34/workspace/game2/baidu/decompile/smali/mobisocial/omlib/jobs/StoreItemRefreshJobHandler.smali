.class public Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;
.super Ljava/lang/Object;
.source "StoreItemRefreshJobHandler.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/client/interfaces/DurableJobHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "STORE_ITEM"


# instance fields
.field private mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;


# direct methods
.method public constructor <init>(Lmobisocial/longdan/LDProtocols$LDItemId;)V
    .registers 2
    .param p1, "itemId"    # Lmobisocial/longdan/LDProtocols$LDItemId;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    .line 29
    return-void
.end method

.method private setInfo(Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;Lmobisocial/omlib/db/entity/OMSticker;Ljava/lang/String;)V
    .registers 9
    .param p1, "stickerPackInfo"    # Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;
    .param p2, "sticker"    # Lmobisocial/omlib/db/entity/OMSticker;
    .param p3, "stickerJson"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 104
    iput-object p3, p2, Lmobisocial/omlib/db/entity/OMSticker;->json:Ljava/lang/String;

    .line 105
    iget-object v2, p1, Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;->UserMutableContainer:Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutableContainer;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutableContainer;->StickerPackInfoUserMutable:Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;

    iget-object v1, v2, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->Tags:Ljava/util/List;

    .line 106
    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_31

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "tag":Ljava/lang/String;
    const-string v3, "chattable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 109
    iput-boolean v4, p2, Lmobisocial/omlib/db/entity/OMSticker;->chattable:Z

    goto :goto_f

    .line 110
    :cond_26
    const-string v3, "placeable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 111
    iput-boolean v4, p2, Lmobisocial/omlib/db/entity/OMSticker;->placeable:Z

    goto :goto_f

    .line 115
    .end local v0    # "tag":Ljava/lang/String;
    :cond_31
    iput-boolean v4, p2, Lmobisocial/omlib/db/entity/OMSticker;->chattable:Z

    .line 116
    iput-boolean v4, p2, Lmobisocial/omlib/db/entity/OMSticker;->placeable:Z

    .line 118
    :cond_35
    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "STORE_ITEM"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDItemId;->ItemType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDGetItemInfoRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDGetItemInfoRequest;-><init>()V

    .line 53
    .local v0, "getItemInfoRequest":Lmobisocial/longdan/LDProtocols$LDGetItemInfoRequest;
    iget-object v1, p0, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDGetItemInfoRequest;->ItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    .line 54
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    const-class v2, Lmobisocial/longdan/LDProtocols$LDGetItemInfoResponse;

    invoke-virtual {v1, v0, v2}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    return-object v1
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 43
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 26
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 59
    move-object/from16 v14, p2

    check-cast v14, Lmobisocial/longdan/LDProtocols$LDGetItemInfoResponse;

    .line 60
    .local v14, "response":Lmobisocial/longdan/LDProtocols$LDGetItemInfoResponse;
    const-string v3, "StickerPack"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDItemId;->ItemType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->mItemId:Lmobisocial/longdan/LDProtocols$LDItemId;

    invoke-static {v3}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v13

    .line 63
    .local v13, "key":[B
    const-class v3, Lmobisocial/omlib/db/entity/OMSticker;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v13}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v10

    check-cast v10, Lmobisocial/omlib/db/entity/OMSticker;

    .line 64
    .local v10, "dbSticker":Lmobisocial/omlib/db/entity/OMSticker;
    iget-object v3, v14, Lmobisocial/longdan/LDProtocols$LDGetItemInfoResponse;->ItemInfoContainer:Lmobisocial/longdan/LDProtocols$LDItemInfoContainer;

    iget-object v0, v3, Lmobisocial/longdan/LDProtocols$LDItemInfoContainer;->StickerPackInfo:Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;

    move-object/from16 v18, v0

    .line 65
    .local v18, "stickerPackInfo":Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;
    invoke-static/range {v18 .. v18}, Lmobisocial/serialization/SerializationUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, "stickerJson":Ljava/lang/String;
    :try_start_2e
    move-object/from16 v0, v18

    iget-object v3, v0, Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;->UserMutableContainer:Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutableContainer;

    iget-object v12, v3, Lmobisocial/longdan/LDProtocols$LDItemInfoUserMutableContainer;->StickerPackInfoUserMutable:Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;

    .line 69
    .local v12, "info":Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;
    iget-object v3, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->Stickers:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmobisocial/longdan/LDProtocols$LDSticker;

    .line 70
    .local v16, "sticker":Lmobisocial/longdan/LDProtocols$LDSticker;
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v0, v16

    iget-object v6, v0, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailBlobLinkString:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailDecryptedHash:[B

    const-string v8, "image/png"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    move-result-object v19

    .line 71
    .local v19, "thumbnailHash":[B
    iget-object v3, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->PortraitPreviewPackLink:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 72
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->PortraitPreviewPackLink:Ljava/lang/String;

    iget-object v7, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->PortraitEncryptedPreviewHash:[B

    const-string v8, "image/png"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    .line 73
    :cond_6a
    iget-object v3, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->LandscapePreviewPackLink:Ljava/lang/String;

    if-eqz v3, :cond_80

    .line 74
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->LandscapePreviewPackLink:Ljava/lang/String;

    iget-object v7, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->LandscapeEncryptedPreviewHash:[B

    const-string v8, "image/png"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    .line 75
    :cond_80
    iget-object v3, v12, Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;->Stickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_86
    :goto_86
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmobisocial/longdan/LDProtocols$LDSticker;

    .line 76
    .local v15, "s":Lmobisocial/longdan/LDProtocols$LDSticker;
    iget-object v3, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailBlobLinkString:Ljava/lang/String;

    if-eqz v3, :cond_a8

    .line 77
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailBlobLinkString:Ljava/lang/String;

    iget-object v7, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->ThumbnailDecryptedHash:[B

    const-string v8, "image/png"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B

    .line 79
    :cond_a8
    iget-object v3, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->FullsizeBlobLinkString:Ljava/lang/String;

    if-eqz v3, :cond_86

    .line 80
    move-object/from16 v0, p1

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->FullsizeBlobLinkString:Ljava/lang/String;

    iget-object v7, v15, Lmobisocial/longdan/LDProtocols$LDSticker;->FullsizeDecryptedHash:[B

    const-string v8, "image/png"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v9}, Lmobisocial/omlib/client/ClientBlobUtils;->ensurePermanentBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Long;)[B
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_be} :catch_bf

    goto :goto_86

    .line 83
    .end local v12    # "info":Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;
    .end local v15    # "s":Lmobisocial/longdan/LDProtocols$LDSticker;
    .end local v16    # "sticker":Lmobisocial/longdan/LDProtocols$LDSticker;
    .end local v19    # "thumbnailHash":[B
    :catch_bf
    move-exception v11

    .line 84
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "Omlib-job"

    const-string v4, "Failed to get sticker in pack"

    invoke-static {v3, v4, v11}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v10    # "dbSticker":Lmobisocial/omlib/db/entity/OMSticker;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "key":[B
    .end local v17    # "stickerJson":Ljava/lang/String;
    .end local v18    # "stickerPackInfo":Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;
    :cond_c7
    :goto_c7
    return-void

    .line 87
    .restart local v10    # "dbSticker":Lmobisocial/omlib/db/entity/OMSticker;
    .restart local v12    # "info":Lmobisocial/longdan/LDProtocols$LDStickerPackInfoUserMutable;
    .restart local v13    # "key":[B
    .restart local v16    # "sticker":Lmobisocial/longdan/LDProtocols$LDSticker;
    .restart local v17    # "stickerJson":Ljava/lang/String;
    .restart local v18    # "stickerPackInfo":Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;
    .restart local v19    # "thumbnailHash":[B
    :cond_c8
    if-nez v10, :cond_e4

    .line 88
    new-instance v10, Lmobisocial/omlib/db/entity/OMSticker;

    .end local v10    # "dbSticker":Lmobisocial/omlib/db/entity/OMSticker;
    invoke-direct {v10}, Lmobisocial/omlib/db/entity/OMSticker;-><init>()V

    .line 89
    .restart local v10    # "dbSticker":Lmobisocial/omlib/db/entity/OMSticker;
    iput-object v13, v10, Lmobisocial/omlib/db/entity/OMSticker;->itemId:[B

    .line 90
    move-object/from16 v0, v19

    iput-object v0, v10, Lmobisocial/omlib/db/entity/OMSticker;->thumbnailHash:[B

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->setInfo(Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;Lmobisocial/omlib/db/entity/OMSticker;Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_c7

    .line 94
    :cond_e4
    iget-object v3, v10, Lmobisocial/omlib/db/entity/OMSticker;->thumbnailHash:[B

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v3, v10, Lmobisocial/omlib/db/entity/OMSticker;->json:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c7

    .line 95
    :cond_f8
    move-object/from16 v0, v19

    iput-object v0, v10, Lmobisocial/omlib/db/entity/OMSticker;->thumbnailHash:[B

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;->setInfo(Lmobisocial/longdan/LDProtocols$LDStickerPackInfo;Lmobisocial/omlib/db/entity/OMSticker;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_c7
.end method
