.class Lcom/duoku/platform/download/DownloadService$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/DownloadService;)V
    .registers 3

    .prologue
    .line 394
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    .line 395
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 572
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    monitor-enter v1

    .line 574
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$14(Lcom/duoku/platform/download/DownloadService;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 576
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadService;->access$1(Lcom/duoku/platform/download/DownloadService;Z)V

    .line 579
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadService;->access$13(Lcom/duoku/platform/download/DownloadService;)Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->connect()V

    .line 572
    :cond_1a
    monitor-exit v1

    .line 582
    return-void

    .line 572
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private a(J)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 592
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 593
    if-nez v0, :cond_15

    .line 595
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get alarm manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_14
    return-void

    .line 604
    :cond_15
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/duoku/platform/download/Constants;->ACTION_RETRY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/duoku/platform/download/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v2}, Lcom/baidu/bdgame/sdk/obf/nu;->a()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 401
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # invokes: Lcom/duoku/platform/download/DownloadService;->trimDatabase()V
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$4(Lcom/duoku/platform/download/DownloadService;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # invokes: Lcom/duoku/platform/download/DownloadService;->removeSpuriousFiles()V
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$5(Lcom/duoku/platform/download/DownloadService;)V

    .line 406
    const/4 v4, 0x0

    .line 409
    const-wide v2, 0x7fffffffffffffffL

    .line 412
    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    monitor-enter v5

    .line 414
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    iget-object v6, v6, Lcom/duoku/platform/download/DownloadService;->mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_33

    .line 416
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "multiple UpdateThreads in DownloadService"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :catchall_30
    move-exception v2

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_30

    throw v2

    .line 418
    :cond_33
    :try_start_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mPendingUpdate:Z
    invoke-static {v6}, Lcom/duoku/platform/download/DownloadService;->access$6(Lcom/duoku/platform/download/DownloadService;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 420
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/duoku/platform/download/DownloadService;->mUpdateThread:Lcom/duoku/platform/download/DownloadService$c;

    .line 421
    if-nez v4, :cond_4d

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadService;->stopSelf()V

    .line 425
    :cond_4d
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v2, v6

    if-eqz v4, :cond_5b

    .line 427
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/download/DownloadService$c;->a(J)V

    .line 429
    :cond_5b
    monitor-exit v5

    return-void

    .line 431
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/duoku/platform/download/DownloadService;->access$7(Lcom/duoku/platform/download/DownloadService;Z)V

    .line 412
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_33 .. :try_end_66} :catchall_30

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadService;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v2}, Lcom/baidu/bdgame/sdk/obf/nu;->a()J

    move-result-wide v12

    .line 435
    const/4 v11, 0x0

    .line 436
    const/4 v10, 0x0

    .line 437
    const-wide v8, 0x7fffffffffffffffL

    .line 438
    new-instance v14, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$8(Lcom/duoku/platform/download/DownloadService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 441
    if-nez v15, :cond_a0

    move-wide v2, v8

    move v4, v10

    .line 443
    goto/16 :goto_19

    .line 447
    :cond_a0
    :try_start_a0
    new-instance v16, Lcom/duoku/platform/download/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v15}, Lcom/duoku/platform/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 448
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 449
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move v3, v11

    move-wide v4, v8

    move v6, v10

    :goto_bb
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_be
    .catchall {:try_start_a0 .. :try_end_be} :catchall_170

    move-result v2

    if-eqz v2, :cond_10a

    .line 487
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 489
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_186

    .line 497
    if-nez v3, :cond_e6

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$8(Lcom/duoku/platform/download/DownloadService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_199

    :cond_e6
    move v2, v3

    move v3, v6

    .line 511
    :goto_e8
    if-eqz v2, :cond_1af

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/duoku/platform/download/DownloadService$c;->a()V

    .line 523
    :goto_ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$8(Lcom/duoku/platform/download/DownloadService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_fd
    :goto_fd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1bc

    move-wide/from16 v18, v4

    move v4, v3

    move-wide/from16 v2, v18

    .line 410
    goto/16 :goto_19

    .line 451
    :cond_10a
    :try_start_10a
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 452
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$8(Lcom/duoku/platform/download/DownloadService;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/download/DownloadInfo;

    .line 454
    if-eqz v2, :cond_162

    .line 456
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    move-object/from16 v0, v16

    # invokes: Lcom/duoku/platform/download/DownloadService;->updateDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;Lcom/duoku/platform/download/DownloadInfo;J)V
    invoke-static {v7, v0, v2, v12, v13}, Lcom/duoku/platform/download/DownloadService;->access$9(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo$Reader;Lcom/duoku/platform/download/DownloadInfo;J)V

    .line 463
    :goto_134
    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->shouldScanFile()Z

    move-result v7

    if-eqz v7, :cond_224

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/4 v8, 0x1

    const/4 v9, 0x0

    # invokes: Lcom/duoku/platform/download/DownloadService;->scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z
    invoke-static {v7, v2, v8, v9}, Lcom/duoku/platform/download/DownloadService;->access$11(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo;ZZ)Z

    move-result v7

    if-nez v7, :cond_224

    .line 465
    const/4 v3, 0x1

    .line 466
    const/4 v6, 0x1

    move v7, v3

    .line 468
    :goto_149
    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->hasCompletionNotification()Z

    move-result v3

    if-eqz v3, :cond_150

    .line 470
    const/4 v6, 0x1

    .line 472
    :cond_150
    invoke-virtual {v2, v12, v13}, Lcom/duoku/platform/download/DownloadInfo;->nextAction(J)J

    move-result-wide v2

    .line 473
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_175

    .line 475
    const/4 v2, 0x1

    .line 449
    :goto_15b
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v7

    move v6, v2

    goto/16 :goto_bb

    .line 460
    :cond_162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    move-object/from16 v0, v16

    # invokes: Lcom/duoku/platform/download/DownloadService;->insertDownload(Lcom/duoku/platform/download/DownloadInfo$Reader;J)Lcom/duoku/platform/download/DownloadInfo;
    invoke-static {v2, v0, v12, v13}, Lcom/duoku/platform/download/DownloadService;->access$10(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo$Reader;J)Lcom/duoku/platform/download/DownloadInfo;

    move-result-object v2

    .line 461
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V
    :try_end_16f
    .catchall {:try_start_10a .. :try_end_16f} :catchall_170

    goto :goto_134

    .line 486
    :catchall_170
    move-exception v2

    .line 487
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 488
    throw v2

    .line 477
    :cond_175
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_221

    cmp-long v8, v2, v4

    if-gez v8, :cond_221

    .line 479
    const/4 v4, 0x1

    move-wide/from16 v18, v2

    move v2, v4

    move-wide/from16 v4, v18

    .line 481
    goto :goto_15b

    .line 489
    :cond_186
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 491
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    # invokes: Lcom/duoku/platform/download/DownloadService;->deleteDownload(J)V
    invoke-static {v8, v10, v11}, Lcom/duoku/platform/download/DownloadService;->access$12(Lcom/duoku/platform/download/DownloadService;J)V

    goto/16 :goto_c8

    .line 499
    :cond_199
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/download/DownloadInfo;

    .line 501
    iget-boolean v8, v2, Lcom/duoku/platform/download/DownloadInfo;->mDeleted:Z

    if-eqz v8, :cond_e0

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 503
    const/4 v2, 0x1

    .line 504
    const/4 v3, 0x1

    .line 505
    goto/16 :goto_e8

    .line 517
    :cond_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    # getter for: Lcom/duoku/platform/download/DownloadService;->mMediaScannerConnection:Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;
    invoke-static {v2}, Lcom/duoku/platform/download/DownloadService;->access$13(Lcom/duoku/platform/download/DownloadService;)Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadService$MyMediaScannerConnection;->disconnectMediaScanner()V

    goto/16 :goto_ed

    .line 523
    :cond_1bc
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/download/DownloadInfo;

    .line 525
    iget-boolean v7, v2, Lcom/duoku/platform/download/DownloadInfo;->mDeleted:Z

    if-eqz v7, :cond_fd

    .line 530
    iget-object v7, v2, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1fb

    .line 532
    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->shouldScanFile()Z

    move-result v7

    if-eqz v7, :cond_1e8

    .line 537
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    # invokes: Lcom/duoku/platform/download/DownloadService;->scanFile(Lcom/duoku/platform/download/DownloadInfo;ZZ)Z
    invoke-static {v7, v2, v8, v9}, Lcom/duoku/platform/download/DownloadService;->access$11(Lcom/duoku/platform/download/DownloadService;Lcom/duoku/platform/download/DownloadInfo;ZZ)Z

    move-result v2

    if-nez v2, :cond_fd

    .line 539
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "scanFile failed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v7}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-wide v8, v2, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    iget-object v10, v2, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/duoku/platform/download/Helpers;->deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fd

    .line 557
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v7}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, v2, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/duoku/platform/download/DownloadService$c;->a:Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v7}, Lcom/duoku/platform/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-wide v8, v2, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    iget-object v10, v2, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v2}, Lcom/duoku/platform/download/Helpers;->deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_fd

    :cond_221
    move v2, v6

    goto/16 :goto_15b

    :cond_224
    move v7, v3

    goto/16 :goto_149
.end method
