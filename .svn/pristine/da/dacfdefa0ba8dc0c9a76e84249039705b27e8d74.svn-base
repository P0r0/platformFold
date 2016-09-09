.class public Lcom/u8/sdk/OppoSDK;
.super Ljava/lang/Object;
.source "OppoSDK.java"


# static fields
.field private static appSecret:Ljava/lang/String;

.field private static instance:Lcom/u8/sdk/OppoSDK;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private createTestPayInfo(Lcom/u8/sdk/PayParams;)Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 94
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    .local v0, "payInfo":Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductDesc(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 100
    const-string v1, "http://gamecenter.wanyol.com:8080/gamecenter/callback_test_url"

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setCallbackUrl(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/OppoSDK;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/u8/sdk/OppoSDK;->instance:Lcom/u8/sdk/OppoSDK;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/u8/sdk/OppoSDK;

    invoke-direct {v0}, Lcom/u8/sdk/OppoSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/OppoSDK;->instance:Lcom/u8/sdk/OppoSDK;

    .line 24
    :cond_b
    sget-object v0, Lcom/u8/sdk/OppoSDK;->instance:Lcom/u8/sdk/OppoSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 3

    .prologue
    .line 37
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/OppoSDK$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/OppoSDK$1;-><init>(Lcom/u8/sdk/OppoSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 53
    sget-object v0, Lcom/u8/sdk/OppoSDK;->appSecret:Ljava/lang/String;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private parseSDKParms(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 33
    const-string v0, "OPPO_APPSECRET"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/u8/sdk/OppoSDK;->appSecret:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/u8/sdk/OppoSDK;->parseSDKParms(Lcom/u8/sdk/SDKParams;)V

    .line 29
    invoke-direct {p0}, Lcom/u8/sdk/OppoSDK;->initSDK()V

    .line 30
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/u8/sdk/OppoSDK;->createTestPayInfo(Lcom/u8/sdk/PayParams;)Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    move-result-object v0

    .line 60
    .local v0, "payInfo":Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/OppoSDK$2;

    invoke-direct {v3, p0}, Lcom/u8/sdk/OppoSDK$2;-><init>(Lcom/u8/sdk/OppoSDK;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/nearme/game/sdk/GameCenterSDK;->doSinglePay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V

    .line 90
    return-void
.end method

.method public sdkExit()V
    .registers 4

    .prologue
    .line 107
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/OppoSDK$3;

    invoke-direct {v2, p0}, Lcom/u8/sdk/OppoSDK$3;-><init>(Lcom/u8/sdk/OppoSDK;)V

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->onExit(Landroid/app/Activity;Lcom/nearme/game/sdk/callback/GameExitCallback;)V

    .line 115
    return-void
.end method
