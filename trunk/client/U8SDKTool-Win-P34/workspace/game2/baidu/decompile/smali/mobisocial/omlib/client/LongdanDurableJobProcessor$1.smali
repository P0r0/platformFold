.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

.field final synthetic val$frontOfSlice:Z

.field final synthetic val$job:Lmobisocial/omlib/client/interfaces/DurableJobHandler;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;Z)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    .prologue
    .line 108
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->val$job:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    iput-boolean p3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->val$frontOfSlice:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 112
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->val$job:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    iget-boolean v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$1;->val$frontOfSlice:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleFromDbThread(Lmobisocial/omlib/client/interfaces/DurableJobHandler;ZLmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 113
    return-void
.end method
