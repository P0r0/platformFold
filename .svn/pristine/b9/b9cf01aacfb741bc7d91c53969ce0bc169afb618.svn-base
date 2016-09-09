.class Lcom/duoku/platform/download/SilentInstallService$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/SilentInstallService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/SilentInstallService;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/SilentInstallService;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/SilentInstallService$2;->a:Lcom/duoku/platform/download/SilentInstallService;

    .line 134
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 145
    iget-object v1, p0, Lcom/duoku/platform/download/SilentInstallService$2;->a:Lcom/duoku/platform/download/SilentInstallService;

    # invokes: Lcom/duoku/platform/download/SilentInstallService;->installSilent(Lcom/duoku/platform/download/mode/InstallPacket;)V
    invoke-static {v1, v0}, Lcom/duoku/platform/download/SilentInstallService;->access$2(Lcom/duoku/platform/download/SilentInstallService;Lcom/duoku/platform/download/mode/InstallPacket;)V

    .line 146
    iget-object v0, p0, Lcom/duoku/platform/download/SilentInstallService$2;->a:Lcom/duoku/platform/download/SilentInstallService;

    # getter for: Lcom/duoku/platform/download/SilentInstallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/duoku/platform/download/SilentInstallService;->access$3(Lcom/duoku/platform/download/SilentInstallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_16} :catch_17

    .line 156
    :cond_16
    :goto_16
    return-void

    .line 149
    :catch_17
    move-exception v0

    .line 151
    # getter for: Lcom/duoku/platform/download/SilentInstallService;->DEBUG:Z
    invoke-static {}, Lcom/duoku/platform/download/SilentInstallService;->access$4()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 153
    const-string v1, "AppInstaller"

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
