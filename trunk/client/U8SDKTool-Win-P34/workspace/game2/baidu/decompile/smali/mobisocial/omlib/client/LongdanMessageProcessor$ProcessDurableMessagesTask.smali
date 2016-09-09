.class Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessDurableMessagesTask"
.end annotation


# instance fields
.field final mActiveProcessors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field final mCompletionRunnable:Ljava/lang/Runnable;

.field final mJobId:I

.field final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;"
        }
    .end annotation
.end field

.field final mReceipts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    const/4 v1, 0x0

    .line 425
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    .line 426
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mMessages:Ljava/util/List;

    .line 427
    iput-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mReceipts:Ljava/util/List;

    .line 428
    iput-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mCompletionRunnable:Ljava/lang/Runnable;

    .line 429
    sget v0, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    iput v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mJobId:I

    .line 430
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    .local p3, "receipts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;>;"
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    .line 433
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mMessages:Ljava/util/List;

    .line 434
    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mReceipts:Ljava/util/List;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mCompletionRunnable:Ljava/lang/Runnable;

    .line 436
    sget v0, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    iput v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mJobId:I

    .line 437
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;
    .param p4, "completionRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    .local p3, "receipts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;>;"
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    .line 440
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mMessages:Ljava/util/List;

    .line 441
    iput-object p3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mReceipts:Ljava/util/List;

    .line 442
    iput-object p4, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mCompletionRunnable:Ljava/lang/Runnable;

    .line 443
    sget v0, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmobisocial/omlib/client/LongdanMessageProcessor;->sJobCount:I

    iput v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mJobId:I

    .line 444
    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 29
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDiposed:Z
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$400(Lmobisocial/omlib/client/LongdanMessageProcessor;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 449
    const-string v4, "Omlib-processor"

    const-string v5, "Message processor has been stopped, voiding request."

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :goto_11
    return-void

    .line 452
    :cond_12
    sget-object v4, Lmobisocial/omlib/client/LongdanMessageProcessor;->sActiveProcessDurableMessagesTask:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    if-eqz v4, :cond_1e

    .line 453
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot stack multiple durable message requests in a single transaction"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    :cond_1e
    const/16 v24, 0x0

    .line 456
    .local v24, "toReprocess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    sput-object p0, Lmobisocial/omlib/client/LongdanMessageProcessor;->sActiveProcessDurableMessagesTask:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    .line 458
    const/16 v20, 0x0

    .line 459
    .local v20, "i":I
    :try_start_24
    new-instance v9, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    invoke-direct {v9}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;-><init>()V

    .line 460
    .local v9, "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_31
    :goto_31
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobisocial/longdan/LDProtocols$LDMessage;

    .line 461
    .local v8, "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mReceipts:Ljava/util/List;

    if-eqz v4, :cond_4f

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mReceipts:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    check-cast v9, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;

    .line 463
    .restart local v9    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v5, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v5}, Lmobisocial/omlib/client/ClientFeedUtils;->getOrCreateFeed(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/longdan/LDProtocols$LDFeed;)Lmobisocial/omlib/db/entity/OMFeed;

    move-result-object v7

    .line 464
    .local v7, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    iget-object v4, v9, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->hashForSend:Ljava/lang/Long;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v4, v7}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->shouldProcessMessage(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/longdan/LDProtocols$LDMessage;Ljava/lang/Long;Lmobisocial/omlib/db/entity/OMFeed;)Lmobisocial/omlib/db/entity/OMMessage;

    move-result-object v22

    .line 465
    .local v22, "record":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v22, :cond_96

    .line 466
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_31

    .line 467
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not processing message of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_24 .. :try_end_90} :catchall_91

    goto :goto_31

    .line 535
    .end local v7    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v8    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .end local v9    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    .end local v22    # "record":Lmobisocial/omlib/db/entity/OMMessage;
    :catchall_91
    move-exception v4

    const/4 v5, 0x0

    sput-object v5, Lmobisocial/omlib/client/LongdanMessageProcessor;->sActiveProcessDurableMessagesTask:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    throw v4

    .line 470
    .restart local v7    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .restart local v8    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .restart local v9    # "receipt":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    .restart local v22    # "record":Lmobisocial/omlib/db/entity/OMMessage;
    :cond_96
    :try_start_96
    move-object/from16 v0, v22

    iput-object v0, v9, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;->databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/client/LongdanClient;->getMessageProcessor()Lmobisocial/omlib/client/LongdanMessageProcessor;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lmobisocial/omlib/db/entity/OMMessage;->feedIdTypedId:[B

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/LongdanMessageProcessor;->getMessagesRequiringDependency([B)Ljava/util/ArrayList;

    move-result-object v18

    .line 472
    .local v18, "deferred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    if-eqz v18, :cond_b4

    .line 473
    if-nez v24, :cond_12e

    .line 474
    move-object/from16 v24, v18

    .line 479
    :cond_b4
    :goto_b4
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x2

    if-gt v4, v5, :cond_d5

    .line 480
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_d5
    iget-object v4, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->getProcessorForType(Ljava/lang/String;)Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

    move-result-object v3

    .line 482
    .local v3, "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    if-eqz v3, :cond_fd

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_96 .. :try_end_e6} :catchall_91

    move-result v4

    if-nez v4, :cond_fd

    .line 484
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;->beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f6} :catch_137
    .catchall {:try_start_e9 .. :try_end_f6} :catchall_91

    .line 488
    :goto_f6
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_fd
    if-eqz v3, :cond_1c1

    .line 491
    iget-object v4, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    if-nez v4, :cond_157

    .line 492
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_157

    .line 493
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_31

    .line 494
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing owner for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 476
    .end local v3    # "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :cond_12e
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b4

    .line 485
    .restart local v3    # "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :catch_137
    move-exception v19

    .line 486
    .local v19, "e":Ljava/lang/Exception;
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processor exception in beginBatch for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_156
    .catchall {:try_start_f6 .. :try_end_156} :catchall_91

    goto :goto_f6

    .line 499
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_157
    :try_start_157
    iget-object v4, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    if-eqz v4, :cond_195

    iget-object v4, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Deleted:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v3 .. v9}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;->processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_172} :catch_174
    .catchall {:try_start_157 .. :try_end_172} :catchall_91

    goto/16 :goto_31

    .line 505
    :catch_174
    move-exception v19

    .line 506
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_175
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processor exception in processing message for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_193
    .catchall {:try_start_175 .. :try_end_193} :catchall_91

    goto/16 :goto_31

    .line 502
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_195
    :try_start_195
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v5, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Owner:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v5, v0, v1, v6}, Lmobisocial/omlib/client/ClientIdentityUtils;->ensureAccountInTransaction(Ljava/lang/String;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Z)Lmobisocial/omlib/db/entity/OMAccount;

    move-result-object v15

    .line 503
    .local v15, "sender":Lmobisocial/omlib/db/entity/OMAccount;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v11

    move-object v10, v3

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-interface/range {v10 .. v17}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;->processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1bf} :catch_174
    .catchall {:try_start_195 .. :try_end_1bf} :catchall_91

    goto/16 :goto_31

    .line 509
    .end local v15    # "sender":Lmobisocial/omlib/db/entity/OMAccount;
    :cond_1c1
    :try_start_1c1
    sget v4, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_31

    .line 510
    const-string v4, "Omlib-processor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not handling msg of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v8, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDTypedId;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 513
    .end local v3    # "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    .end local v7    # "feed":Lmobisocial/omlib/db/entity/OMFeed;
    .end local v8    # "msg":Lmobisocial/longdan/LDProtocols$LDMessage;
    .end local v18    # "deferred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    .end local v22    # "record":Lmobisocial/omlib/db/entity/OMMessage;
    :cond_1e4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1ec
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_215

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :try_end_1f8
    .catchall {:try_start_1c1 .. :try_end_1f8} :catchall_91

    .line 515
    .local v21, "p":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :try_start_1f8
    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v5}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v5, v1, v2}, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;->endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_209} :catch_20a
    .catchall {:try_start_1f8 .. :try_end_209} :catchall_91

    goto :goto_1ec

    .line 516
    :catch_20a
    move-exception v19

    .line 517
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_20b
    const-string v5, "Omlib-processor"

    const-string v6, "Processor exception in endBatch"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ec

    .line 520
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v21    # "p":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :cond_215
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mActiveProcessors:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mCompletionRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_22b

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->mCompletionRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V

    .line 524
    :cond_22b
    if-eqz v24, :cond_23d

    .line 525
    move-object/from16 v23, v24

    .line 526
    .local v23, "reprocess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    new-instance v4, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask$1;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lmobisocial/omlib/db/PostCommit;->add(Ljava/lang/Runnable;)V
    :try_end_23d
    .catchall {:try_start_20b .. :try_end_23d} :catchall_91

    .line 535
    .end local v23    # "reprocess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobisocial/longdan/LDProtocols$LDMessage;>;"
    :cond_23d
    const/4 v4, 0x0

    sput-object v4, Lmobisocial/omlib/client/LongdanMessageProcessor;->sActiveProcessDurableMessagesTask:Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;

    goto/16 :goto_11
.end method

.method shouldProcessMessage(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/longdan/LDProtocols$LDMessage;Ljava/lang/Long;Lmobisocial/omlib/db/entity/OMFeed;)Lmobisocial/omlib/db/entity/OMMessage;
    .registers 13
    .param p1, "dbh"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "msg"    # Lmobisocial/longdan/LDProtocols$LDMessage;
    .param p3, "hashForSend"    # Ljava/lang/Long;
    .param p4, "linkedFeed"    # Lmobisocial/omlib/db/entity/OMFeed;

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Feed:Lmobisocial/omlib/client/ClientFeedUtils;

    iget-object v4, p2, Lmobisocial/longdan/LDProtocols$LDMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    iget-object v5, p2, Lmobisocial/longdan/LDProtocols$LDMessage;->Id:Lmobisocial/longdan/LDProtocols$LDTypedId;

    invoke-virtual {v3, v4, v5}, Lmobisocial/omlib/client/ClientFeedUtils;->makeFeedIdTypedId(Lmobisocial/longdan/LDProtocols$LDFeed;Lmobisocial/longdan/LDProtocols$LDTypedId;)[B

    move-result-object v0

    .line 545
    .local v0, "key":[B
    const-class v3, Lmobisocial/omlib/db/entity/OMMessage;

    invoke-virtual {p1, v3, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMMessage;

    .line 546
    .local v1, "omMsg":Lmobisocial/omlib/db/entity/OMMessage;
    if-nez v1, :cond_31

    .line 547
    new-instance v1, Lmobisocial/omlib/db/entity/OMMessage;

    .end local v1    # "omMsg":Lmobisocial/omlib/db/entity/OMMessage;
    invoke-direct {v1}, Lmobisocial/omlib/db/entity/OMMessage;-><init>()V

    .line 548
    .restart local v1    # "omMsg":Lmobisocial/omlib/db/entity/OMMessage;
    iput-object v0, v1, Lmobisocial/omlib/db/entity/OMMessage;->feedIdTypedId:[B

    .line 549
    iget-wide v2, p4, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    iput-wide v2, v1, Lmobisocial/omlib/db/entity/OMMessage;->feedId:J

    .line 550
    iget-wide v2, p2, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    iput-wide v2, v1, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    .line 551
    iput-object p3, v1, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    .line 552
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    move-object v2, v1

    .line 568
    :cond_30
    :goto_30
    return-object v2

    .line 555
    :cond_31
    if-nez p3, :cond_5e

    .line 556
    iget-wide v4, v1, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    iget-wide v6, p2, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_30

    .line 559
    iget-wide v4, p2, Lmobisocial/longdan/LDProtocols$LDMessage;->Timestamp:J

    iput-wide v4, v1, Lmobisocial/omlib/db/entity/OMMessage;->timestamp:J

    .line 560
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 561
    iget-object v3, v1, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    iget-wide v4, v1, Lmobisocial/omlib/db/entity/OMMessage;->id:J

    iget-object v6, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$ProcessDurableMessagesTask;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v6}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v6

    iget-object v6, v6, Lmobisocial/omlib/client/LongdanClient;->Messaging:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-virtual {v6, p2}, Lmobisocial/omlib/client/ClientMessagingUtils;->getHashForSend(Lmobisocial/longdan/LDProtocols$LDMessage;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lmobisocial/omlib/client/LongdanMessageProcessor;->isMessagePending(JJ)Z

    move-result v3

    if-nez v3, :cond_30

    :cond_5c
    :goto_5c
    move-object v2, v1

    .line 568
    goto :goto_30

    .line 565
    :cond_5e
    iput-object p3, v1, Lmobisocial/omlib/db/entity/OMMessage;->lastHashForSend:Ljava/lang/Long;

    .line 566
    invoke-virtual {p1, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->updateObject(Lmobisocial/omlib/db/util/OMBase;)V

    goto :goto_5c
.end method
