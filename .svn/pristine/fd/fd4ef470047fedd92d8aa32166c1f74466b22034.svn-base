.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downloadApp(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

.field private final synthetic val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$listenCancelList:Ljava/util/List;

.field private final synthetic val$needToDownload:Ljava/util/List;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/util/List;Ljava/util/List;)V
    .registers 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$needToDownload:Ljava/util/List;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$listenCancelList:Ljava/util/List;

    iput-object p7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$needToInstallList:Ljava/util/List;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 453
    new-instance v20, Lcom/gionee/gsp/data/GnCallbackResult;

    invoke-direct/range {v20 .. v20}, Lcom/gionee/gsp/data/GnCallbackResult;-><init>()V

    .line 457
    .local v20, "gnCallbackResult":Lcom/gionee/gsp/data/GnCallbackResult;, "Lcom/gionee/gsp/data/GnCallbackResult<Ljava/lang/String;>;"
    :try_start_5
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v26, "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$needToDownload:Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    const/4 v9, 0x1

    .local v9, "num":I
    :goto_14
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    if-le v9, v2, :cond_35

    .line 629
    sget v2, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    const-string v6, "\u4e0b\u8f7d\u6210\u529f"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/gionee/gsp/data/GnCallbackResult;->addCallbackResult(ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_65
    .catchall {:try_start_5 .. :try_end_23} :catchall_1ed

    .line 638
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 641
    .end local v9    # "num":I
    .end local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :goto_34
    return-void

    .line 461
    .restart local v9    # "num":I
    .restart local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :cond_35
    add-int/lit8 v2, v9, -0x1

    :try_start_37
    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 466
    .local v21, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    .line 467
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "\u6b63\u5728\u83b7\u53d6\u4e0b\u8f7d\u5730\u5740..."

    const/4 v8, 0x0

    .line 466
    invoke-static/range {v2 .. v8}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$listenCancelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b2

    .line 470
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "\u7528\u6237\u70b9\u51fb\u4e86\u53d6\u6d88\u64cd\u4f5c"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_65} :catch_65
    .catchall {:try_start_37 .. :try_end_65} :catchall_1ed

    .line 630
    .end local v9    # "num":I
    .end local v21    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :catch_65
    move-exception v17

    .line 631
    .local v17, "e":Ljava/lang/Exception;
    :try_start_66
    invoke-static/range {v17 .. v17}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 632
    const-string v18, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 633
    .local v18, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lcom/gionee/gsp/result/GnResultCode;->DOWNLOAD_APP_FAILED:I

    invoke-static {v6}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    .line 633
    invoke-static/range {v10 .. v16}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 635
    sget v2, Lcom/gionee/gsp/result/GnResultCode;->UNKNOWN_ERROR:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/gionee/gsp/data/GnCallbackResult;->addCallbackResult(ILjava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_66 .. :try_end_a0} :catchall_1ed

    .line 638
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_34

    .line 473
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "errorMessage":Ljava/lang/String;
    .restart local v9    # "num":I
    .restart local v21    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .restart local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    :cond_b2
    const/16 v22, 0x0

    .line 474
    .local v22, "gnHttpRespons":Lcom/gionee/gsp/util/GnHttpRespons;
    :try_start_b4
    const-string v3, ""

    .line 475
    .local v3, "downloadUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->product:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 476
    .local v24, "product":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->minVersion:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 477
    .local v27, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getCommonParameters(Landroid/content/Context;)Ljava/util/Map;
    invoke-static {v2, v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$2(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v23

    .line 478
    .local v23, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "taskTag"

    const-string v6, "checkUpgrade.do"

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "product"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v2, "version"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->rom:Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 563
    const-string v2, "rom"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_fe
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->model:Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    .line 566
    const-string v2, "model"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getModel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_113
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->platform:Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    .line 569
    const-string v2, "platform"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getPlatform()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_128
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->md5:Ljava/lang/String;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    .line 572
    const-string v2, "md5"

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->md5:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_141
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    if-eqz v2, :cond_156

    .line 575
    const-string v2, "test"

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v2, v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, v23

    invoke-virtual {v2, v6, v0}, Lcom/gionee/gsp/util/GnHttpRequester;->sendGet(Landroid/content/Context;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v22

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/gionee/gsp/util/GnHttpRespons;->content:Ljava/lang/String;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getDownloadURL(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$3(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    .line 584
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/gionee/gsp/util/GnCommonUtil;->getSaveLocalApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 583
    invoke-static {v2, v6}, Lcom/gionee/gsp/util/GnCommonUtil;->getDownloadAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_181} :catch_65
    .catchall {:try_start_b4 .. :try_end_181} :catchall_1ed

    move-result-object v5

    .line 586
    .local v5, "savePath":Ljava/io/File;
    const/4 v4, 0x0

    .line 588
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_183
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 589
    if-eqz v2, :cond_1da

    .line 590
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19c
    .catch Ljava/io/FileNotFoundException; {:try_start_183 .. :try_end_19c} :catch_1e8
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_19c} :catch_65
    .catchall {:try_start_183 .. :try_end_19c} :catchall_1ed

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v19, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v4, v19

    .line 597
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_19e
    :try_start_19e
    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_201

    .line 598
    const-string v18, "\u5e94\u7528\u4e0b\u8f7d\u5f02\u5e38:\u83b7\u53d6\u672c\u5730\u4fdd\u5b58\u5730\u5740\u5931\u8d25"

    .line 599
    .restart local v18    # "errorMessage":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/util/GnLogUtil;->w(Ljava/lang/String;)V

    .line 600
    sget v2, Lcom/gionee/gsp/result/GnResultCode;->SAVE_FILE_FAILED:I

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->product:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/gionee/gsp/data/GnCallbackResult;->addCallbackResult(ILjava/lang/Object;)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1c7} :catch_65
    .catchall {:try_start_19e .. :try_end_1c7} :catchall_1ed

    .line 638
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    goto/16 :goto_34

    .line 592
    .end local v18    # "errorMessage":Ljava/lang/String;
    :cond_1da
    :try_start_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1e6
    .catch Ljava/io/FileNotFoundException; {:try_start_1da .. :try_end_1e6} :catch_1e8
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e6} :catch_65
    .catchall {:try_start_1da .. :try_end_1e6} :catchall_1ed

    move-result-object v4

    goto :goto_19e

    .line 594
    :catch_1e8
    move-exception v17

    .line 595
    .local v17, "e":Ljava/io/FileNotFoundException;
    :try_start_1e9
    invoke-static/range {v17 .. v17}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1ec} :catch_65
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_1ed

    goto :goto_19e

    .line 636
    .end local v3    # "downloadUrl":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "savePath":Ljava/io/File;
    .end local v9    # "num":I
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .end local v21    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v22    # "gnHttpRespons":Lcom/gionee/gsp/util/GnHttpRespons;
    .end local v23    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "product":Ljava/lang/String;
    .end local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .end local v27    # "version":Ljava/lang/String;
    :catchall_1ed
    move-exception v2

    move-object v6, v2

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 640
    throw v6

    .line 604
    .restart local v3    # "downloadUrl":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "savePath":Ljava/io/File;
    .restart local v9    # "num":I
    .restart local v21    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .restart local v22    # "gnHttpRespons":Lcom/gionee/gsp/util/GnHttpRespons;
    .restart local v23    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "product":Ljava/lang/String;
    .restart local v26    # "tempNeedToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .restart local v27    # "version":Ljava/lang/String;
    :cond_201
    :try_start_201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$activity:Landroid/app/Activity;

    .line 605
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$listenCancelList:Ljava/util/List;

    .line 604
    invoke-static/range {v2 .. v9}, Lcom/gionee/gsp/util/GnHttpRequester;->downloadApp(Landroid/app/Activity;Ljava/lang/String;Ljava/io/FileOutputStream;Ljava/io/File;Ljava/lang/String;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/util/List;I)Z

    move-result v25

    .line 616
    .local v25, "result":Z
    if-eqz v25, :cond_23c

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$needToInstallList:Ljava/util/List;

    new-instance v6, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->product:Ljava/lang/String;

    .line 618
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v8, v10}, Lcom/gionee/gsp/data/GnInstanllPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$needToDownload:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_14

    .line 624
    :cond_23c
    sget v2, Lcom/gionee/gsp/result/GnResultCode;->DOWNLOAD_APP_FAILED:I

    const-string v6, "\u4e0b\u8f7d\u5931\u8d25"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lcom/gionee/gsp/data/GnCallbackResult;->addCallbackResult(ILjava/lang/Object;)V
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_245} :catch_65
    .catchall {:try_start_201 .. :try_end_245} :catchall_1ed

    .line 638
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultCode:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/gionee/gsp/data/GnCallbackResult;->resultValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    goto/16 :goto_34
.end method
