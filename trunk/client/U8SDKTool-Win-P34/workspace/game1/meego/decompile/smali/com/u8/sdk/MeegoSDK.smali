.class public Lcom/u8/sdk/MeegoSDK;
.super Ljava/lang/Object;
.source "MeegoSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/MeegoSDK;


# instance fields
.field private billsDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/u8/sdk/PayParams;",
            ">;"
        }
    .end annotation
.end field

.field loginNo:Ljava/lang/String;

.field payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "0123456789012345"

    iput-object v0, p0, Lcom/u8/sdk/MeegoSDK;->loginNo:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/MeegoSDK;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/u8/sdk/MeegoSDK;->billsDic:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/MeegoSDK;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/u8/sdk/MeegoSDK;->instance:Lcom/u8/sdk/MeegoSDK;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Lcom/u8/sdk/MeegoSDK;

    invoke-direct {v0}, Lcom/u8/sdk/MeegoSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/MeegoSDK;->instance:Lcom/u8/sdk/MeegoSDK;

    .line 31
    :cond_b
    sget-object v0, Lcom/u8/sdk/MeegoSDK;->instance:Lcom/u8/sdk/MeegoSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 45
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/MeegoSDK;->billsDic:Ljava/util/HashMap;

    .line 48
    iget-object v0, p0, Lcom/u8/sdk/MeegoSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    new-instance v0, Lcom/u8/sdk/MeegoSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/MeegoSDK$1;-><init>(Lcom/u8/sdk/MeegoSDK;)V

    iput-object v0, p0, Lcom/u8/sdk/MeegoSDK;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    .line 86
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "init success"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 40
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/MeegoSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/MeegoSDK$2;-><init>(Lcom/u8/sdk/MeegoSDK;)V

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/GameInterface;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 120
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/u8/sdk/MeegoSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 36
    invoke-direct {p0}, Lcom/u8/sdk/MeegoSDK;->initSDK()V

    .line 37
    return-void
.end method

.method public login()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 9
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    const/4 v1, 0x1

    .line 94
    const-string v0, "PayInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pay req: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getMeegoCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, "orderID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 97
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v6

    .line 98
    :cond_46
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getMeegoCode()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "meegoCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/u8/sdk/MeegoSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 101
    iget-object v0, p0, Lcom/u8/sdk/MeegoSDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_57
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/u8/sdk/MeegoSDK;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    move v2, v1

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    .line 103
    return-void
.end method
