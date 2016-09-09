.class Lmobisocial/omlib/service/OmlibService$11$3;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibService$11;->acceptInvitationForFeed(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/service/OmlibService$11;

.field final synthetic val$req:Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;

.field final synthetic val$result:[Lmobisocial/omlib/db/entity/OMFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService$11;[Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/service/OmlibService$11;

    .prologue
    .line 492
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$11$3;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iput-object p2, p0, Lmobisocial/omlib/service/OmlibService$11$3;->val$result:[Lmobisocial/omlib/db/entity/OMFeed;

    iput-object p3, p0, Lmobisocial/omlib/service/OmlibService$11$3;->val$req:Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 496
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$11$3;->val$result:[Lmobisocial/omlib/db/entity/OMFeed;

    const/4 v1, 0x0

    iget-object v2, p0, Lmobisocial/omlib/service/OmlibService$11$3;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iget-object v2, v2, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v2}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$11$3;->val$req:Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDJoinFeedRequest;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v2, p1, p2, v3}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v2

    aput-object v2, v0, v1

    .line 497
    return-void
.end method
