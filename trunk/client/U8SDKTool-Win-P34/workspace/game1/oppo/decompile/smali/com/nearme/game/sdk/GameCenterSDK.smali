.class public Lcom/nearme/game/sdk/GameCenterSDK;
.super Ljava/lang/Object;
.source "GameCenterSDK.java"


# static fields
.field private static a:Lcom/nearme/game/sdk/GameCenterSDK;

.field private static b:Lcom/nearme/game/sdk/b;


# direct methods
.method private constructor <init>(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/nearme/game/sdk/b;

    invoke-direct {v0, p2, p1}, Lcom/nearme/game/sdk/b;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/nearme/game/sdk/b;

    invoke-direct {v0, p2, p1}, Lcom/nearme/game/sdk/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 35
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 65
    invoke-static {v1}, Lcom/nearme/game/sdk/common/util/AppUtil;->getPPid(I)I

    move-result v1

    invoke-static {v1}, Lcom/nearme/game/sdk/common/util/AppUtil;->getPPid(I)I

    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq v0, v2, :cond_23

    if-nez v1, :cond_24

    .line 70
    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static getInstance()Lcom/nearme/game/sdk/GameCenterSDK;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_c

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GameCenterSDK must be init before call getInstance()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    return-object v0
.end method

.method public static init(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_19

    .line 41
    const-class v1, Lcom/nearme/game/sdk/GameCenterSDK;

    monitor-enter v1

    .line 42
    :try_start_d
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_18

    .line 43
    new-instance v0, Lcom/nearme/game/sdk/GameCenterSDK;

    invoke-direct {v0, p0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;-><init>(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    .line 45
    :cond_18
    monitor-exit v1

    .line 48
    :cond_19
    return-void

    .line 45
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 51
    invoke-static {p1}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 52
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_19

    .line 53
    const-class v1, Lcom/nearme/game/sdk/GameCenterSDK;

    monitor-enter v1

    .line 54
    :try_start_d
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_18

    .line 55
    new-instance v0, Lcom/nearme/game/sdk/GameCenterSDK;

    invoke-direct {v0, p0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    .line 57
    :cond_18
    monitor-exit v1

    .line 60
    :cond_19
    return-void

    .line 57
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static isFromGameCenter(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doGetTokenAndSsoid(Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1234
    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 103
    return-void
.end method

.method public doGetUserInfo(Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 98
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1230
    const/16 v1, 0x1b63

    invoke-virtual {v0, v1, p1, p2}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 99
    return-void
.end method

.method public doLogin(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 6

    .prologue
    .line 86
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1116
    const/16 v1, 0x1b5b

    new-instance v2, Lcom/nearme/game/sdk/b$2;

    invoke-direct {v2, v0, p2}, Lcom/nearme/game/sdk/b$2;-><init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 87
    return-void
.end method

.method public doPay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 94
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 95
    return-void
.end method

.method public doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V
    .registers 3

    .prologue
    .line 106
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1238
    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public doReportUserGameInfoData(Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 110
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1242
    const/16 v1, 0x1b66

    invoke-virtual {v0, v1, p1, p2}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 111
    return-void
.end method

.method public doSinglePay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V
    .registers 5

    .prologue
    .line 90
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V

    .line 91
    return-void
.end method

.method public launchGameCenter(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 118
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1247
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1248
    const-string v2, "com.nearme.gamecenter"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1249
    if-eqz v1, :cond_2e

    .line 1250
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_17

    .line 1251
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1253
    :cond_17
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1254
    const/16 v1, 0x1b65

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "100163"

    const-string v4, "6301"

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 1259
    :cond_2e
    :goto_2e
    return-void

    .line 1258
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public onExit(Landroid/app/Activity;Lcom/nearme/game/sdk/callback/GameExitCallback;)V
    .registers 6

    .prologue
    .line 82
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1096
    const/16 v1, 0x1b67

    new-instance v2, Lcom/nearme/game/sdk/b$1;

    invoke-direct {v2, v0, p2, p1}, Lcom/nearme/game/sdk/b$1;-><init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/GameExitCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 83
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 78
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1092
    const/16 v1, 0x1b69

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 79
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Landroid/app/Activity;)V

    .line 75
    return-void
.end method
