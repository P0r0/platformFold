.class public Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoUnionManager"

.field public static isSinglePay:Z

.field public static sBundle:Landroid/os/Bundle;

.field public static sPayType:I


# instance fields
.field private bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private mContext:Landroid/content/Context;

.field private mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

.field private mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

.field private mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

.field private mVivoPluginManager:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    sput v1, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sPayType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPluginManager:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    return-void
.end method

.method private hideAssit()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hide()V

    return-void
.end method

.method private login()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPluginManager:Lcom/vivo/sdkplugin/aidl/VivoPluginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->login()V

    return-void
.end method

.method private showAssit()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->show()V

    return-void
.end method

.method private vivoAccountStartAssistView(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountStartAssistView(Landroid/content/Context;)V

    return-void
.end method

.method private vivoAccountStopAssistView(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountStopAssistView(Landroid/content/Context;)V

    return-void
.end method

.method public static vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v0

    const-string v1, "VivoUnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------vivoAccountreportRoleInfo() enter--------apkStarted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_30

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-direct {v0, p4}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void

    :cond_30
    invoke-static/range {p0 .. p5}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2f
.end method


# virtual methods
.method public bindUnionService()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "VivoUnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------bindUnionService() enter------isAPKExits: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bindAidlService()V

    :cond_21
    return-void
.end method

.method public cancelVivoPaymentAndRecharge(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unBindUnionServie()V

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unRegistVivoPayResultListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    return-void
.end method

.method public cancelVivoSinglePayment(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unBindUnionServie()V

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->unRegistVivoSinglePayResultListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V

    return-void
.end method

.method public getVersion()I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.vivo.sdkplugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v1, "VivoUnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return v0

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    goto :goto_23
.end method

.method public hideVivoAssitView(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameMainDestroy(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v0

    invoke-static {p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountonDestroy(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->stopAssistService(Landroid/content/Context;)V

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->vivoAccountStopAssistView(Landroid/content/Context;)V

    :cond_17
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSuccess(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public initVivoPaymentAndRecharge(Landroid/content/Context;Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    invoke-virtual {p0, p2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->registVivoPayResultListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    return-void
.end method

.method public initVivoSinglePayment(Landroid/content/Context;Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    invoke-virtual {p0, p2}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->registVivoSinglePayResultListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V

    return-void
.end method

.method public payment(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/bbk/payment/payment/VivoPaymentManager;->payment(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/bbk/payment/payment/VivoPaymentManager;->paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/bbk/payment/payment/VivoPaymentManager;->paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public recharge(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->recharge(Landroid/content/Context;)V

    return-void
.end method

.method public registVivoAccountChangeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->registeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V

    return-void
.end method

.method public registVivoPayResultListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-virtual {v0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->registeListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    return-void
.end method

.method public registVivoSinglePayResultListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-virtual {v0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->registeSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V

    return-void
.end method

.method public showVivoAssitView(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameMainDestroy(Z)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "VivoUnionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-----isAPKExits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setApkPluginStarted(Z)V

    :cond_28
    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getLoginSuccess()Z

    move-result v2

    const-string v3, "VivoUnionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "----ShowVivoAssitView() enter------apkStarted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gameLoginSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->getVersion()I

    move-result v5

    if-ge v5, v6, :cond_58

    const/4 v0, 0x1

    :cond_58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_6d

    const-string v0, "VivoUnionManager"

    const-string v1, "-----\u6e38\u620f\u8fd8\u672a\u767b\u9646\u6210\u529f\uff0c\u4e0d\u80fd\u663e\u793a\u60ac\u6d6e\u7a97--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    return-void

    :cond_6d
    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->getVersion()I

    move-result v0

    if-ge v0, v6, :cond_7f

    const-string v0, "VivoUnionManager"

    const-string v1, "-----version<5,\u542f\u52a8apk\u7684\u60ac\u6d6e\u7a97--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->showAssit()V

    :cond_7f
    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->vivoAccountStopAssistView(Landroid/content/Context;)V

    const-string v0, "VivoUnionManager"

    const-string v1, "-----\u5173\u95edsdk\u7684\u60ac\u6d6e\u7a97---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_8a
    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->vivoAccountStartAssistView(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->hideAssit()V

    const-string v0, "VivoUnionManager"

    const-string v1, "-----\u542f\u52a8sdk\u7684\u60ac\u6d6e\u7a97\uff0c\u5173\u95edapk\u7684\u60ac\u6d6e\u7a97---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c
.end method

.method public singlePayment(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    sput-object p2, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    const-string v0, "mPaymentType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sPayType:I

    invoke-static {p1, p2}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePayment(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public singlePaymentDirectly(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->isSinglePay:Z

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    sput-object p2, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sBundle:Landroid/os/Bundle;

    const-string v0, "mPaymentType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->sPayType:I

    invoke-static {p1, p2}, Lcom/bbk/payment/payment/VivoPaymentManager;->singlePaymentDirectly(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public singlePaymentExit(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValuesEnd(Landroid/content/Context;)V

    return-void
.end method

.method public singlePaymentInit(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->saveEventValuesStart(Landroid/content/Context;)V

    return-void
.end method

.method public startLogin(Ljava/lang/String;)V
    .registers 6

    const-string v0, "VivoUnionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----startLogin()----------appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "VivoUnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---111-\u6e38\u620f\u7684\u65b9\u5411\u662f-orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setSDKOrientation(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsSinglePay(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "VivoUnionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----isAPKExits: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bindUnionService()V

    if-eqz v0, :cond_81

    const-string v0, "VivoUnionManager"

    const-string v1, "------\u542f\u52a8\u8054\u8fd0apk\u767b\u9646\u9875\u9762--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->startPluginApk(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setApkPluginStarted(Z)V

    :goto_80
    return-void

    :cond_81
    const-string v0, "VivoUnionManager"

    const-string v1, "-----\u68c0\u6d4b\u5b89\u88c5\u8054\u8fd0apk--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->checkUnionApk()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageNameList()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGamePackageNameList(Ljava/lang/String;)V

    goto :goto_80
.end method

.method public unBindUnionServie()V
    .registers 3

    const-string v0, "VivoUnionManager"

    const-string v1, "------unBindUnionServie() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAIDLManager:Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->unBindServie()V

    return-void
.end method

.method public unRegistVivoAccountChangeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->unRegistListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V

    return-void
.end method

.method public unRegistVivoPayResultListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-virtual {v0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->unRegistListener(Lcom/bbk/payment/payment/OnVivoPayResultListener;)V

    return-void
.end method

.method public unRegistVivoSinglePayResultListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->mVivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    invoke-virtual {v0, p1}, Lcom/bbk/payment/payment/VivoPaymentManager;->unRegistSinglePayListener(Lcom/bbk/payment/payment/OnVivoSinglePayResultListener;)V

    return-void
.end method
