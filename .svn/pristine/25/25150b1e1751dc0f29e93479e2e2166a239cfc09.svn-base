.class Lmobisocial/omlib/client/ClientFeedUtils$4;
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

.field final synthetic val$feed:Lmobisocial/omlib/db/entity/OMFeed;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;Lmobisocial/omlib/db/entity/OMFeed;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 333
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$4;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$4;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 337
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lmobisocial/omlib/client/ClientFeedUtils$4;->val$feed:Lmobisocial/omlib/db/entity/OMFeed;

    iget-wide v2, v2, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 338
    .local v0, "feedIdArg":[Ljava/lang/String;
    const-class v1, Lmobisocial/omlib/db/entity/OMMessage;

    const-string v2, "feedId=?"

    invoke-virtual {p1, v1, v2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 339
    const-class v1, Lmobisocial/omlib/db/entity/OMObject;

    const-string v2, "feedId=?"

    invoke-virtual {p1, v1, v2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 340
    const-class v1, Lmobisocial/omlib/db/entity/OMFeedMember;

    const-string v2, "feedId=?"

    invoke-virtual {p1, v1, v2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 341
    const-class v1, Lmobisocial/omlib/db/entity/OMFeed;

    const-string v2, "_id=?"

    invoke-virtual {p1, v1, v2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 342
    return-void
.end method
