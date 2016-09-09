.class public Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final APK_INSTALL_ACTION:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final APK_PLUGIN_NAME:Ljava/lang/String; = "com.vivo.sdkplugin"

.field public static final APK_REPLACED_ACTION:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static isAlertInstall:Z


# instance fields
.field a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

.field private b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsSinglePay()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "VivoApkPluginRecevier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packagename="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSinglePay, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string v0, "VivoApkPluginRecevier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packagename="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VivoApkPluginRecevier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------\u63a5\u6536\u5230\u7684action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_8f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "com.vivo.sdkplugin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    sget-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    if-nez v0, :cond_c9

    const-string v0, "VivoApkPluginRecevier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packagename="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAlertInstall is false, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    :cond_c9
    const-string v0, "VivoApkPluginRecevier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoApkPluginRecevier"

    const-string v1, "-------\u76d1\u542c\u5230apk\u5b89\u88c5\u6210\u529f\uff0c\u5e76\u4e14\u4e0a\u4f20\u57cb\u70b9\u6570\u636e------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "022"

    const-string v1, "1"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/k;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/k;-><init>(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_38
.end method
