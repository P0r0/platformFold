.class Lmobisocial/omlib/client/ClientFeedUtils$6;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->getPublicChat(Ljava/lang/String;)Lmobisocial/omlib/db/entity/OMFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feed:[Lmobisocial/omlib/db/entity/OMFeed;

.field final synthetic val$feedKey:Lmobisocial/longdan/LDProtocols$LDFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDFeed;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 411
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feed:[Lmobisocial/omlib/db/entity/OMFeed;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feedKey:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 11
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v5, 0x0

    .line 415
    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feed:[Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v1

    const-class v3, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feedKey:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v1, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    aput-object v1, v2, v5

    .line 416
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feed:[Lmobisocial/omlib/db/entity/OMFeed;

    aget-object v1, v1, v5

    if-nez v1, :cond_46

    .line 417
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feed:[Lmobisocial/omlib/db/entity/OMFeed;

    new-instance v0, Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {v0}, Lmobisocial/omlib/db/entity/OMFeed;-><init>()V

    aput-object v0, v1, v5

    .line 418
    .local v0, "f":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feedKey:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v1}, Lmobisocial/longdan/LDProtocols$LDFeed;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->identifier:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$6;->val$feedKey:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDFeed;->Kind:Ljava/lang/String;

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMFeed;->kind:Ljava/lang/String;

    .line 420
    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    sub-long/2addr v4, v6

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->newestFromService:J

    .line 421
    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 423
    .end local v0    # "f":Lmobisocial/omlib/db/entity/OMFeed;
    :cond_46
    return-void
.end method
