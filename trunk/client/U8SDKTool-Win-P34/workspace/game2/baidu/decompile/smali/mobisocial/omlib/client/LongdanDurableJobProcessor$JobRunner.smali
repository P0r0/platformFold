.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanDurableJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobRunner"
.end annotation


# instance fields
.field mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

.field final mSliceId:J

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p2, "sliceId"    # J

    .prologue
    .line 244
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-wide p2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mSliceId:J

    .line 246
    return-void
.end method


# virtual methods
.method completeJob()V
    .registers 11

    .prologue
    .line 309
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    monitor-enter v6

    .line 310
    :try_start_3
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    sget-object v7, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Done:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v7, v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 311
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_39

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "nextJob":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v6, v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v6

    .line 314
    :try_start_10
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    invoke-interface {v5}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getSlice()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 315
    .local v4, "slice":Ljava/lang/Long;
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 316
    .local v3, "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_3c

    .line 317
    :cond_2e
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "Slice queue was voided while executing job"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    .end local v3    # "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    .end local v4    # "slice":Ljava/lang/Long;
    :catchall_36
    move-exception v5

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v5

    .line 311
    .end local v2    # "nextJob":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v5

    .line 320
    .restart local v2    # "nextJob":Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
    .restart local v3    # "pending":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    .restart local v4    # "slice":Ljava/lang/Long;
    :cond_3c
    :try_start_3c
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->removeFirstOccurrence(Ljava/lang/Object;)Z

    .line 321
    :goto_41
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_5a

    .line 322
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    move-object v2, v0

    .line 323
    iget-object v5, v2, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    sget-object v7, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Done:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    if-ne v5, v7, :cond_5a

    .line 324
    const/4 v2, 0x0

    .line 325
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_41

    .line 330
    :cond_5a
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_67

    .line 331
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_67
    monitor-exit v6
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_36

    .line 334
    if-eqz v2, :cond_78

    .line 335
    iget-object v5, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    new-instance v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;

    iget-object v7, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-wide v8, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mSliceId:J

    invoke-direct {v6, v7, v8, v9}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;J)V

    # invokes: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeSafely(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$300(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Ljava/lang/Runnable;)V

    .line 337
    :cond_78
    return-void
.end method

.method rescheduleJob()V
    .registers 5

    .prologue
    .line 340
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    monitor-enter v2

    .line 341
    :try_start_3
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    sget-object v3, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Waiting:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v3, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 342
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 343
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget v0, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->backoff:I

    .line 344
    .local v0, "backoff":I
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    mul-int/lit8 v2, v0, 0x2

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->backoff:I

    .line 345
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    # invokes: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->scheduleSafely(Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;ILjava/util/concurrent/TimeUnit;)V
    invoke-static {v1, p0, v0, v2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$400(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;ILjava/util/concurrent/TimeUnit;)V

    .line 346
    return-void

    .line 342
    .end local v0    # "backoff":I
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public run()V
    .registers 11

    .prologue
    .line 250
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z
    invoke-static {v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$100(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 251
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    monitor-enter v7

    .line 252
    :goto_b
    :try_start_b
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z
    invoke-static {v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$100(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_22

    move-result v6

    if-nez v6, :cond_25

    .line 254
    :try_start_13
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    goto :goto_b

    .line 255
    :catch_19
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v6, "Omlib-jobs"

    const-string v8, "Job loading interrupted"

    invoke-static {v6, v8, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 259
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_22
    move-exception v6

    monitor-exit v7
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v6

    :cond_25
    :try_start_25
    monitor-exit v7
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 261
    :cond_26
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v7, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    monitor-enter v7

    .line 262
    :try_start_2b
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mScheduledJobQueues:Ljava/util/Map;

    iget-wide v8, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mSliceId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 263
    .local v2, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 264
    :cond_43
    const-string v6, "Omlib-jobs"

    const-string v8, "Scheduled a worker slice that has no jobs."

    invoke-static {v6, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    monitor-exit v7

    .line 306
    :goto_4b
    return-void

    .line 267
    :cond_4c
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iput-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    .line 268
    monitor-exit v7
    :try_end_55
    .catchall {:try_start_2b .. :try_end_55} :catchall_74

    .line 269
    iget-object v7, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    monitor-enter v7

    .line 270
    :try_start_58
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    sget-object v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Running:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    if-eq v6, v8, :cond_68

    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    sget-object v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Done:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    if-ne v6, v8, :cond_77

    .line 271
    :cond_68
    const-string v6, "Omlib-jobs"

    const-string v8, "Job handled by another runner."

    invoke-static {v6, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    monitor-exit v7

    goto :goto_4b

    .line 275
    :catchall_71
    move-exception v6

    monitor-exit v7
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_71

    throw v6

    .line 268
    .end local v2    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    :catchall_74
    move-exception v6

    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v6

    .line 274
    .restart local v2    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;>;"
    :cond_77
    :try_start_77
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    sget-object v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Running:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v8, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 275
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_71

    .line 276
    const-string v6, "Omlib-jobs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running job "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v8, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    invoke-interface {v8}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getJobType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " on slice "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v8, v8, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    invoke-interface {v8}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->getSlice()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v5, 0x0

    .line 278
    .local v5, "tempResult":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 280
    .local v4, "tempError":Ljava/lang/Exception;
    :try_start_b2
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->mJob:Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    iget-object v7, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v7}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$200(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v7

    invoke-interface {v6, v7}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->perform(Lmobisocial/omlib/client/LongdanClient;)Ljava/lang/Object;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bf} :catch_d2

    move-result-object v5

    move-object v3, v5

    .line 285
    .end local v5    # "tempResult":Ljava/lang/Object;
    .local v3, "result":Ljava/lang/Object;
    .local v3, "tempResult":Ljava/lang/Object;
    :goto_c1
    move-object v1, v4

    .line 286
    .local v1, "error":Ljava/lang/Exception;
    iget-object v6, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v6}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$200(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v6

    new-instance v7, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;

    invoke-direct {v7, p0, v1, v3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner$1;-><init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobRunner;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lmobisocial/omlib/client/LongdanClient;->runOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseRunnable;)V

    goto/16 :goto_4b

    .line 281
    .end local v1    # "error":Ljava/lang/Exception;
    .end local v3    # "tempResult":Ljava/lang/Object;
    .restart local v5    # "tempResult":Ljava/lang/Object;
    :catch_d2
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    move-object v4, v0

    move-object v3, v5

    .end local v5    # "tempResult":Ljava/lang/Object;
    .local v3, "tempResult":Ljava/lang/Object;
    goto :goto_c1
.end method
