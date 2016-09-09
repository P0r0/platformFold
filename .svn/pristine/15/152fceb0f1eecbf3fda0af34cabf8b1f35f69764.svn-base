.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    .prologue
    .line 392
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 397
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$200(Lmobisocial/omlib/client/LongdanDurableJobProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v13

    .line 398
    .local v13, "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    const-string v9, "_id asc"

    .line 399
    .local v9, "orderBy":Ljava/lang/String;
    invoke-virtual {v13}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "durableJob"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 400
    .local v10, "c":Landroid/database/Cursor;
    const-class v2, Lmobisocial/omlib/db/entity/OMDurableJob;

    invoke-virtual {v13, v2, v10}, Lmobisocial/omlib/db/OMSQLiteHelper;->getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v12

    .line 401
    .local v12, "cr":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<Lmobisocial/omlib/db/entity/OMDurableJob;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 402
    .local v11, "count":I
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v21, "jobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v16, "handlers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    new-instance v20, Lmobisocial/omlib/db/entity/OMDurableJob;

    invoke-direct/range {v20 .. v20}, Lmobisocial/omlib/db/entity/OMDurableJob;-><init>()V

    .line 405
    .local v20, "job":Lmobisocial/omlib/db/entity/OMDurableJob;
    :cond_3a
    :goto_3a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 406
    move-object/from16 v0, v20

    invoke-virtual {v12, v10, v0}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;Lmobisocial/omlib/db/util/OMBase;)V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_72

    .line 408
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->reconstituteRequest(Lmobisocial/omlib/db/entity/OMDurableJob;)Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    move-result-object v15

    .line 409
    .local v15, "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    invoke-interface {v15}, Lmobisocial/omlib/client/interfaces/DurableJobHandler;->onReconstitutedRequest()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 410
    move-object/from16 v0, v20

    iget-object v2, v0, Lmobisocial/omlib/db/entity/OMDurableJob;->id:Ljava/lang/Long;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_63} :catch_64
    .catchall {:try_start_45 .. :try_end_63} :catchall_72

    goto :goto_3a

    .line 413
    .end local v15    # "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    :catch_64
    move-exception v14

    .line 414
    .local v14, "e":Ljava/lang/Exception;
    :try_start_65
    const-string v2, "Omlib-jobs"

    const-string v3, "Failed to reconstitute job"

    invoke-static {v2, v3, v14}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_72

    goto :goto_3a

    .line 426
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "count":I
    .end local v12    # "cr":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<Lmobisocial/omlib/db/entity/OMDurableJob;>;"
    .end local v13    # "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "handlers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    .end local v20    # "job":Lmobisocial/omlib/db/entity/OMDurableJob;
    .end local v21    # "jobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_72
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    monitor-enter v3

    .line 427
    :try_start_78
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    const/4 v5, 0x1

    # setter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z
    invoke-static {v4, v5}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$102(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Z)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_78 .. :try_end_88} :catchall_d5

    throw v2

    .line 418
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "count":I
    .restart local v12    # "cr":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<Lmobisocial/omlib/db/entity/OMDurableJob;>;"
    .restart local v13    # "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    .restart local v16    # "handlers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    .restart local v20    # "job":Lmobisocial/omlib/db/entity/OMDurableJob;
    .restart local v21    # "jobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_89
    :try_start_89
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-object/from16 v0, v16

    # invokes: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->reconstituteSendingProgress(Ljava/util/List;)V
    invoke-static {v2, v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$500(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Ljava/util/List;)V

    .line 420
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_97
    move/from16 v0, v17

    if-ge v0, v11, :cond_bc

    .line 421
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 422
    .local v18, "jid":J
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    .line 423
    .restart local v15    # "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    const/4 v3, 0x0

    move-wide/from16 v0, v18

    # invokes: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->executeJob(Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V
    invoke-static {v2, v15, v0, v1, v3}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$600(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;JZ)V
    :try_end_b9
    .catchall {:try_start_89 .. :try_end_b9} :catchall_72

    .line 420
    add-int/lit8 v17, v17, 0x1

    goto :goto_97

    .line 426
    .end local v15    # "h":Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .end local v18    # "jid":J
    :cond_bc
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    monitor-enter v3

    .line 427
    :try_start_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    const/4 v4, 0x1

    # setter for: Lmobisocial/omlib/client/LongdanDurableJobProcessor;->mInitialized:Z
    invoke-static {v2, v4}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->access$102(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Z)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v3

    .line 431
    return-void

    .line 429
    :catchall_d2
    move-exception v2

    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_c1 .. :try_end_d4} :catchall_d2

    throw v2

    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "count":I
    .end local v12    # "cr":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<Lmobisocial/omlib/db/entity/OMDurableJob;>;"
    .end local v13    # "dbh":Lmobisocial/omlib/db/OMSQLiteHelper;
    .end local v16    # "handlers":Ljava/util/List;, "Ljava/util/List<Lmobisocial/omlib/client/interfaces/DurableJobHandler;>;"
    .end local v17    # "i":I
    .end local v20    # "job":Lmobisocial/omlib/db/entity/OMDurableJob;
    .end local v21    # "jobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_d5
    move-exception v2

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v2
.end method
