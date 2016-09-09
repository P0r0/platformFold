.class public Lcom/vivo/sdkplugin/GetSubAccountCenter;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/c;

.field private d:Landroid/os/Handler;

.field private e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c:Lcom/vivo/sdkplugin/c;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->d:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "GetSubAccountCenter"

    const-string v1, "-------getSubAccountInfo() enter---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_GETSUBACCOUNTINFO_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/d;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/d;-><init>(Lcom/vivo/sdkplugin/GetSubAccountCenter;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_48
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->e:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------pwd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "   md5Pwd:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetSubAccountCenter;ILjava/lang/String;)V
    .registers 6

    const-string v0, "GetSubAccountCenter"

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

.method static synthetic b(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/GetSubAccountCenter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelLogin()V
    .registers 4

    const-string v0, "GetSubAccountCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method public getSubAccount()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.GET_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/c;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/c;-><init>(Lcom/vivo/sdkplugin/GetSubAccountCenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c:Lcom/vivo/sdkplugin/c;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c:Lcom/vivo/sdkplugin/c;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/c;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetSubAccountCenter;->c:Lcom/vivo/sdkplugin/c;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
