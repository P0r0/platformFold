.class public Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;
.super Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;
.source "LikeMessageOverwriteJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "like-overwrite"


# instance fields
.field public aggregateLike:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "agg"
    .end annotation
.end field

.field public ignoreExisting:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field public referenceObjId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refId"
    .end annotation
.end field

.field public tally:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tally"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;-><init>()V

    .line 85
    return-void
.end method

.method private makeLikeBody(JJ)[B
    .registers 8
    .param p1, "likeCount"    # J
    .param p3, "aggregateCount"    # J

    .prologue
    .line 79
    new-instance v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;-><init>(Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$1;)V

    .line 80
    .local v0, "obj":Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;->tally:Ljava/lang/Long;

    .line 81
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler$LikeObj;->aggregate:Ljava/lang/Long;

    .line 82
    invoke-static {v0}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v1

    return-object v1
.end method

.method private makeLikeKey(Lmobisocial/longdan/LDProtocols$LDTypedId;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDTypedId;
    .registers 7
    .param p1, "refId"    # Lmobisocial/longdan/LDProtocols$LDTypedId;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDMessage;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDMessage;-><init>()V

    .line 96
    .local v1, "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    iput-object p2, v1, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    .line 97
    iput-object p1, v1, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 98
    invoke-static {v1}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v0

    .line 99
    .local v0, "id":[B
    new-instance v2, Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-direct {v2}, Lmobisocial/longdan/LDProtocols$LDTypedId;-><init>()V

    .line 100
    .local v2, "tid":Lmobisocial/longdan/LDProtocols$LDTypedId;
    iput-object v0, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Id:[B

    .line 101
    const-string v3, "like"

    iput-object v3, v2, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    .line 102
    return-object v2
.end method


# virtual methods
.method public getJobType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, "like-overwrite"

    return-object v0
.end method

.method public onReconstitutedRequest()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method populateRequest(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 16
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 54
    const-class v8, Lmobisocial/omlib/db/entity/OMObject;

    iget-wide v10, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->referenceObjId:J

    invoke-virtual {p2, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v6

    check-cast v6, Lmobisocial/omlib/db/entity/OMObject;

    .line 55
    .local v6, "obj":Lmobisocial/omlib/db/entity/OMObject;
    if-eqz v6, :cond_10

    iget-object v8, v6, Lmobisocial/omlib/db/entity/OMObject;->messageId:Ljava/lang/Long;

    if-nez v8, :cond_18

    .line 56
    :cond_10
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Referenced object does not exist"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 59
    :cond_18
    iget-boolean v8, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->ignoreExisting:Z

    if-nez v8, :cond_7b

    iget-object v8, v6, Lmobisocial/omlib/db/entity/OMObject;->encodedLikes:[B

    if-eqz v8, :cond_7b

    .line 60
    iget-object v8, v6, Lmobisocial/omlib/db/entity/OMObject;->encodedLikes:[B

    invoke-static {v8}, Lmobisocial/omlib/helper/LikeEncoder;->decode([B)Ljava/util/Map;

    move-result-object v1

    .line 65
    .local v1, "existingLikes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_26
    const-class v8, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v9, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v9}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMAccount;

    .line 66
    .local v4, "me":Lmobisocial/omlib/db/entity/OMAccount;
    iget-object v8, v4, Lmobisocial/omlib/db/entity/OMAccount;->id:Ljava/lang/Long;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 67
    .local v0, "existingCount":Ljava/lang/Long;
    if-nez v0, :cond_44

    .line 68
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 69
    :cond_44
    const-class v8, Lmobisocial/omlib/db/entity/OMMessage;

    iget-object v9, v6, Lmobisocial/omlib/db/entity/OMObject;->messageId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p2, v8, v10, v11}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v5

    check-cast v5, Lmobisocial/omlib/db/entity/OMMessage;

    .line 70
    .local v5, "msg":Lmobisocial/omlib/db/entity/OMMessage;
    iget-object v8, v5, Lmobisocial/omlib/db/entity/OMMessage;->feedIdTypedId:[B

    invoke-static {v8}, Lmobisocial/omlib/client/ClientFeedUtils;->decodeMessageKey([B)Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;

    move-result-object v3

    .line 71
    .local v3, "key":Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;
    iget-object v7, v3, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 72
    .local v7, "refId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    iget-object v2, v3, Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 73
    .local v2, "feed":Lmobisocial/longdan/LDProtocols$LDFeed;
    iput-object v2, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v10, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->tally:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->makeLikeBody(JJ)[B

    move-result-object v8

    iput-object v8, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->body:[B

    .line 75
    iget-object v8, p1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v8}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->makeLikeKey(Lmobisocial/longdan/LDProtocols$LDTypedId;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDTypedId;

    move-result-object v8

    iput-object v8, p0, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->messageId:Lmobisocial/longdan/LDProtocols$LDTypedId;

    .line 76
    return-void

    .line 62
    .end local v0    # "existingCount":Ljava/lang/Long;
    .end local v1    # "existingLikes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2    # "feed":Lmobisocial/longdan/LDProtocols$LDFeed;
    .end local v3    # "key":Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;
    .end local v4    # "me":Lmobisocial/omlib/db/entity/OMAccount;
    .end local v5    # "msg":Lmobisocial/omlib/db/entity/OMMessage;
    .end local v7    # "refId":Lmobisocial/longdan/LDProtocols$LDTypedId;
    :cond_7b
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .restart local v1    # "existingLikes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    goto :goto_26
.end method

.method public requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 4
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p3, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;->populateRequest(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;->requestAboutToBeScheduled(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 46
    return-void
.end method
