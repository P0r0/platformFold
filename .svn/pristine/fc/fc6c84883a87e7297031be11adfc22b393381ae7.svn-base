.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    .line 2324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 2327
    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;
    invoke-static {}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$8()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_19

    .line 2328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    new-instance v16, Ljava/lang/Exception;

    const-string v17, "\u4e0a\u4e00\u6b21\u7684\u4e0b\u8f7d\u4efb\u52a1\u6b63\u5728\u8fdb\u884c\u4e2d"

    invoke-direct/range {v16 .. v17}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 2402
    :goto_18
    return-void

    .line 2331
    :cond_19
    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;
    invoke-static {}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$8()Ljava/lang/Boolean;

    move-result-object v16

    monitor-enter v16

    .line 2332
    :try_start_1e
    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;
    invoke-static {}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$8()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_3d

    .line 2333
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    new-instance v17, Ljava/lang/Exception;

    const-string v18, "\u4e0a\u4e00\u6b21\u7684\u4e0b\u8f7d\u4efb\u52a1\u6b63\u5728\u8fdb\u884c\u4e2d"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 2334
    monitor-exit v16

    goto :goto_18

    .line 2331
    :catchall_3a
    move-exception v15

    monitor-exit v16
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_3a

    throw v15

    .line 2336
    :cond_3d
    const/4 v15, 0x0

    :try_start_3e
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$9(Ljava/lang/Boolean;)V

    .line 2337
    const/4 v8, 0x0

    .line 2338
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_3a

    .line 2340
    .local v13, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v17, v0

    .line 2341
    invoke-virtual/range {v17 .. v17}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->getCurrentVersionInfo()Ljava/lang/String;

    move-result-object v17

    .line 2340
    move-object/from16 v0, v17

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getDownloadURL(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$3(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2343
    .local v5, "downloadUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    move-object/from16 v17, v0

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static/range {v17 .. v17}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v18, v0

    .line 2345
    invoke-virtual/range {v18 .. v18}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->getCurrentVersionInfo()Ljava/lang/String;

    move-result-object v18

    .line 2344
    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getDownloadFileNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$10(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2343
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/gionee/gsp/util/GnCommonUtil;->getDownloadAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_84
    .catch Lcom/gionee/gsp/GnException; {:try_start_4b .. :try_end_84} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_84} :catch_e3
    .catchall {:try_start_4b .. :try_end_84} :catchall_1a4

    move-result-object v14

    .line 2347
    .local v14, "savePath":Ljava/io/File;
    const/4 v10, 0x0

    .line 2349
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_86
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 2350
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 2349
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    .line 2350
    if-eqz v15, :cond_cb

    .line 2351
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_9f} :catch_de
    .catch Lcom/gionee/gsp/GnException; {:try_start_86 .. :try_end_9f} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9f} :catch_e3
    .catchall {:try_start_86 .. :try_end_9f} :catchall_1a4

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 2359
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :goto_a0
    :try_start_a0
    invoke-static {v10}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_103

    .line 2360
    const-string v7, "\u5e94\u7528\u4e0b\u8f7d\u5f02\u5e38:\u83b7\u53d6\u672c\u5730\u4fdd\u5b58\u5730\u5740\u5931\u8d25"

    .line 2361
    .local v7, "errorMessage":Ljava/lang/String;
    invoke-static {v7}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 2362
    new-instance v15, Lcom/gionee/gsp/GnException;

    invoke-direct {v15, v7}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_b1
    .catch Lcom/gionee/gsp/GnException; {:try_start_a0 .. :try_end_b1} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b1} :catch_e3
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_1a4

    .line 2372
    .end local v5    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "errorMessage":Ljava/lang/String;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "savePath":Ljava/io/File;
    :catch_b1
    move-exception v6

    .line 2373
    .local v6, "e":Lcom/gionee/gsp/GnException;
    :try_start_b2
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_1a4

    .line 2374
    move-object v8, v6

    .line 2380
    const/4 v15, 0x1

    :try_start_b7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$9(Ljava/lang/Boolean;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    invoke-virtual {v15}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->isCancel()Z

    move-result v15

    if-eqz v15, :cond_167

    .line 2383
    monitor-exit v16
    :try_end_c9
    .catchall {:try_start_b7 .. :try_end_c9} :catchall_3a

    goto/16 :goto_18

    .line 2353
    .end local v6    # "e":Lcom/gionee/gsp/GnException;
    .restart local v5    # "downloadUrl":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "savePath":Ljava/io/File;
    :cond_cb
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 2354
    const/16 v18, 0x1

    .line 2353
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_cb .. :try_end_dc} :catch_de
    .catch Lcom/gionee/gsp/GnException; {:try_start_cb .. :try_end_dc} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_dc} :catch_e3
    .catchall {:try_start_cb .. :try_end_dc} :catchall_1a4

    move-result-object v10

    goto :goto_a0

    .line 2356
    :catch_de
    move-exception v6

    .line 2357
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_df
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_e2
    .catch Lcom/gionee/gsp/GnException; {:try_start_df .. :try_end_e2} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e3
    .catchall {:try_start_df .. :try_end_e2} :catchall_1a4

    goto :goto_a0

    .line 2375
    .end local v5    # "downloadUrl":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "savePath":Ljava/io/File;
    :catch_e3
    move-exception v6

    .line 2376
    .local v6, "e":Ljava/lang/Exception;
    :try_start_e4
    invoke-static {v6}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 2377
    const-string v7, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 2378
    .restart local v7    # "errorMessage":Ljava/lang/String;
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_1a4

    .line 2380
    .end local v8    # "exception":Ljava/lang/Exception;
    .local v9, "exception":Ljava/lang/Exception;
    const/4 v15, 0x1

    :try_start_ef
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$9(Ljava/lang/Boolean;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    invoke-virtual {v15}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->isCancel()Z

    move-result v15

    if-eqz v15, :cond_186

    .line 2383
    monitor-exit v16
    :try_end_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_3a

    goto/16 :goto_18

    .line 2364
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "errorMessage":Ljava/lang/String;
    .end local v9    # "exception":Ljava/lang/Exception;
    .restart local v5    # "downloadUrl":Ljava/lang/String;
    .restart local v8    # "exception":Ljava/lang/Exception;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "savePath":Ljava/io/File;
    :cond_103
    :try_start_103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v17, v0

    .line 2364
    move-object/from16 v0, v17

    invoke-static {v15, v5, v10, v14, v0}, Lcom/gionee/gsp/util/GnHttpRequester;->downloadAppForStandalone(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileOutputStream;Ljava/io/File;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;)Z

    .line 2366
    new-instance v12, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 2367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v17, v0

    .line 2368
    invoke-virtual/range {v17 .. v17}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->getCurrentVersionInfo()Ljava/lang/String;

    move-result-object v17

    .line 2367
    move-object/from16 v0, v17

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getProductNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$11(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    move-object/from16 v17, v0

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static/range {v17 .. v17}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v18, v0

    .line 2370
    invoke-virtual/range {v18 .. v18}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->getCurrentVersionInfo()Ljava/lang/String;

    move-result-object v18

    .line 2369
    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getVersionNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$12(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2370
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 2366
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v15, v0, v1}, Lcom/gionee/gsp/data/GnInstanllPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    .local v12, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catch Lcom/gionee/gsp/GnException; {:try_start_103 .. :try_end_152} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_152} :catch_e3
    .catchall {:try_start_103 .. :try_end_152} :catchall_1a4

    .line 2380
    const/4 v15, 0x1

    :try_start_153
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$9(Ljava/lang/Boolean;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    invoke-virtual {v15}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->isCancel()Z

    move-result v15

    if-eqz v15, :cond_1da

    .line 2383
    monitor-exit v16

    goto/16 :goto_18

    .line 2386
    .end local v5    # "downloadUrl":Ljava/lang/String;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    .end local v14    # "savePath":Ljava/io/File;
    .local v6, "e":Lcom/gionee/gsp/GnException;
    :cond_167
    move-object v3, v8

    .line 2387
    .local v3, "callbackException":Ljava/lang/Exception;
    move-object v4, v13

    .line 2388
    .local v4, "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    new-instance v17, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2331
    .end local v3    # "callbackException":Ljava/lang/Exception;
    .end local v6    # "e":Lcom/gionee/gsp/GnException;
    :goto_183
    monitor-exit v16

    goto/16 :goto_18

    .line 2386
    .end local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .end local v8    # "exception":Ljava/lang/Exception;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v7    # "errorMessage":Ljava/lang/String;
    .restart local v9    # "exception":Ljava/lang/Exception;
    :cond_186
    move-object v3, v9

    .line 2387
    .restart local v3    # "callbackException":Ljava/lang/Exception;
    move-object v4, v13

    .line 2388
    .restart local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    new-instance v17, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v8, v9

    .end local v9    # "exception":Ljava/lang/Exception;
    .restart local v8    # "exception":Ljava/lang/Exception;
    goto :goto_183

    .line 2379
    .end local v3    # "callbackException":Ljava/lang/Exception;
    .end local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :catchall_1a4
    move-exception v15

    .line 2380
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$9(Ljava/lang/Boolean;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->isCancel()Z

    move-result v17

    if-eqz v17, :cond_1bd

    .line 2383
    monitor-exit v16

    goto/16 :goto_18

    .line 2386
    :cond_1bd
    move-object v3, v8

    .line 2387
    .local v3, "callbackException":Ljava/lang/Object;
    move-object v4, v13

    .line 2388
    .restart local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    new-instance v18, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2400
    throw v15

    .line 2386
    .end local v3    # "callbackException":Ljava/lang/Object;
    .end local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .restart local v5    # "downloadUrl":Ljava/lang/String;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    .restart local v14    # "savePath":Ljava/io/File;
    :cond_1da
    move-object v3, v8

    .line 2387
    .restart local v3    # "callbackException":Ljava/lang/Object;
    move-object v4, v13

    .line 2388
    .restart local v4    # "callbackNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$activity:Landroid/app/Activity;

    new-instance v17, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1f6
    .catchall {:try_start_153 .. :try_end_1f6} :catchall_3a

    goto :goto_183
.end method
