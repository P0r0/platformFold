.class public Lcom/vivo/sdkplugin/ReportFirstLoginManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/p;

.field private d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->c:Lcom/vivo/sdkplugin/p;

    iput-object p1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->a:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/ReportFirstLoginManager;)Ljava/util/Map;
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "ReportFirstLoginManager"

    const-string v1, "---------getReportFirstLogin() enter ---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_19
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "model"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p_n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v1, "5.0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subopenid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v5}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REPORTFIRSTLOGIN_URL:Ljava/lang/String;

    new-instance v6, Lcom/vivo/sdkplugin/q;

    invoke-direct {v6, p0, v3}, Lcom/vivo/sdkplugin/q;-><init>(Lcom/vivo/sdkplugin/ReportFirstLoginManager;B)V

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-object v2

    :cond_72
    move-object v0, v5

    goto :goto_19
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/ReportFirstLoginManager;ILjava/lang/String;)V
    .registers 6

    const-string v0, "ReportFirstLoginManager"

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

.method static synthetic b(Lcom/vivo/sdkplugin/ReportFirstLoginManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->d:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method


# virtual methods
.method public cancelReportFirstLogin()V
    .registers 4

    const-string v0, "ReportFirstLoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLogin, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    :cond_22
    return-void
.end method

.method public reportFirstLogin()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.getReportFirstLogin"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/p;

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/p;-><init>(Lcom/vivo/sdkplugin/ReportFirstLoginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->c:Lcom/vivo/sdkplugin/p;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->c:Lcom/vivo/sdkplugin/p;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/p;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->c:Lcom/vivo/sdkplugin/p;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/p;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
