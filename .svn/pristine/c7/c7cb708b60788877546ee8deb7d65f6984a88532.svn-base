.class Lcom/duoku/platform/download/utils/AppSilentInstaller$a;
.super Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/AppSilentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppSilentInstaller;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppSilentInstaller;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller$a;->a:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    invoke-direct {p0}, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 305
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 306
    const-string v1, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyAutoInstallAppMonitorReceiver receive broadcast,action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_34
    if-eqz v0, :cond_44

    const-string v1, "duoku.gamesearch.intent.action.PACKAGE_ADDED_AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 310
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller$a;->a:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    # invokes: Lcom/duoku/platform/download/utils/AppSilentInstaller;->notifyInstallStatus(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->access$0(Lcom/duoku/platform/download/utils/AppSilentInstaller;Landroid/content/Intent;)V

    .line 317
    :cond_43
    :goto_43
    return-void

    .line 312
    :cond_44
    const-string v1, "duoku.gamesearch.intent.action.INSTALL_SERVICE_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 315
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSilentInstaller$a;->a:Lcom/duoku/platform/download/utils/AppSilentInstaller;

    # invokes: Lcom/duoku/platform/download/utils/AppSilentInstaller;->unregisterReceiver(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->access$1(Lcom/duoku/platform/download/utils/AppSilentInstaller;Landroid/content/Context;)V

    goto :goto_43
.end method
