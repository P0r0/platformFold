.class Lmobisocial/omlib/client/ClientFeedUtils$7;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->markFeedRead(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$feedId:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 633
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$7;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-wide p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$7;->val$feedId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 637
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    iget-wide v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$7;->val$feedId:J

    invoke-virtual {p1, v1, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMFeed;

    .line 638
    .local v0, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_11

    .line 639
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$7;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-virtual {v1, v0, p1, p2}, Lmobisocial/omlib/client/ClientFeedUtils;->markFeedReadFromProcessorThread(Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 641
    :cond_11
    return-void
.end method
