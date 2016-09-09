.class public Lcom/vivo/upgrade/CheckUpdateManager;
.super Ljava/lang/Object;
.source "CheckUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;,
        Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;,
        Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    }
.end annotation


# static fields
.field private static mManger:Lcom/vivo/upgrade/CheckUpdateManager;


# instance fields
.field private mCheckFinished:Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;

.field private mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

.field private mContext:Landroid/content/Context;

.field private mExitApp:Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;

.field private mIsControlDialogShow:Z

.field private mListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/upgrade/CheckUpdateManager;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/vivo/upgrade/CheckUpdateManager;->mManger:Lcom/vivo/upgrade/CheckUpdateManager;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/vivo/upgrade/CheckUpdateManager;

    invoke-direct {v0}, Lcom/vivo/upgrade/CheckUpdateManager;-><init>()V

    sput-object v0, Lcom/vivo/upgrade/CheckUpdateManager;->mManger:Lcom/vivo/upgrade/CheckUpdateManager;

    .line 40
    :cond_b
    sget-object v0, Lcom/vivo/upgrade/CheckUpdateManager;->mManger:Lcom/vivo/upgrade/CheckUpdateManager;

    return-object v0
.end method


# virtual methods
.method public cancelCheck()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 121
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateTask;->cancel(Z)Z

    .line 123
    :cond_12
    return-void
.end method

.method public checkFinish()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckFinished:Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckFinished:Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;

    invoke-interface {v0}, Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;->onCheckFinished()V

    .line 155
    :cond_9
    return-void
.end method

.method public checkUpdate(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCheckByUser"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 95
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateTask;->cancel(Z)Z

    .line 98
    :cond_12
    new-instance v0, Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-direct {v0, p1, p2}, Lcom/vivo/upgrade/CheckUpdateTask;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    .line 99
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    iget-boolean v1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mIsControlDialogShow:Z

    iget-object v2, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/CheckUpdateTask;->setControlDialog(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 101
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/CheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public dismissDialog()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateTask;->dismissDialog()V

    .line 133
    :cond_9
    return-void
.end method

.method public exitApp(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mContext:Landroid/content/Context;

    .line 139
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    check-cast v1, Landroid/app/ActivityManager;

    .line 140
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const-string v3, "android.app.ActivityManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 141
    const-string v4, "forceStopPackage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 142
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 148
    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_29
    return-void

    .line 143
    :catch_2a
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iget-object v3, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mExitApp:Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;

    invoke-interface {v3}, Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;->onExit()V

    goto :goto_29
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "exitApp"    # Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;

    .prologue
    .line 54
    if-nez p1, :cond_a

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_18
    if-nez p3, :cond_22

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "exitApp can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_2d} :catch_3b

    .line 74
    iput-object p1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mPackageName:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mExitApp:Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;

    .line 78
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->init(Landroid/content/Context;)V

    .line 79
    return-void

    .line 69
    :catch_3b
    move-exception v0

    .line 70
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this package not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCheckFinishCallBack(Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;)V
    .registers 2
    .param p1, "checkFinished"    # Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckFinished:Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;

    .line 113
    return-void
.end method

.method public setControlDialogShow(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V
    .registers 5
    .param p1, "isControl"    # Z
    .param p2, "listener"    # Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mIsControlDialogShow:Z

    .line 167
    iput-object p2, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    .line 169
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 170
    iget-object v0, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateTask;->cancel(Z)Z

    .line 172
    :cond_16
    return-void
.end method

.method public showDialog()Z
    .registers 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    if-eqz v1, :cond_b

    .line 182
    iget-object v1, p0, Lcom/vivo/upgrade/CheckUpdateManager;->mCheckUpdateTask:Lcom/vivo/upgrade/CheckUpdateTask;

    invoke-virtual {v1}, Lcom/vivo/upgrade/CheckUpdateTask;->showDialog()Z

    move-result v0

    .line 185
    :cond_b
    return v0
.end method
