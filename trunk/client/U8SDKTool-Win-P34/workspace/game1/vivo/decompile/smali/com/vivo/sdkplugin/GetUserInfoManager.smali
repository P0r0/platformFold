.class public Lcom/vivo/sdkplugin/GetUserInfoManager;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_GET_USER_INFO_FAIL:I = 0x411

.field public static final MSG_GET_USER_INFO_SUCCUSS:I = 0x410


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/e;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->c:Lcom/vivo/sdkplugin/e;

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetUserInfoManager;)Ljava/util/Map;
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "GetUserInfoManager"

    const-string v1, "-------getUserInfo() enter---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appName"

    const-string v1, "com.vivo.sdkplugin"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "imei"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p_n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "imei"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->IS_OLD_USER_CHECK_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/f;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/f;-><init>(Lcom/vivo/sdkplugin/GetUserInfoManager;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/GetUserInfoManager;ILjava/lang/String;)V
    .registers 6

    const-string v0, "GetUserInfoManager"

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

.method static synthetic b(Lcom/vivo/sdkplugin/GetUserInfoManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelGetAppVersion()V
    .registers 4

    const-string v0, "GetUserInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method public getUserInfo()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.getUserInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/e;

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/e;-><init>(Lcom/vivo/sdkplugin/GetUserInfoManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->c:Lcom/vivo/sdkplugin/e;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->c:Lcom/vivo/sdkplugin/e;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/GetUserInfoManager;->c:Lcom/vivo/sdkplugin/e;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
