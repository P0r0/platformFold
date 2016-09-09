.class public Lcom/vivo/sdkplugin/LoginCenter;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/vivo/sdkplugin/i;

.field private e:Landroid/os/Handler;

.field private f:Lcom/vivo/sdkplugin/net/HttpConnect;

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->d:Lcom/vivo/sdkplugin/i;

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/LoginCenter;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/LoginCenter;->e:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->a:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/LoginCenter;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "LoginCenter"

    const-string v1, "------------vivoLogin() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/LoginCenter;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_LOGIN_URL:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    new-instance v7, Lcom/vivo/sdkplugin/k;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/k;-><init>(Lcom/vivo/sdkplugin/LoginCenter;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.LOGIN_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/i;

    iget-object v1, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/i;-><init>(Lcom/vivo/sdkplugin/LoginCenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->d:Lcom/vivo/sdkplugin/i;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->d:Lcom/vivo/sdkplugin/i;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/LoginCenter;->d:Lcom/vivo/sdkplugin/i;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/i;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/LoginCenter;ILjava/lang/String;)V
    .registers 6

    const-string v0, "LoginCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/LoginCenter;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "LoginCenter"

    const-string v1, "------------tempUserLogin() enter------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/LoginCenter;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_TEMP_URL:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    new-instance v7, Lcom/vivo/sdkplugin/j;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/j;-><init>(Lcom/vivo/sdkplugin/LoginCenter;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/LoginCenter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelLogin()V
    .registers 4

    const-string v0, "LoginCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->c:Landroid/os/HandlerThread;

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/LoginCenter;->f:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/net/HttpConnect;->cancelConnect()V

    :cond_2b
    return-void
.end method

.method public doTempLogin(Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/LoginCenter;->a(I)V

    return-void
.end method

.method public doVivoLogin(Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/LoginCenter;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/LoginCenter;->a(I)V

    return-void
.end method
