.class public Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"


# instance fields
.field private a:Lcom/vivo/sdkplugin/Utils/r;

.field private b:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

.field private c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

.field private d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

.field public isSetAllowed:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->isSetAllowed:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/r;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/r;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a:Lcom/vivo/sdkplugin/Utils/r;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    const-string v2, "\u6b63\u5728\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e"

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/q;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/Utils/q;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/model/MAppUpdateInfo;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    return-object v0
.end method

.method private a()V
    .registers 5

    const-string v0, "VivoCkApkInsManager"

    const-string v1, "------startSDKLogin() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->isGameOnForeground()Z

    move-result v0

    const-string v1, "VivoCkApkInsManager"

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

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2f
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "VivoCkApkInsManager"

    const-string v1, "------startSDKSinglePay() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->isGameOnForeground()Z

    move-result v0

    const-string v1, "VivoCkApkInsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---\u5f53\u524d\u6e38\u620f\u662f\u5426\u5728\u524d\u53f0\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    const-string v3, "com.bbkmobile.iqoo.payment.PaymentActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "payment_params"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3e
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->safeDismissLoadingDialog()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

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

    iget-object v6, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v0, v3}, Lcom/vivo/sdkplugin/SelfUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v3, Lcom/vivo/sdkplugin/Utils/m;

    invoke-direct {v3, p0}, Lcom/vivo/sdkplugin/Utils/m;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setPositiveClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eq v1, v7, :cond_68

    :goto_42
    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v2, Lcom/vivo/sdkplugin/Utils/n;

    invoke-direct {v2, p0, v1}, Lcom/vivo/sdkplugin/Utils/n;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;I)V

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setNegativeClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_65

    if-ne v1, v7, :cond_6a

    const-string v0, "----\u5f3a\u5236\u5347\u7ea7\u663e\u793a--------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

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
    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "----\u7b2c\u4e00\u6b21\u6216\u8005\u8fc73\u5929\u540e\u663e\u793a-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->show()V

    goto :goto_65

    :cond_7b
    const-string v0, "---\u4e0d\u663e\u793a\u5b89\u88c5\u9875\u9762-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a()V

    goto :goto_65

    :cond_84
    move v3, v2

    goto :goto_2b
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Lcom/vivo/sdkplugin/model/MAppUpdateInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b:Lcom/vivo/sdkplugin/model/MAppUpdateInfo;

    return-void
.end method

.method private b()Z
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getlastNoticeTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v1, "VivoCkApkInsManager"

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

    const-string v0, "VivoCkApkInsManager"

    const-string v1, "------\u672a\u52303\u5929--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    cmp-long v1, v2, v6

    if-nez v1, :cond_42

    const-string v1, "VivoCkApkInsManager"

    const-string v2, "------\u7b2c\u4e00\u6b21\u8fdb\u6765,\u65f6\u95f4\u4e3a0-------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_42
    const-string v1, "VivoCkApkInsManager"

    const-string v2, "------3\u5929\u5df2\u8fc7--------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method


# virtual methods
.method public checkUnionApk()V
    .registers 4

    new-instance v0, Lcom/vivo/sdkplugin/GetAppVersionManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a:Lcom/vivo/sdkplugin/Utils/r;

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetAppVersionManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetAppVersionManager;->getAPPVersionInfo()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->safeShowLoadingDialog()V

    return-void
.end method

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

.method public getIsOldUser()V
    .registers 4

    const-string v0, "VivoCkApkInsManager"

    const-string v1, "---isOldUser() enter-------cancelLoad: "

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/GetUserInfoManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a:Lcom/vivo/sdkplugin/Utils/r;

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetUserInfoManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->getUserInfo()V

    return-void
.end method

.method public installPluginApk()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->copyApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

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

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0xbb8

    :try_start_61
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_65

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_64
.end method

.method public isGameOnForeground()Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

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

    const-string v3, "VivoCkApkInsManager"

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

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

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

.method public safeDismissLoadingDialog()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    return-void
.end method

.method public safeShowLoadingDialog()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->show()V

    return-void
.end method

.method public showSinglePayUpdateDialog(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const-string v0, "VivoCkApkInsManager"

    const-string v1, "showSinglePayUpdateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_54

    :cond_14
    const-string v0, "\u5b89\u88c5"

    const-string v1, "\u7a0d\u540e\u518d\u8bf4"

    new-instance v2, Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/vivo/sdkplugin/SelfUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/o;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/Utils/o;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setPositiveClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/p;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/Utils/p;-><init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setNegativeClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-direct {p0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "----\u7b2c\u4e00\u6b21\u6216\u8005\u8fc73\u5929\u540e\u663e\u793a-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->show()V

    :cond_54
    :goto_54
    return-void

    :cond_55
    const-string v0, "---\u4e0d\u663e\u793a\u5b89\u88c5\u9875\u9762-------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Landroid/os/Bundle;)V

    goto :goto_54
.end method
