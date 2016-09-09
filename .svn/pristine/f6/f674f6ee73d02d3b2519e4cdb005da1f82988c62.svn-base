.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

.field final synthetic val$error:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    .prologue
    .line 286
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    iput-object p3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 290
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    if-eqz v0, :cond_73

    .line 291
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    instance-of v0, v0, Lmobisocial/longdan/exception/LongdanException;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    check-cast v0, Lmobisocial/longdan/exception/LongdanException;

    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 292
    const-string v0, "Omlib-jobs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temporary job failure for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    invoke-interface {v2}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getJobType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->rescheduleJob()V

    .line 304
    :goto_3d
    return-void

    .line 295
    :cond_3e
    const-class v0, Lmobisocial/omlib/db/entity/OMDurableJob;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-wide v2, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->recordId:J

    invoke-virtual {p1, v0, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Ljava/lang/Class;J)Z

    .line 296
    const-string v0, "Omlib-jobs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permanent job failure for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    invoke-interface {v2}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getJobType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$error:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->completeJob()V

    goto :goto_3d

    .line 300
    :cond_73
    const-class v0, Lmobisocial/omlib/db/entity/OMDurableJob;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-wide v2, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->recordId:J

    invoke-virtual {p1, v0, v2, v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Ljava/lang/Class;J)Z

    .line 301
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$200(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, p2}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->requestComplete(Lmobisocial/omlib/client/LongdanClient;Ljava/lang/Object;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 302
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;->this$1:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->completeJob()V

    goto :goto_3d
.end method
