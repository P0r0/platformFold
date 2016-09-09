.class public Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;
.super Lmobisocial/omlib/jobs/BaseJobWithBlob;
.source "UploadUserProfilePictureJob.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "USER_PROFILE_BLOB"


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
    .line 23
    const-string v0, "USER_PROFILE_BLOB"

    return-object v0
.end method

.method public getSlice()J
    .registers 3

    .prologue
    .line 18
    const-string v0, "USER_PROFILE_BLOB"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    .registers 8
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/longdan/exception/LongdanException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDSetProfilePictureRequest;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDSetProfilePictureRequest;-><init>()V

    .line 43
    .local v2, "setProfilePictureRequest":Lmobisocial/longdan/LDProtocols$LDSetProfilePictureRequest;
    iget-object v3, p0, Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;->blobRefObj:Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    iget-object v3, v3, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Source:Ljava/lang/String;

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDSetProfilePictureRequest;->BlobLinkString:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v3

    const-class v4, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .line 45
    .local v1, "r":Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDSimpleResponse;->Value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    .local v0, "profileVersion":Ljava/lang/Long;
    return-object v0
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 28
    const-class v1, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v2, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v2}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 29
    .local v0, "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_19

    .line 30
    iget-object v1, p0, Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;->blobRefObj:Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    iget-object v1, v1, Lmobisocial/longdan/LDObjects$BlobReferenceObj;->Hash:[B

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMAccount;->thumbnailHash:[B

    .line 31
    invoke-virtual {p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 33
    :cond_19
    return-void
.end method

.method public requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 11
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p4, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 51
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    .line 52
    .local v1, "profileVersion":Ljava/lang/Long;
    if-nez v1, :cond_6

    .line 60
    :cond_5
    :goto_5
    return-void

    .line 54
    :cond_6
    const-class v2, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v3, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v3}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 55
    .local v0, "myAccount":Lmobisocial/omlib/db/entity/OMAccount;
    if-eqz v0, :cond_5

    .line 57
    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 58
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v2

    new-instance v3, Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;

    invoke-direct {v3}, Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3, p4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    goto :goto_5
.end method
