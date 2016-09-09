.class public Lcom/vivo/sdkplugin/GetVerifyCodeManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/g;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->c:Lcom/vivo/sdkplugin/g;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetVerifyCodeManager;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "GetVerifyCodeManager"

    const-string v1, "------------vivoLogin() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_GETREGCODEFORSDK_URL:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->e:Ljava/util/HashMap;

    new-instance v7, Lcom/vivo/sdkplugin/h;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/h;-><init>(Lcom/vivo/sdkplugin/GetVerifyCodeManager;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/GetVerifyCodeManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/GetVerifyCodeManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelLogin()V
    .registers 4

    const-string v0, "GetVerifyCodeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method public getVerifyCode(Ljava/util/HashMap;)V
    .registers 4

    iput-object p1, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.getVerifyCode"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/g;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/g;-><init>(Lcom/vivo/sdkplugin/GetVerifyCodeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->c:Lcom/vivo/sdkplugin/g;

    :cond_21
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->c:Lcom/vivo/sdkplugin/g;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/g;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->c:Lcom/vivo/sdkplugin/g;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/g;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
