.class Lcom/vivo/upgrade/CheckAppUpdate$2;
.super Landroid/os/Handler;
.source "CheckAppUpdate.java"


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
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    .line 848
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v11

    if-eqz v11, :cond_20

    .line 853
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;

    move-result-object v11

    invoke-interface {v11}, Lcom/vivo/upgrade/TaskCallBack;->isTaskCanceled()Z

    move-result v11

    if-eqz v11, :cond_20

    .line 854
    const-string v11, "Upgrade.CheckAppUpdate"

    const-string v12, "the AppVerDetecting task is canceled"

    invoke-static {v11, v12}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_1f
    :goto_1f
    return-void

    .line 859
    :cond_20
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 860
    .local v3, "level":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_1f0

    goto :goto_1f

    .line 863
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mIsCancelDownload:Z
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$16(Lcom/vivo/upgrade/CheckAppUpdate;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 866
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 867
    .local v9, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z
    invoke-static {v11, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$17(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 868
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v14

    .line 869
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v11

    const-string v15, "string"

    .line 870
    const-string v16, "vivo_upgrade_download_percent"

    .line 869
    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 871
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    aput-object v11, v16, v17

    .line 869
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 868
    invoke-virtual {v12, v13, v9, v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->progressBarUpdate(ZILjava/lang/String;)V

    goto :goto_1f

    .line 876
    .end local v9    # "progress":I
    :pswitch_7e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 877
    .local v2, "data":Landroid/os/Bundle;
    const-string v11, "name"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 878
    .local v7, "name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/upgrade/CheckAppUpdate;->access$13()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 879
    .local v8, "path":Ljava/lang/String;
    const-string v11, "mode"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 880
    .local v6, "mode":I
    const-string v11, "contentLength"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 881
    .local v1, "contentLength":I
    const-string v11, "downloadMd5"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "md5String":Ljava/lang/String;
    const-string v11, "lowMd5"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "lowerMd5String":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$18(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v11

    const-string v12, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_PATH"

    invoke-virtual {v11, v12, v8}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$18(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v11

    const-string v12, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_MODE"

    invoke-virtual {v11, v12, v6}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putInt(Ljava/lang/String;I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z
    invoke-static {v11, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$17(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v11

    if-eqz v11, :cond_e5

    .line 888
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isInstallSilentUpdate(I)Z
    invoke-static {v11, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$19(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v11

    if-eqz v11, :cond_11e

    .line 890
    :cond_e5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    if-eqz v11, :cond_108

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_108

    .line 891
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 894
    :cond_108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_128

    .line 895
    new-instance v10, Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v3, v6}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;-><init>(Landroid/content/Context;II)V

    .line 897
    .local v10, "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    invoke-static {v10, v8, v5, v4}, Lcom/vivo/upgrade/utils/TaskExcute;->excuteMdFiveCheck(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .end local v10    # "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    const/4 v12, 0x0

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V
    invoke-static {v11, v12}, Lcom/vivo/upgrade/CheckAppUpdate;->access$20(Lcom/vivo/upgrade/CheckAppUpdate;Z)V

    goto/16 :goto_1f

    .line 900
    :cond_128
    const-string v11, "Upgrade.CheckAppUpdate"

    const-string v12, "md5String is null"

    invoke-static {v11, v12}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11e

    .line 909
    .end local v1    # "contentLength":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "lowerMd5String":Ljava/lang/String;
    .end local v5    # "md5String":Ljava/lang/String;
    .end local v6    # "mode":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :pswitch_130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z
    invoke-static {v11, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$17(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v11

    if-nez v11, :cond_19c

    .line 910
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    if-eqz v11, :cond_170

    .line 912
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_165

    .line 913
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isCancelable(I)Z
    invoke-static {v12, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$21(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCancelable(Z)V

    .line 916
    :cond_165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->downFailBySpace()V

    .line 919
    :cond_170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 920
    const-string v12, "mounted"

    .line 919
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 920
    if-nez v11, :cond_19c

    .line 922
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v11

    .line 923
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/vivo/upgrade/CheckAppUpdate;->access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;

    move-result-object v12

    const-string v13, "string"

    .line 924
    const-string v14, "vivo_upgrade_download_file_impossible"

    .line 923
    invoke-static {v12, v13, v14}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 925
    const/4 v13, 0x0

    .line 921
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    .line 925
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 928
    :cond_19c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    const/4 v12, 0x0

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V
    invoke-static {v11, v12}, Lcom/vivo/upgrade/CheckAppUpdate;->access$20(Lcom/vivo/upgrade/CheckAppUpdate;Z)V

    goto/16 :goto_1f

    .line 932
    :pswitch_1a6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z
    invoke-static {v11, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$17(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v11

    if-nez v11, :cond_1e6

    .line 933
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    if-eqz v11, :cond_1e6

    .line 934
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1db

    .line 935
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->isCancelable(I)Z
    invoke-static {v12, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->access$21(Lcom/vivo/upgrade/CheckAppUpdate;I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCancelable(Z)V

    .line 937
    :cond_1db
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    # getter for: Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;
    invoke-static {v11}, Lcom/vivo/upgrade/CheckAppUpdate;->access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vivo/upgrade/SelfUpdateDialog;->downFailByNet()V

    .line 940
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate$2;->this$0:Lcom/vivo/upgrade/CheckAppUpdate;

    const/4 v12, 0x0

    # invokes: Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V
    invoke-static {v11, v12}, Lcom/vivo/upgrade/CheckAppUpdate;->access$20(Lcom/vivo/upgrade/CheckAppUpdate;Z)V

    goto/16 :goto_1f

    .line 860
    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_7e
        :pswitch_130
        :pswitch_1a6
    .end packed-switch
.end method
