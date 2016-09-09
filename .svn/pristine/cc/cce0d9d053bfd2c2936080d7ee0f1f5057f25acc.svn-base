.class Lmobisocial/omlib/client/ClientFeedUtils$5;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->removeMemberFromFeed(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 345
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$5;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$5;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientFeedUtils$5;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 9
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 349
    const-class v0, Lmobisocial/omlib/db/entity/OMFeedMember;

    const-string v1, "feedId=? AND accountId=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$5;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-wide v4, v4, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmobisocial/omlib/client/ClientFeedUtils$5;->val$account:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 350
    return-void
.end method
