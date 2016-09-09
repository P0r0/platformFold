.class public Lcom/vivo/assist/AssistService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field protected mFunctions:[I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/AssistService;->a:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/assist/AssistService;->status:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartApp(Ljava/lang/String;[I)V
    .registers 3

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onStopApp(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssistService onStopApp called at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/assist/util/LogUtil;->mainLogic(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/vivo/assist/AssistWindowManager;->hideAssistPanel()V

    invoke-virtual {v4}, Lcom/vivo/assist/AssistWindowManager;->hideAssistButton()V

    invoke-virtual {v4}, Lcom/vivo/assist/AssistWindowManager;->getPanel()Lcom/vivo/assist/panel/Panel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/assist/panel/Panel;->clearFunctions()V

    invoke-interface {v0, v4}, Lcom/vivo/assist/panel/Panel;->updateTargetPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public registerAssistFunctions([I)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/AssistService;->mFunctions:[I

    return-void
.end method
