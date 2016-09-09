.class public Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;
.super Ljava/lang/Object;


# static fields
.field private static final BIND_ACTION:Ljava/lang/String; = "com.vivo.plugin.aidl.service"

.field private static final TAG:Ljava/lang/String; = "VivoAIDLManager"


# instance fields
.field appId:Ljava/lang/String;

.field private assitHasShown:Z

.field private bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

.field private hasBind:Z

.field mCallBack:Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPayAndRechargeCallBack:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

.field mSinglePayCallBack:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

.field private mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

.field mserviceConnection:Landroid/content/ServiceConnection;

.field private neadReportRole:Z

.field private neadShowAssit:Z

.field private neadStartLogin:Z

.field private roleName:Ljava/lang/String;

.field private roleid:Ljava/lang/String;

.field private rolelevel:Ljava/lang/String;

.field private serviceArea:Ljava/lang/String;

.field private serviceAreaName:Ljava/lang/String;

.field private vivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadStartLogin:Z

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$1;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mserviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$2;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mCallBack:Lcom/vivo/plugin/aidl/IAccountCallBack$Stub;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$3;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mPayAndRechargeCallBack:Lcom/vivo/plugin/aidl/IPayAndRechargeCallBack;

    new-instance v0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager$4;-><init>(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mSinglePayCallBack:Lcom/vivo/plugin/aidl/ISinglePayCallBack;

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbk/payment/payment/VivoPaymentManager;->getInstance(Landroid/content/Context;)Lcom/bbk/payment/payment/VivoPaymentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->vivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic access$0(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bbkAccountManager:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->rolelevel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceArea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceAreaName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadStartLogin:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadStartLogin:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mVivoAccountManager:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/bbk/payment/payment/VivoPaymentManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->vivoPaymentManager:Lcom/bbk/payment/payment/VivoPaymentManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    return-void
.end method

.method static synthetic access$4(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->showAssitView()V

    return-void
.end method

.method static synthetic access$8(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleid:Ljava/lang/String;

    return-object v0
.end method

.method private getRemoteIntent()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.vivo.plugin.aidl.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.sdkplugin"

    const-string v3, "com.vivo.plugin.aidl.LoginAccInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private hideAssitView()V
    .registers 3

    :try_start_0
    const-string v0, "VivoAIDLManager"

    const-string v1, "----hideAssitView()---\u6e38\u620f\u9000\u51fa\u6216\u8005\u9690\u85cf\uff0c\u8981\u6c42\u9690\u85cf\u60ac\u6d6e\u7a97----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    invoke-interface {v0}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->stopAssistService()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method private showAssitView()V
    .registers 4

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----showAssitView()------executeService:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_3f

    const-string v0, "VivoAIDLManager"

    const-string v1, "----\u6e38\u620f\u663e\u793a\u4e86\uff0c\u8981\u6c42\u663e\u793a\u60ac\u6d6e\u7a97----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->startAssistService(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f
.end method


# virtual methods
.method public bindAidlService()V
    .registers 5

    const-string v0, "-------bindAidlService() enter--------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->getRemoteIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->getRemoteIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mserviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public hide()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z

    const-string v0, "VivoAIDLManager"

    const-string v1, "----hide()-----"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->unBindServie()V

    return-void
.end method

.method public paymentActionInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    invoke-interface {v0, p1, p2}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->paymentActionInit(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public paymentActionInitial(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    invoke-interface {v0, p1}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->paymentActionInitial(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public show()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadShowAssit:Z

    const-string v0, "VivoAIDLManager"

    const-string v1, "----show()-----:"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--\u662f\u5426\u548c\u6e38\u620f\u5df2\u7ecf\u7ed1\u5b9a--:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->showAssitView()V

    :goto_27
    return-void

    :cond_28
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bindAidlService()V

    goto :goto_27
.end method

.method public startPluginApk(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadStartLogin:Z

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->appId:Ljava/lang/String;

    const-string v0, "VivoAIDLManager"

    const-string v1, "----startPluginApk()-----:"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--\u662f\u5426\u548c\u6e38\u620f\u5df2\u7ecf\u7ed1\u5b9a--:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->startPluginApk(Landroid/content/Context;Ljava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bindAidlService()V

    goto :goto_35
.end method

.method public unBindServie()V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------unBindServie() enter---------assitHasShown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hideAssitView()V

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->assitHasShown:Z

    :cond_20
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->mserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    :cond_2d
    return-void
.end method

.method public vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------vivoAccountreportRoleInfo() enter---------hasBind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " executeService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleid:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->rolelevel:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceArea:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->roleName:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->serviceAreaName:Ljava/lang/String;

    const-string v0, "VivoAIDLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--roleid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rolelevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceArea: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roleName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceAreaName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->neadReportRole:Z

    :try_start_6b
    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->hasBind:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->executeService:Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/vivo/plugin/aidl/ExecuteServiceAIDL;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7d
    return-void

    :cond_7e
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/aidl/VivoAIDLManager;->bindAidlService()V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_81} :catch_82

    goto :goto_7d

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7d
.end method
