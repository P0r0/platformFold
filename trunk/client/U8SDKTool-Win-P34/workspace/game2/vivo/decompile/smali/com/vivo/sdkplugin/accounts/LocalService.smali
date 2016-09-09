.class public Lcom/vivo/sdkplugin/accounts/LocalService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/LocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/LocalService$LocalBinder;-><init>(Lcom/vivo/sdkplugin/accounts/LocalService;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/LocalService;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/LocalService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    const-string v0, "LocalService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "LocalService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    const-string v0, "LocalService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    const-string v0, "LocalService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->reportPlayTimeInfo(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
