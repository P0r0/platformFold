.class Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;
.super Ljava/lang/Object;
.source "LongdanBlobDownloadProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    .prologue
    .line 322
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, "blobHashWrapped":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 328
    .local v13, "pbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 329
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 330
    const-string v20, "Omlib-blobs"

    const-string v22, "No blobs remaining in download queue."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    monitor-exit v21

    .line 425
    :goto_2d
    return-void

    .line 333
    :cond_2e
    const/4 v8, 0x0

    .line 334
    .local v8, "earliestHash":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 335
    .local v9, "earliestPbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 336
    .local v12, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 337
    .local v14, "now":J
    :cond_44
    :goto_44
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_ae

    .line 338
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v5, v0

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mPendingRequests:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;

    move-object v13, v0

    .line 340
    if-nez v13, :cond_97

    .line 341
    const-string v20, "Omlib-blobs"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not interested in blob "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-interface {v12}, Ljava/util/ListIterator;->remove()V

    goto :goto_44

    .line 364
    .end local v8    # "earliestHash":Ljava/nio/ByteBuffer;
    .end local v9    # "earliestPbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .end local v12    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "now":J
    :catchall_94
    move-exception v20

    monitor-exit v21
    :try_end_96
    .catchall {:try_start_f .. :try_end_96} :catchall_94

    throw v20

    .line 345
    .restart local v8    # "earliestHash":Ljava/nio/ByteBuffer;
    .restart local v9    # "earliestPbr":Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;
    .restart local v12    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/nio/ByteBuffer;>;"
    .restart local v14    # "now":J
    :cond_97
    :try_start_97
    iget-wide v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v20, v22, v24

    if-eqz v20, :cond_a9

    iget-wide v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v22, v14

    if-gez v20, :cond_cf

    .line 347
    :cond_a9
    const/4 v8, 0x0

    .line 348
    const/4 v9, 0x0

    .line 349
    invoke-interface {v12}, Ljava/util/ListIterator;->remove()V

    .line 359
    :cond_ae
    if-eqz v8, :cond_c3

    .line 360
    move-object v5, v8

    .line 361
    move-object v13, v9

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mRequestQueue:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 364
    :cond_c3
    monitor-exit v21
    :try_end_c4
    .catchall {:try_start_97 .. :try_end_c4} :catchall_94

    .line 365
    if-nez v13, :cond_e1

    .line 366
    const-string v20, "Omlib-blobs"

    const-string v21, "No blob to download."

    invoke-static/range {v20 .. v21}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 352
    :cond_cf
    if-eqz v9, :cond_dd

    :try_start_d1
    iget-wide v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v22, v0

    iget-wide v0, v9, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v24, v0
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_94

    cmp-long v20, v22, v24

    if-gez v20, :cond_44

    .line 354
    :cond_dd
    move-object v8, v5

    .line 355
    move-object v9, v13

    goto/16 :goto_44

    .line 369
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v20, v0

    iget-object v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v10

    .line 370
    .local v10, "existing":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_10c

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->completeDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    invoke-static {v0, v5, v13, v10}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$100(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V

    goto/16 :goto_2d

    .line 374
    :cond_10c
    iget-wide v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_16a

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$200(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 376
    :goto_121
    :try_start_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mNetworkUnavailable:Z
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$300(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Z
    :try_end_12a
    .catchall {:try_start_121 .. :try_end_12a} :catchall_1bf

    move-result v20

    if-eqz v20, :cond_13d

    .line 378
    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$200(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->wait()V
    :try_end_13a
    .catch Ljava/lang/InterruptedException; {:try_start_12d .. :try_end_13a} :catch_13b
    .catchall {:try_start_12d .. :try_end_13a} :catchall_1bf

    goto :goto_121

    .line 379
    :catch_13b
    move-exception v20

    goto :goto_121

    .line 383
    :cond_13d
    :try_start_13d
    const-string v20, "Omlib-blobs"

    const-string v22, "Waiting for blob backoff..."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-wide v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->eligibleTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v18, v22, v24

    .line 385
    .local v18, "waitTime":J
    const-wide/16 v22, 0x0

    cmp-long v20, v18, v22

    if-lez v20, :cond_169

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mBackoffLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$200(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_169
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_169} :catch_29d
    .catchall {:try_start_13d .. :try_end_169} :catchall_1bf

    .line 390
    .end local v18    # "waitTime":J
    :cond_169
    :goto_169
    :try_start_169
    monitor-exit v21
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_1bf

    .line 392
    :cond_16a
    sget v20, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_194

    .line 393
    const-string v20, "Omlib-blobs"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Attempting to download "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmobisocial/omlib/model/OmletModel$Blobs;->bytesToHex([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    move-object/from16 v20, v0

    iget-object v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmobisocial/omlib/client/ClientBlobUtils;->getStoragePathForBlobWithHash([B)Ljava/io/File;

    move-result-object v10

    .line 395
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1c2

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->completeDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    invoke-static {v0, v5, v13, v10}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$100(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V

    goto/16 :goto_2d

    .line 390
    :catchall_1bf
    move-exception v20

    :try_start_1c0
    monitor-exit v21
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1bf

    throw v20

    .line 399
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    # getter for: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$000(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v6

    .line 400
    .local v6, "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    const-class v20, Lmobisocial/omlib/db/entity/OMBlob;

    iget-object v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->blobHash:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/db/entity/OMBlob;

    .line 401
    .local v4, "blob":Lmobisocial/omlib/db/entity/OMBlob;
    if-nez v4, :cond_1ef

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobSourceNotAvailable(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, v5}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$400(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2d

    .line 405
    :cond_1ef
    const-string v20, "%s=%d"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "blobId"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    iget-object v0, v4, Lmobisocial/omlib/db/entity/OMBlob;->id:Ljava/lang/Long;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 406
    .local v16, "query":Ljava/lang/String;
    const-class v20, Lmobisocial/omlib/db/entity/OMBlobSource;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 407
    .local v17, "sources":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMBlobSource;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_228

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobSourceNotAvailable(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, v5}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$400(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;)V

    goto/16 :goto_2d

    .line 412
    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    iget-object v0, v13, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;->mCancellation:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->downloadBlobFromSources(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;
    invoke-static {v0, v13, v1, v2}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$500(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/util/Collection;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$CancellationSignalSet;)Ljava/io/File;

    move-result-object v11

    .line 413
    .local v11, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->completeDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    invoke-static {v0, v5, v13, v11}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$100(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Ljava/io/File;)V
    :try_end_247
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_228 .. :try_end_247} :catch_249
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_247} :catch_27b

    goto/16 :goto_2d

    .line 414
    .end local v11    # "file":Ljava/io/File;
    :catch_249
    move-exception v7

    .line 415
    .local v7, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v20, "Omlib-blobs"

    const-string v21, "Blob download failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    invoke-virtual {v7}, Lmobisocial/longdan/exception/LongdanException;->isPermanentError()Z

    move-result v20

    if-nez v20, :cond_26e

    invoke-virtual {v7}, Lmobisocial/longdan/exception/LongdanException;->isUserError()Z

    move-result v20

    if-nez v20, :cond_26e

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->rescheduleFailedDownload(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;)V
    invoke-static {v0, v5, v13}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$600(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;)V

    goto/16 :goto_2d

    .line 419
    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobDownloadFailed(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v0, v5, v13, v7}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$700(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V

    goto/16 :goto_2d

    .line 421
    .end local v7    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_27b
    move-exception v7

    .line 422
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "Omlib-blobs"

    const-string v21, "Unknown exception during blob download"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$6;->this$0:Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-object/from16 v20, v0

    new-instance v21, Lmobisocial/longdan/exception/LongdanClientException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lmobisocial/longdan/exception/LongdanClientException;-><init>(Ljava/lang/Exception;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    # invokes: Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->blobDownloadFailed(Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V
    invoke-static {v0, v5, v13, v1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->access$700(Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;Ljava/nio/ByteBuffer;Lmobisocial/omlib/client/LongdanBlobDownloadProcessor$PendingBlobDownloadRequest;Lmobisocial/longdan/exception/LongdanException;)V

    goto/16 :goto_2d

    .line 388
    .end local v4    # "blob":Lmobisocial/omlib/db/entity/OMBlob;
    .end local v6    # "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "query":Ljava/lang/String;
    .end local v17    # "sources":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/db/entity/OMBlobSource;>;"
    :catch_29d
    move-exception v20

    goto/16 :goto_169
.end method
