.class public Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VivoMakeDiffUtil"

.field public static final UNION_APK_PKG_NAME:Ljava/lang/String; = "com.vivo.sdkplugin"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V
    .registers 4

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "6666666666666666666"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/z;

    invoke-direct {v1, p0, p1}, Lcom/vivo/sdkplugin/Utils/z;-><init>(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;-><init>(Landroid/content/Context;Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager;->checkUnionApkUpdate()V

    :goto_1a
    return-void

    :cond_1b
    if-eqz p1, :cond_22

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkUpdateManager$OnCheckUpdateListener;->showUpdateDialog(Z)V

    goto :goto_1a

    :cond_22
    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "--------checkUpdateListener is null---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static getSdkApkVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "union_apk_2.0.6"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "union_sdk_2.0.6"

    goto :goto_8
.end method

.method public static getValOrigin(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "0"

    goto :goto_8
.end method

.method public static isUnionAPK(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.vivo.sdkplugin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static onDBUpdate(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ALTER TABLE accountinfo add column pwd varchar[50] "

    const-string v1, "ALTER TABLE accountinfo add column  time varchar[50]"

    :try_start_a
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "VivoMakeDiffUtil"

    const-string v2, "---- has catched-------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static setAppIdFromLoginActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAppId(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static setOritation(Landroid/app/Activity;)V
    .registers 6

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOrientation()I

    move-result v1

    if-ne v1, v2, :cond_38

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_15
    const-string v2, "VivoMakeDiffUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u6e38\u620f\u5305\u540d\uff1a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u65b9\u5411\u662f: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-void

    :cond_38
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15
.end method

.method public static setSdkverFromLoginActivity(Landroid/content/Context;I)V
    .registers 3

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setSdkVerCode(I)V

    :cond_e
    return-void
.end method

.method public static showActionActivity(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p0}, Lcom/bbk/payment/util/UtilTool;->isGameOnForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p0}, Lcom/bbk/payment/util/UtilTool;->isPaymentActionOnTop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/vivo/sdkplugin/Utils/A;

    invoke-direct {v1, v0, p2}, Lcom/vivo/sdkplugin/Utils/A;-><init>(Landroid/app/ActivityManager;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-static {p0}, Lcom/bbk/payment/util/UtilTool;->isNeedStartActionActivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/vivo/sdkplugin/Utils/B;

    invoke-direct {v1, v0, p0}, Lcom/vivo/sdkplugin/Utils/B;-><init>(Landroid/app/ActivityManager;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22
.end method

.method public static startServiceCancelForceUpdate(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceCancelForceUpdate(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static startServiceCancelLogin(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceCancelLogin(Landroid/content/Context;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLoginCancled()V

    goto :goto_9
.end method

.method public static startServiceSendGameInfo(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->startAssistService(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameKilled(Z)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceSendGameInfo(Landroid/content/Context;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static startServiceSendPayInfo(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceSendPayInfo(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static startServiceSendRechargeInfo(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceSendRechargeInfo(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static startServiceSendSinglePayInfo(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->isUnionAPK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/vivo/plugin/aidl/SendGameInfoManager;->startServiceSendSinglePayInfo(Landroid/content/Context;)V

    :cond_9
    return-void
.end method
