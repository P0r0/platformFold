.class public Lcom/baidu/wallet/remotepay/BDWalletAppPayService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

.field private static final b:Ljava/lang/Integer;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->b:Ljava/lang/Integer;

    const-string v0, ""

    sput-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService$1;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/remotepay/BDWalletAppPayService$1;-><init>(Lcom/baidu/wallet/remotepay/BDWalletAppPayService;)V

    iput-object v0, p0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->d:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a()Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a:Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;)Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;
    .registers 1

    sput-object p0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a:Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public static payEnd(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallet appsdk payEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a:Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    if-eqz v0, :cond_29

    :try_start_24
    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->a:Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;

    invoke-interface {v0, p0, p1}, Lcom/baidu/wallet/remotepay/IRemoteServiceCallback;->onPayEnd(ILjava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_3e

    :cond_29
    :goto_29
    sput-object p1, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->c:Ljava/lang/String;

    const-string v0, "remote \u901a\u77e5\u652f\u4ed8\u7ee7\u7eed\u8d70"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    sget-object v1, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->b:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_37
    sget-object v0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_43

    :cond_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "onBind"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/remotepay/BDWalletAppPayService;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3

    const-string v0, "onRebind"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "onStart"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const-string v0, "onStartCommand"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    const-string v0, "onUnbind"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
