.class public Lcom/vivo/upgrade/UpgradeService;
.super Landroid/app/Service;
.source "UpgradeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Upgrade.UpgradeService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private install(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 26
    if-eqz p1, :cond_25

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Upgrade.UpgradeService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "com.vivo.upgrade.ikey.ACTION_INSTALL_PACKAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 33
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/UpgradeService;->install(Landroid/content/Intent;)V

    .line 37
    .end local v0    # "action":Ljava/lang/String;
    :cond_25
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
