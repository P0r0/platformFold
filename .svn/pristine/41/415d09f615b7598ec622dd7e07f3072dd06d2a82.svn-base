.class public Lcom/u8/sdk/BaiduSDK;
.super Ljava/lang/Object;
.source "BaiduSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/BaiduSDK;


# instance fields
.field private appID:I

.field private appKey:Ljava/lang/String;

.field private isFixedpay:Z

.field private mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

.field private mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

.field private ratio:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAnalytics;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

    return-object v0
.end method

.method private buildOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/baidu/platformsdk/PayOrderInfo;
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 198
    new-instance v0, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-direct {v0}, Lcom/baidu/platformsdk/PayOrderInfo;-><init>()V

    .line 199
    .local v0, "payOrderInfo":Lcom/baidu/platformsdk/PayOrderInfo;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setCooperatorOrderSerial(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setProductName(Ljava/lang/String;)V

    .line 202
    iget-boolean v1, p0, Lcom/u8/sdk/BaiduSDK;->isFixedpay:Z

    if-eqz v1, :cond_2b

    .line 203
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    .line 204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    .line 210
    :goto_25
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setExtInfo(Ljava/lang/String;)V

    .line 211
    return-object v0

    .line 206
    :cond_2b
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    .line 207
    iget v1, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    goto :goto_25
.end method

.method public static getInstance()Lcom/u8/sdk/BaiduSDK;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/u8/sdk/BaiduSDK;

    invoke-direct {v0}, Lcom/u8/sdk/BaiduSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    .line 35
    :cond_b
    sget-object v0, Lcom/u8/sdk/BaiduSDK;->instance:Lcom/u8/sdk/BaiduSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 5

    .prologue
    .line 51
    new-instance v0, Lcom/baidu/gamesdk/BDGameSDKSetting;

    invoke-direct {v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;-><init>()V

    .line 52
    .local v0, "mBDGameSDKSetting":Lcom/baidu/gamesdk/BDGameSDKSetting;
    iget v1, p0, Lcom/u8/sdk/BaiduSDK;->appID:I

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppID(I)V

    .line 53
    iget-object v1, p0, Lcom/u8/sdk/BaiduSDK;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppKey(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->RELEASE:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setDomain(Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;)V

    .line 55
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/u8/sdk/baidu/Utils;->getOrientation(Landroid/content/Context;)Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setOrientation(Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;)V

    .line 57
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/BaiduSDK$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$1;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 88
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/BaiduSDK$2;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$2;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v1, v0, v2}, Lcom/baidu/gamesdk/BDGameSDK;->init(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    .line 107
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->setSuspendWindowChangeAccountListener()V

    .line 108
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->setSessionInvalidListener()V

    .line 110
    new-instance v1, Lcom/baidu/gamesdk/ActivityAnalytics;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/gamesdk/ActivityAnalytics;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;

    .line 111
    new-instance v1, Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/BaiduSDK$3;

    invoke-direct {v3, p0}, Lcom/u8/sdk/BaiduSDK$3;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-direct {v1, v2, v3}, Lcom/baidu/gamesdk/ActivityAdPage;-><init>(Landroid/app/Activity;Lcom/baidu/gamesdk/ActivityAdPage$Listener;)V

    iput-object v1, p0, Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;

    .line 117
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 44
    const-string v0, "BD_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->appID:I

    .line 45
    const-string v0, "BD_AAKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/BaiduSDK;->appKey:Ljava/lang/String;

    .line 46
    const-string v0, "BD_FIXED_PAY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/u8/sdk/BaiduSDK;->isFixedpay:Z

    .line 47
    const-string v0, "BD_RATIO"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/u8/sdk/BaiduSDK;->ratio:I

    .line 48
    return-void
.end method

.method private setSessionInvalidListener()V
    .registers 2

    .prologue
    .line 242
    new-instance v0, Lcom/u8/sdk/BaiduSDK$9;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$9;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSessionInvalidListener(Lcom/baidu/gamesdk/IResponse;)V

    .line 255
    return-void
.end method

.method private setSuspendWindowChangeAccountListener()V
    .registers 2

    .prologue
    .line 215
    new-instance v0, Lcom/u8/sdk/BaiduSDK$8;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$8;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSuspendWindowChangeAccountListener(Lcom/baidu/gamesdk/IResponse;)V

    .line 236
    return-void
.end method


# virtual methods
.method public closeFloatView()V
    .registers 3

    .prologue
    .line 187
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/BaiduSDK$7;

    invoke-direct {v1, p0}, Lcom/u8/sdk/BaiduSDK$7;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/u8/sdk/BaiduSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 40
    invoke-direct {p0}, Lcom/u8/sdk/BaiduSDK;->initSDK()V

    .line 41
    return-void
.end method

.method public login()V
    .registers 2

    .prologue
    .line 120
    new-instance v0, Lcom/u8/sdk/BaiduSDK$4;

    invoke-direct {v0, p0}, Lcom/u8/sdk/BaiduSDK$4;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->login(Lcom/baidu/gamesdk/IResponse;)V

    .line 146
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 5
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/u8/sdk/BaiduSDK;->buildOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/baidu/platformsdk/PayOrderInfo;

    move-result-object v0

    .line 151
    .local v0, "payOrderInfo":Lcom/baidu/platformsdk/PayOrderInfo;
    const/4 v1, 0x0

    .line 152
    new-instance v2, Lcom/u8/sdk/BaiduSDK$5;

    invoke-direct {v2, p0}, Lcom/u8/sdk/BaiduSDK$5;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    .line 151
    invoke-static {v0, v1, v2}, Lcom/baidu/gamesdk/BDGameSDK;->pay(Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    .line 174
    return-void
.end method

.method public showFloatView()V
    .registers 3

    .prologue
    .line 177
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/BaiduSDK$6;

    invoke-direct {v1, p0}, Lcom/u8/sdk/BaiduSDK$6;-><init>(Lcom/u8/sdk/BaiduSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method
