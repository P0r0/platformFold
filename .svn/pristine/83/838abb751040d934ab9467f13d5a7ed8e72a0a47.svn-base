.class Lcom/vivo/upgrade/CheckAppUpdate$1;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"

# interfaces
.implements Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/upgrade/CheckAppUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckAppUpdate;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckAppUpdate;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlDown()V
    .registers 15

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget-object v13, v0, Lcom/vivo/upgrade/AppUpdateInfo;->durl:Ljava/lang/String;

    .line 436
    .local v13, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    iget v0, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_123

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "mounted"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 438
    if-nez v0, :cond_3c

    .line 440
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    .line 442
    const-string v3, "vivo_upgrade_download_file_impossible"

    .line 441
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 443
    const/4 v2, 0x0

    .line 439
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 499
    :cond_3b
    :goto_3b
    return-void

    .line 447
    :cond_3c
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget-object v11, v0, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    .line 448
    .local v11, "md5":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget-object v9, v0, Lcom/vivo/upgrade/AppUpdateInfo;->filename:Ljava/lang/String;

    .line 449
    .local v9, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget-object v6, v0, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 450
    .local v6, "lowMd5":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget v12, v0, Lcom/vivo/upgrade/AppUpdateInfo;->size:I

    .line 451
    .local v12, "size":I
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;

    move-result-object v0

    iget v7, v0, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 453
    .local v7, "mode":I
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->startDown()V

    .line 454
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCancelable(Z)V

    .line 456
    const/4 v10, 0x0

    .line 457
    .local v10, "isStartDownload":Z
    if-nez v7, :cond_e3

    .line 459
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$3(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$4(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$5(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 463
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$6(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 464
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setDownBtnEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "0%"

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/upgrade/SelfUpdateDialog;->progressBarUpdate(ZILjava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$6(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPatchSize:I
    invoke-static {v2}, Lcom/vivo/upgrade/CheckAppUpdate;->access$7(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPatchName:Ljava/lang/String;
    invoke-static {v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$8(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;

    move-result-object v3

    .line 467
    iget-object v4, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I
    invoke-static {v4}, Lcom/vivo/upgrade/CheckAppUpdate;->access$9(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;
    invoke-static {v5}, Lcom/vivo/upgrade/CheckAppUpdate;->access$10(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;

    move-result-object v5

    .line 466
    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Lcom/vivo/upgrade/CheckAppUpdate;->access$11(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 468
    const-string v0, "Upgrade.CheckAppUpdate"

    .line 469
    const-string v1, "DialogClickListener: update patch mode"

    .line 468
    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v10, 0x1

    .line 475
    :cond_e3
    if-nez v10, :cond_3b

    .line 477
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11a

    .line 478
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setDownBtnEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "0%"

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/upgrade/SelfUpdateDialog;->progressBarUpdate(ZILjava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$9(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v4

    move-object v1, v13

    move v2, v12

    move-object v3, v9

    move-object v5, v11

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Lcom/vivo/upgrade/CheckAppUpdate;->access$11(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 482
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v1, "DialogClickListener: update all mode"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 484
    :cond_11a
    const-string v0, "Upgrade.CheckAppUpdate"

    .line 485
    const-string v1, "DialogClickListener: download url is null"

    .line 484
    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 489
    .end local v6    # "lowMd5":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "isStartDownload":Z
    .end local v11    # "md5":Ljava/lang/String;
    .end local v12    # "size":I
    :cond_123
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v0

    iget v0, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 490
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$12(Lcom/vivo/upgrade/CheckAppUpdate;Z)V

    .line 491
    new-instance v8, Ljava/io/File;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/upgrade/CheckAppUpdate;->access$13()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Lcom/vivo/upgrade/utils/Util;->delete(Ljava/io/File;)V

    .line 494
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$9(Lcom/vivo/upgrade/CheckAppUpdate;)I

    move-result v1

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z
    invoke-static {v0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$14(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 495
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate$1;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateManager;->exitApp(Landroid/content/Context;)V

    goto/16 :goto_3b
.end method
