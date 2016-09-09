.class public Lcom/vivo/sdkplugin/accounts/VivoAccountManager;
.super Ljava/lang/Object;


# static fields
.field static b:[I

.field static c:[I

.field private static e:Landroid/content/Context;

.field private static g:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Lcom/vivo/sdkplugin/accounts/e;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:J

.field private static p:Landroid/content/Intent;

.field private static q:Lcom/vivo/assist/AssistWindowManager;


# instance fields
.field a:Lcom/vivo/sdkplugin/adapter/FloatViewConfigJsonParser;

.field private d:Landroid/content/Context;

.field private f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field protected mFunctions:[I

.field private r:Lcom/vivo/sdkplugin/accounts/i;

.field private s:Ljava/util/ArrayList;

.field public status:I

.field private t:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->h:Landroid/os/HandlerThread;

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->i:Lcom/vivo/sdkplugin/accounts/e;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->o:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/i;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/accounts/i;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->r:Lcom/vivo/sdkplugin/accounts/i;

    iput v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->status:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    sput-object p1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const-string v0, "VivoAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "instance"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v0, "VivoAccountManager"

    const-string v1, "getreportRoleInfo()------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "openid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subopenid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "roleid"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "level"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_42
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "model"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p_n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v1, "5.0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serviceArea"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serviceAreaName"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "roleName"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->n:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v5}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REPORTROLE_URL:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v6, Lcom/vivo/sdkplugin/accounts/h;

    invoke-direct {v6, p0, v4}, Lcom/vivo/sdkplugin/accounts/h;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-object v2

    :cond_95
    move-object v0, v5

    goto :goto_42
.end method

.method static synthetic a(I)V
    .registers 2

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/assist/AssistWindowManager;)V
    .registers 1

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->s:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b()Lcom/vivo/assist/AssistWindowManager;
    .registers 1

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v0, "VivoAccountManager"

    const-string v1, "---getreportPlayTimeInfo()------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "openid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subopenid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_34
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "model"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "p_n"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verCode"

    const-string v1, "5.0"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "s_t"

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getloginStartTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e_t"

    sget-wide v6, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->o:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnectSDK;

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v5}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REPORTPLAYTIME_URL:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v6, Lcom/vivo/sdkplugin/accounts/g;

    invoke-direct {v6, p0, v4}, Lcom/vivo/sdkplugin/accounts/g;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/net/HttpConnectSDK;->connect(Ljava/lang/String;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponedSDK;)V

    return-object v2

    :cond_8c
    move-object v0, v5

    goto :goto_34
.end method

.method private static b(I)V
    .registers 4

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.ACCOUNT_INFO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_10
    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->i:Lcom/vivo/sdkplugin/accounts/e;

    if-nez v0, :cond_2a

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/accounts/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/vivo/sdkplugin/accounts/e;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;Landroid/os/Looper;)V

    sput-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->i:Lcom/vivo/sdkplugin/accounts/e;

    :cond_2a
    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->i:Lcom/vivo/sdkplugin/accounts/e;

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/accounts/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/Map;
    .registers 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "version"

    const-string v1, "1.0.0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkVersion"

    const-string v1, "5.0"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "packageName"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_game"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_43
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_CONFIG_URL:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x2

    new-instance v7, Lcom/vivo/sdkplugin/accounts/f;

    invoke-direct {v7, p0, v6}, Lcom/vivo/sdkplugin/accounts/f;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_72
    move-object v0, v2

    goto :goto_43
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "av"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "model"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "openid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "g;a"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendGreneralInfomation(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_CLIENTREQUEST_GAMEDYNAMIC_URL:Ljava/lang/String;

    const/4 v5, 0x2

    new-instance v7, Lcom/vivo/sdkplugin/accounts/j;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/accounts/j;-><init>(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_71
    move-object v0, v2

    goto :goto_2d
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Lcom/vivo/sdkplugin/accounts/i;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->r:Lcom/vivo/sdkplugin/accounts/i;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/accounts/VivoAccountManager;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;
    .registers 2

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    :cond_b
    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->g:Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    return-object v0
.end method

.method public static onStartApp(Ljava/lang/String;[I)V
    .registers 3

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b(I)V

    return-void
.end method

.method public static onStopApp(Ljava/lang/String;)V
    .registers 5

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

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    if-nez v0, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->hideAssistPanel()V

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->hideAssistButton()V

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->removeAssistButton()V

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->q:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->getPanel()Lcom/vivo/assist/panel/Panel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/assist/panel/Panel;->clearFunctions()V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/assist/panel/Panel;->updateTargetPackageName(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static reportPlayTimeInfo(Landroid/content/Context;)V
    .registers 5

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->o:J

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getloginStartTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b(I)V

    :cond_18
    return-void
.end method

.method public static startAssistService(Landroid/content/Context;)V
    .registers 6

    const-string v0, "VivoAccountManager"

    const-string v1, "------startAssistService() enter---------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VivoAccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----packageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vivo/assist/AssistService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->p:Landroid/content/Intent;

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->p:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAssitViewShow(Z)V

    :cond_3c
    return-void
.end method

.method public static stopAssistService(Landroid/content/Context;)V
    .registers 3

    const-string v0, "VivoAccountManager"

    const-string v1, "------stopAssistService() enter---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAssitViewShow(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/assist/AssistService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static vivoAccountStartAssistView(Landroid/content/Context;)V
    .registers 4

    const-string v0, "AssistivePoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "context"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b:[I

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->onStartApp(Ljava/lang/String;[I)V

    return-void
.end method

.method public static vivoAccountStopAssistView(Landroid/content/Context;)V
    .registers 4

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    const-string v0, "AssistivePoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "context"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mRemoteContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->onStopApp(Ljava/lang/String;)V

    return-void
.end method

.method public static vivoAccountonDestroy(Landroid/content/Context;)V
    .registers 5

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->o:J

    invoke-static {p0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountStopAssistView(Landroid/content/Context;)V

    sget-object v0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getloginStartTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b(I)V

    :cond_1b
    return-void
.end method

.method public static vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    sput-object p4, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->e:Landroid/content/Context;

    sput-object p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->j:Ljava/lang/String;

    sput-object p1, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->k:Ljava/lang/String;

    sput-object p2, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->l:Ljava/lang/String;

    sput-object p3, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->n:Ljava/lang/String;

    sput-object p5, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->m:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->b(I)V

    return-void
.end method


# virtual methods
.method public getGetDisplayHeight()I
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getGetDisplayWidth()I
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public registeListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public registerAssistFunctions([I)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->mFunctions:[I

    return-void
.end method

.method public removeAccount()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->removeAccount()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountRemove(Z)V

    return-void
.end method

.method public unRegistListener(Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public vivoAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSuccess(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getApkPluginStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->f:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VivoAccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vivoAccountLogin, appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    const-string v3, "com.vivo.sdkplugin"

    invoke-static {v2, v3}, Lcom/bbk/payment/util/UtilTool;->getVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_43

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lcom/bbk/payment/payment/VivoPaymentManager;->paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5b

    return-void

    :cond_43
    iget-object v2, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/sdkplugin/aidl/VivoPluginManager;->checkIfAPKExits(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4d

    if-nez v0, :cond_53

    :cond_4d
    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->d:Landroid/content/Context;

    invoke-static {v0, v1, p2}, Lcom/bbk/payment/payment/VivoPaymentManager;->paymentInitial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_53
    const-string v0, "VivoAccountManager"

    const-string v1, "apk start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_5b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;->onAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public vivoAccountLoginCancled()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

    invoke-interface {v0}, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;->onAccountLoginCancled()V

    goto :goto_6
.end method

.method public vivoAccountRemove(Z)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;

    invoke-interface {v0, p1}, Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;->onAccountRemove(Z)V

    goto :goto_6
.end method
