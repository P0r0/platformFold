.class public final Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;
.super Landroid/app/Service;


# instance fields
.field private mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

.field private useSelfSdk:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "SecurityService"

    invoke-direct {p0, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    return-void
.end method

.method private stop(Landroid/content/Context;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->startForeground(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/dcLoader/SubUtils;->getLocalService(Landroid/content/Context;)Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onCreate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_19

    :catch_35
    move-exception v0

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    goto :goto_19

    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_35

    goto :goto_19
.end method

.method public onDestroy()V
    .registers 2

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onDestroy(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_d

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    const/4 v1, 0x2

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_e
    :goto_e
    return v1

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onStartCommand(Landroid/content/Context;Landroid/content/Intent;II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_e

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method
