.class public Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;
.super Lmobisocial/omlib/jobs/BaseJobWithBlob;
.source "UploadFeedProfilePictureJob.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "FEED_PROFILE_PIC"


# instance fields
.field public feed:Lmobisocial/longdan/LDProtocols$LDFeed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lmobisocial/omlib/jobs/BaseJobWithBlob;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string v0, "FEED_PROFILE_PIC"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 21
    const-wide v0, 0x492559f64fL

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;-><init>()V

    .line 41
    .local v0, "req":Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;
    iget-object v1, p0, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;->blobRefObj:Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    iget-object v1, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;->BlobLinkString:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;->blobRefObj:Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    iget-object v1, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;->DecryptedHash:[B

    .line 43
    iget-object v1, p0, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDSetFeedThumbnailRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 44
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 45
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;->perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 31
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 5
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 50
    return-void
.end method
