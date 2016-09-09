.class Lcom/vivo/upgrade/CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "CheckUpdateTask.java"

# interfaces
.implements Lcom/vivo/upgrade/TaskCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/vivo/upgrade/TaskCallBack;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Upgrade.CheckUpdateTask"

.field private static final TEMP_NON_CHECK_SYSTEM_UPDATE:Z


# instance fields
.field private mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

.field private mCheckSystemUpdate:Lcom/vivo/upgrade/CheckSystemUpdate;

.field private mContext:Landroid/content/Context;

.field private mHasSystemUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCheckByUser"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mHasSystemUpdate:Z

    .line 40
    if-nez p1, :cond_10

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_10
    iput-object p1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/vivo/upgrade/CheckAppUpdate;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcom/vivo/upgrade/CheckAppUpdate;-><init>(Landroid/content/Context;Lcom/vivo/upgrade/TaskCallBack;Z)V

    iput-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    .line 54
    return-void
.end method

.method private getResIdByCode(I)I
    .registers 6
    .param p1, "code"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_30

    .line 155
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v2, "string"

    .line 156
    const-string v3, "vivo_upgrade_msg_latest_version"

    .line 155
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    :goto_e
    return v0

    .line 139
    :sswitch_f
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v2, "string"

    .line 140
    const-string v3, "vivo_upgrade_msg_latest_version"

    .line 139
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 141
    goto :goto_e

    .line 145
    :sswitch_1a
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v2, "string"

    .line 146
    const-string v3, "vivo_upgrade_msg_server_error"

    .line 145
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    goto :goto_e

    .line 150
    :sswitch_25
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v2, "string"

    .line 151
    const-string v3, "vivo_upgrade_msg_network_error"

    .line 150
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 152
    goto :goto_e

    .line 137
    :sswitch_data_30
    .sparse-switch
        0xc8 -> :sswitch_f
        0x190 -> :sswitch_1a
        0x1f4 -> :sswitch_1a
        0x3e9 -> :sswitch_25
    .end sparse-switch
.end method


# virtual methods
.method public dismissDialog()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->dismissDialog()V

    .line 173
    :cond_9
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckSystemUpdate:Lcom/vivo/upgrade/CheckSystemUpdate;

    if-eqz v0, :cond_c

    .line 83
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckSystemUpdate:Lcom/vivo/upgrade/CheckSystemUpdate;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckSystemUpdate;->checkSystemUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mHasSystemUpdate:Z

    .line 86
    :cond_c
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mHasSystemUpdate:Z

    if-nez v0, :cond_15

    .line 87
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->checkAppUpdate()V

    .line 90
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTaskCanceled()Z
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/vivo/upgrade/CheckUpdateTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/CheckUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/vivo/upgrade/CheckUpdateTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 97
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->checkFinish()V

    .line 98
    const-string v0, "Upgrade.CheckUpdateTask"

    const-string v1, "this task is canceled"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_14
    return-void

    .line 102
    :cond_15
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mHasSystemUpdate:Z

    if-nez v0, :cond_22

    .line 105
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    if-eqz v0, :cond_22

    .line 106
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckAppUpdate;->onPostExecute()V

    .line 110
    :cond_22
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->checkFinish()V

    goto :goto_14
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 6
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_1f

    aget-object v1, p1, v2

    if-eqz v1, :cond_1f

    .line 117
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vivo/upgrade/CheckUpdateTask;->getResIdByCode(I)I

    move-result v0

    .line 118
    .local v0, "msgResId":I
    if-gtz v0, :cond_20

    .line 119
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    const-string v2, "something is error"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    .end local v0    # "msgResId":I
    :cond_1f
    :goto_1f
    return-void

    .line 122
    .restart local v0    # "msgResId":I
    :cond_20
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1f
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/CheckUpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public onPublishProgress(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vivo/upgrade/CheckUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method protected setControlDialog(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V
    .registers 5
    .param p1, "isControl"    # Z
    .param p2, "listener"    # Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    if-eqz v0, :cond_a

    .line 60
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/upgrade/CheckAppUpdate;->setControlShowDialog(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V

    .line 64
    :goto_9
    return-void

    .line 62
    :cond_a
    const-string v0, "Upgrade.CheckUpdateTask"

    const-string v1, "setControlDialog: mCheckAppUpdate is null"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected showDialog()Z
    .registers 4

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    if-eqz v1, :cond_c

    .line 71
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateTask;->mCheckAppUpdate:Lcom/vivo/upgrade/CheckAppUpdate;

    invoke-virtual {v1}, Lcom/vivo/upgrade/CheckAppUpdate;->showDialog()Z

    move-result v0

    .line 76
    :goto_b
    return v0

    .line 73
    :cond_c
    const-string v1, "Upgrade.CheckUpdateTask"

    const-string v2, "showDialog: mCheckAppUpdate is null"

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
