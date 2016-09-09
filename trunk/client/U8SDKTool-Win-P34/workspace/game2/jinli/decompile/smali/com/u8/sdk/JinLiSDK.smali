.class public Lcom/u8/sdk/JinLiSDK;
.super Ljava/lang/Object;
.source "JinLiSDK.java"


# static fields
.field public static apiKey:Ljava/lang/String;

.field private static instance:Lcom/u8/sdk/JinLiSDK;

.field public static privateKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v0

    const-string v1, "JL_APIKEY"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/u8/sdk/JinLiSDK;->apiKey:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v0

    const-string v1, "JL_PRIVATEKEY"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/u8/sdk/JinLiSDK;->privateKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private createOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/gionee/game/offlinesdk/OrderInfo;
    .registers 4
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 75
    new-instance v0, Lcom/gionee/game/offlinesdk/OrderInfo;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/OrderInfo;-><init>()V

    .line 76
    .local v0, "orderInfo":Lcom/gionee/game/offlinesdk/OrderInfo;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/OrderInfo;->setCpOrderNum(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/OrderInfo;->setProductName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/OrderInfo;->setTotalFee(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/OrderInfo;->setPayMethod(I)V

    .line 86
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/OrderInfo;->setUserId(Ljava/lang/String;)V

    .line 88
    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/JinLiSDK;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/u8/sdk/JinLiSDK;->instance:Lcom/u8/sdk/JinLiSDK;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/u8/sdk/JinLiSDK;

    invoke-direct {v0}, Lcom/u8/sdk/JinLiSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/JinLiSDK;->instance:Lcom/u8/sdk/JinLiSDK;

    .line 25
    :cond_b
    sget-object v0, Lcom/u8/sdk/JinLiSDK;->instance:Lcom/u8/sdk/JinLiSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 34
    new-instance v0, Lcom/u8/sdk/JinLiSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/JinLiSDK$1;-><init>(Lcom/u8/sdk/JinLiSDK;)V

    .line 46
    .local v0, "mInitPluginCallback":Lcom/gionee/game/offlinesdk/InitPluginCallback;
    invoke-static {}, Lcom/gionee/game/offlinesdk/GamePlatform;->getInstance()Lcom/gionee/game/offlinesdk/GamePlatform;

    move-result-object v1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/gionee/game/offlinesdk/GamePlatform;->initPlugin(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/InitPluginCallback;)V

    .line 47
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 51
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/u8/sdk/JinLiSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 30
    invoke-direct {p0}, Lcom/u8/sdk/JinLiSDK;->initSDK()V

    .line 31
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/u8/sdk/JinLiSDK;->createOrderInfo(Lcom/u8/sdk/PayParams;)Lcom/gionee/game/offlinesdk/OrderInfo;

    move-result-object v0

    .line 58
    .local v0, "orderInfo":Lcom/gionee/game/offlinesdk/OrderInfo;
    invoke-static {}, Lcom/gionee/game/offlinesdk/GamePlatform;->getInstance()Lcom/gionee/game/offlinesdk/GamePlatform;

    move-result-object v1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/JinLiSDK$2;

    invoke-direct {v3, p0}, Lcom/u8/sdk/JinLiSDK$2;-><init>(Lcom/u8/sdk/JinLiSDK;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/gionee/game/offlinesdk/GamePlatform;->pay(Landroid/app/Activity;Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V

    .line 72
    return-void
.end method
