.class Lmobisocial/omlib/service/OmlibService$11$1;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibService$11;->createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/db/DatabaseCallable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/service/OmlibService$11;

.field final synthetic val$kind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService$11;Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlib/service/OmlibService$11;

    .prologue
    .line 422
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$11$1;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iput-object p2, p0, Lmobisocial/omlib/service/OmlibService$11$1;->val$kind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lmobisocial/omlib/db/OMSQLiteHelper;)Landroid/net/Uri;
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 426
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11$1;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iget-object v1, v1, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v2, p0, Lmobisocial/omlib/service/OmlibService$11$1;->val$kind:Lmobisocial/omlib/api/OmletFeedApi$FeedKind;

    invoke-virtual {v1, v2, p1}, Lmobisocial/omlib/client/ClientFeedUtils;->createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;Lmobisocial/omlib/db/OMSQLiteHelper;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v0

    .line 427
    .local v0, "dbfeed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$11$1;->this$1:Lmobisocial/omlib/service/OmlibService$11;

    iget-object v1, v1, Lmobisocial/omlib/service/OmlibService$11;->this$0:Lmobisocial/omlib/service/OmlibService;

    iget-wide v2, v0, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v1, v2, v3}, Lmobisocial/omlib/model/OmletModel$Feeds;->uriForFeed(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lmobisocial/omlib/service/OmlibService$11$1;->call(Lmobisocial/omlib/db/OMSQLiteHelper;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
