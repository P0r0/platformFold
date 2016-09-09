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
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->a:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    sget-object v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_15b

    sget-object v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    const-string v2, "mPaymentType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1f
    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getIsSinglePay()Z

    move-result v2

    const-string v3, "VivoApkPluginRecevier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packagename = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isSinglepPay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paymentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_76

    if-nez v0, :cond_76

    const-string v0, "VivoApkPluginRecevier"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packagename="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSinglePay, return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    :cond_75
    :goto_75
    return-void

    :cond_76
    if-eqz p2, :cond_75

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VivoApkPluginRecevier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-------\u63a5\u6536\u5230\u7684action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b4

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_b4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string v3, "com.vivo.sdkplugin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    sget-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    if-nez v0, :cond_ed

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

    goto :goto_75

    :cond_ed
    const-string v0, "VivoApkPluginRecevier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "------context: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    if-eqz v2, :cond_14a

    sget-boolean v0, Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;->isAlertInstall:Z

    if-nez v0, :cond_139

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

    goto/16 :goto_75

    :cond_139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/k;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/accounts/k;-><init>(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;Landroid/content/Context;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_75

    :cond_14a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/accounts/l;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/accounts/l;-><init>(Lcom/vivo/sdkplugin/accounts/VivoApkInstallRecevier;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_75

    :cond_15b
    move v0, v1

    goto/16 :goto_1f
.end method
