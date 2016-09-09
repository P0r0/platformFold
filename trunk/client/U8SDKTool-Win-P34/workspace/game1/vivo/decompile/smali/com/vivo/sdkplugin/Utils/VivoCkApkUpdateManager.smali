.class public Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;
.super Ljava/lang/Object;


# static fields
.field public static final UNION_APK_PKGNAME:Ljava/lang/String; = "com.vivo.sdkplugin"


# instance fields
.field private a:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

.field public mContext:Landroid/content/Context;

.field public mOnCheckUpdateListener:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mOnCheckUpdateListener:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "\u6b63\u5728\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e"

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/v;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/Utils/v;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private a()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v2, "VivoCkApkUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity is invalid. isFinishing-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    move v0, v2

    goto :goto_2b

    :cond_2e
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_62

    :cond_3a
    const-string v2, "VivoCkApkUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity is invalid. isDestoryed-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isFinishing-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_64

    move v0, v1

    goto :goto_2b

    :cond_62
    move v0, v2

    goto :goto_2b

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2b
.end method


# virtual methods
.method public checkUnionApkUpdate()V
    .registers 5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->safeShowLoadingDialog()V

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "com.vivo.sdkplugin"

    new-instance v3, Lcom/vivo/sdkplugin/Utils/s;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/Utils/s;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/upgrade/CheckUpdateManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/upgrade/CheckUpdateManager$ExitApp;)V

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/t;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/t;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/CheckUpdateManager;->setControlDialogShow(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->showDialog()Z

    move-result v0

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/u;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/u;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;)V

    invoke-virtual {v1, v2}, Lcom/vivo/upgrade/CheckUpdateManager;->setCheckFinishCallBack(Lcom/vivo/upgrade/CheckUpdateManager$CheckFinished;)V

    if-nez v0, :cond_53

    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/vivo/upgrade/CheckUpdateManager;->checkUpdate(Landroid/content/Context;Z)V

    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDialogHasShow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    return-void

    :cond_53
    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->mOnCheckUpdateListener:Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;

    invoke-interface {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->showUpdateDialog(Z)V

    goto :goto_40
.end method

.method public safeDismissLoadingDialog()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    :cond_b
    return-void
.end method

.method public safeShowLoadingDialog()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->a:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->show()V

    :cond_b
    return-void
.end method
