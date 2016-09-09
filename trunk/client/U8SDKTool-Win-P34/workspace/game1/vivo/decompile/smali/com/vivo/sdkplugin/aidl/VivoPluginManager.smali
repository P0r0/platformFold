.class public Lcom/vivo/sdkplugin/aidl/VivoPluginManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoPluginManager"


# instance fields
.field private appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

.field private bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private cancelLoad:Z

.field private mContext:Landroid/content/Context;

.field private mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$1;-><init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUIHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic access$0(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->hideLoadingDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startSDK()V

    return-void
.end method

.method static synthetic access$4(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->appInfo:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    return-void
.end method

.method static synthetic access$5(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z

    return-void
.end method

.method public static checkIfAPKExits(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vivo.sdkplugin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_4f

    const-string v2, "com.vivo.sdkplugin"

    invoke-static {p0, v2}, Lcom/bbk/payment/util/UtilTool;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :goto_15
    const-string v3, "VivoPluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkIfAPKExits, apkVerCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSinglePay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_38

    :cond_37
    :goto_37
    return v0

    :cond_38
    if-lez v2, :cond_44

    const/16 v3, 0x9

    if-ge v2, v3, :cond_44

    sget-boolean v2, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_40} :catch_46

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_37

    :cond_44
    move v0, v1

    goto :goto_37

    :catch_46
    move-exception v1

    const-string v1, "VivoPluginManager"

    const-string v2, "NameNotFoundException, apk not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_4f
    move v2, v0

    goto :goto_15
.end method

.method private hideLoadingDialog()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    :cond_14
    return-void
.end method

.method private isShowUpdateDialog()Z
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getlastNoticeTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v1, "VivoPluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-----time------"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v2, v6

    if-lez v1, :cond_36

    const-wide/32 v4, 0xf731400

    cmp-long v1, v2, v4

    if-gez v1, :cond_36

    const-string v0, "VivoPluginManager"

    const-string v1, "------\u672a\u52303\u5929--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    cmp-long v1, v2, v6

    if-nez v1, :cond_42

    const-string v1, "VivoPluginManager"

    const-string v2, "------\u7b2c\u4e00\u6b21\u8fdb\u6765,\u65f6\u95f4\u4e3a0-------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_42
    const-string v1, "VivoPluginManager"

    const-string v2, "------3\u5929\u5df2\u8fc7--------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private showLoadingDialog()V
    .registers 7

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "vivo_loading_string"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    new-instance v1, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$4;-><init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mLoadingDialog:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->show()V

    :cond_32
    return-void
.end method

.method private showNoteworkDialog()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->showNetworkDialog(Landroid/content/Context;)V

    return-void
.end method

.method private showUpdateDialog(Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->hideLoadingDialog()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    :cond_11
    if-eqz p1, :cond_66

    iget-object v0, p1, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p1, Lcom/vivo/sdkplugin/model/MAppUpdateInfo;->level:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_22
    const-string v4, "\u5b89\u88c5"

    const-string v0, "\u7a0d\u540e\u518d\u8bf4"

    if-ne v1, v7, :cond_84

    const-string v0, "\u9000\u51fa"

    const/4 v3, 0x2

    :goto_2b
    new-instance v5, Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iget-object v6, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v0, v3}, Lcom/vivo/sdkplugin/SelfUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v3, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$2;-><init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;)V

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setPositiveClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eq v1, v7, :cond_68

    :goto_42
    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v2, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;

    invoke-direct {v2, p0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager$3;-><init>(Lcom/vivo/sdkplugin/aidl/VivoPluginManager;I)V

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setNegativeClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_65

    if-ne v1, v7, :cond_6a

    const-string v0, "----\u5f3a\u5236\u5347\u7ea7\u663e\u793a--------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->show()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    move v1, v2

    goto :goto_22

    :cond_68
    const/4 v2, 0x0

    goto :goto_42

    :cond_6a
    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->isShowUpdateDialog()Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "----\u7b2c\u4e00\u6b21\u6216\u8005\u8fc73\u5929\u540e\u663e\u793a-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->show()V

    goto :goto_65

    :cond_7b
    const-string v0, "---\u4e0d\u663e\u793a\u5b89\u88c5\u9875\u9762-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startSDK()V

    goto :goto_65

    :cond_84
    move v3, v2

    goto :goto_2b
.end method

.method public static startPluginApk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "------startPluginApk() enter------------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setloginStartTime(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.vivo.sdkplugin.activity.LoginActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getSDKOrientation()I

    move-result v1

    const-string v2, "oritation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "appId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sdkVersionCode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---22222--\u6e38\u620f\u7684\u65b9\u5411\u662f---------oritaion\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSDK()V
    .registers 5

    const-string v0, "VivoPluginManager"

    const-string v1, "------startSDK() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->isGameOnForeground()Z

    move-result v0

    const-string v1, "VivoPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---\u5f53\u524d\u6e38\u620f\u662f\u5426\u5728\u524d\u53f0\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_28

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_1a

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27
.end method

.method public getAppVersion()V
    .registers 4

    new-instance v0, Lcom/vivo/sdkplugin/GetAppVersionManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetAppVersionManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->getAPPVersionInfo()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showLoadingDialog()V

    return-void
.end method

.method public getIsOldUser()V
    .registers 4

    const-string v0, "VivoPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---isOldUser() enter-------cancelLoad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->cancelLoad:Z

    if-nez v0, :cond_26

    new-instance v0, Lcom/vivo/sdkplugin/GetUserInfoManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetUserInfoManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->getUserInfo()V

    :cond_26
    return-void
.end method

.method public installPluginApk()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    const-string v1, "VivoUnionApk.apk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/VivoUnionApk.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/VivoUnionApk.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5c
    return-void
.end method

.method public isGameOnForeground()Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VivoPluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---topActivity-------:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " topPackageName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    :goto_4d
    return v0

    :cond_4e
    move v0, v1

    goto :goto_4d
.end method

.method public login()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->showNoteworkDialog()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startPluginApk(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setApkPluginStarted(Z)V

    goto :goto_b

    :cond_21
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->getAppVersion()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setApkPluginStarted(Z)V

    goto :goto_b
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->mUpdateDialog:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    :cond_14
    return-void
.end method
