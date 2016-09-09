.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLeaks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    .line 371
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 372
    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 4
    .param p1, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 389
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 390
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 391
    return-void
.end method

.method static synthetic access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    return-object v0
.end method

.method static forgetActivity()V
    .registers 3

    .prologue
    .line 381
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 384
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    return-void

    .line 381
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .line 382
    .restart local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_6
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 3
    .param p0, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 375
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 376
    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 395
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v9, "leaks":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 402
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_25

    .line 404
    move-object v1, v3

    .local v1, "array":[Ljava/io/File;
    array-length v10, v3

    .local v10, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_19
    if-lt v8, v10, :cond_34

    .line 436
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    .end local v1    # "array":[Ljava/io/File;
    .end local v8    # "i":I
    .end local v10    # "length":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void

    .line 405
    .restart local v1    # "array":[Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    :cond_34
    aget-object v7, v1, v8

    .line 406
    .local v7, "heapDumpFile":Ljava/io/File;
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 407
    .local v13, "resultFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 409
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_40} :catch_70
    .catchall {:try_start_3b .. :try_end_40} :catchall_93

    .line 410
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_40
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 411
    .local v11, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/leakcanary/HeapDump;

    .line 412
    .local v6, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/leakcanary/AnalysisResult;

    .line 413
    .local v12, "result":Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    invoke-direct {v14, v6, v12}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_59} :catch_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_59} :catch_a4
    .catchall {:try_start_40 .. :try_end_59} :catchall_a1

    .line 422
    if-eqz v5, :cond_aa

    .line 424
    :try_start_5b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_9a

    move-object v4, v5

    .line 429
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_5f
    :goto_5f
    if-eqz v4, :cond_64

    .line 431
    :try_start_61
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_9f

    .line 404
    :cond_64
    :goto_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 415
    :catch_67
    move-exception v14

    .line 422
    :goto_68
    if-eqz v4, :cond_5f

    .line 424
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_5f

    .line 426
    :catch_6e
    move-exception v14

    goto :goto_5f

    .line 416
    :catch_70
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_71
    :try_start_71
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 418
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 419
    const-string v14, "DisplayLeakActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Could not read result file, deleted result and heap dump:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Lcom/squareup/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_93

    .line 422
    if-eqz v4, :cond_5f

    .line 424
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_5f

    .line 426
    :catch_91
    move-exception v14

    goto :goto_5f

    .line 421
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_93
    move-exception v14

    .line 422
    :goto_94
    if-eqz v4, :cond_99

    .line 424
    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9d

    .line 428
    :cond_99
    :goto_99
    throw v14

    .line 426
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_9a
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5f

    .end local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_9d
    move-exception v15

    goto :goto_99

    .line 433
    :catch_9f
    move-exception v14

    goto :goto_64

    .line 421
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_a1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_94

    .line 416
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_a4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_71

    .line 415
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_a7
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_68

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_aa
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5f
.end method
