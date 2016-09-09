.class public Lcom/u8/sdk/MMSDK;
.super Ljava/lang/Object;
.source "MMSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/MMSDK;


# instance fields
.field private APPID:Ljava/lang/String;

.field private APPKEY:Ljava/lang/String;

.field private LEASE_PAYCODE:Ljava/lang/String;

.field private mListener:Lcom/u8/sdk/IAPListener;

.field private purchase:Lmm/purchasesdk/Purchase;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/MMSDK;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/u8/sdk/MMSDK;->instance:Lcom/u8/sdk/MMSDK;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/u8/sdk/MMSDK;

    invoke-direct {v0}, Lcom/u8/sdk/MMSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/MMSDK;->instance:Lcom/u8/sdk/MMSDK;

    .line 22
    :cond_b
    sget-object v0, Lcom/u8/sdk/MMSDK;->instance:Lcom/u8/sdk/MMSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 7

    .prologue
    .line 47
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    .line 48
    .local v2, "mainContext":Landroid/app/Activity;
    new-instance v1, Lcom/u8/sdk/IAPHandler;

    invoke-direct {v1, v2}, Lcom/u8/sdk/IAPHandler;-><init>(Landroid/app/Activity;)V

    .line 49
    .local v1, "iapHandler":Lcom/u8/sdk/IAPHandler;
    new-instance v3, Lcom/u8/sdk/IAPListener;

    invoke-direct {v3, v2, v1}, Lcom/u8/sdk/IAPListener;-><init>(Landroid/content/Context;Lcom/u8/sdk/IAPHandler;)V

    iput-object v3, p0, Lcom/u8/sdk/MMSDK;->mListener:Lcom/u8/sdk/IAPListener;

    .line 50
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v3

    iput-object v3, p0, Lcom/u8/sdk/MMSDK;->purchase:Lmm/purchasesdk/Purchase;

    .line 52
    :try_start_1a
    iget-object v3, p0, Lcom/u8/sdk/MMSDK;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v4, p0, Lcom/u8/sdk/MMSDK;->APPID:Ljava/lang/String;

    iget-object v5, p0, Lcom/u8/sdk/MMSDK;->APPKEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_2b

    .line 58
    :goto_23
    :try_start_23
    iget-object v3, p0, Lcom/u8/sdk/MMSDK;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v4, p0, Lcom/u8/sdk/MMSDK;->mListener:Lcom/u8/sdk/IAPListener;

    invoke-virtual {v3, v2, v4}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_30

    .line 62
    :goto_2a
    return-void

    .line 53
    :catch_2b
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_30
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 40
    const-string v0, "BD_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MMSDK;->APPID:Ljava/lang/String;

    .line 41
    const-string v0, "BD_AAKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MMSDK;->APPKEY:Ljava/lang/String;

    .line 42
    const-string v0, "LEASE_PAYCODE"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MMSDK;->LEASE_PAYCODE:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/u8/sdk/MMSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 35
    invoke-direct {p0}, Lcom/u8/sdk/MMSDK;->initSDK()V

    .line 36
    return-void
.end method

.method public login()V
    .registers 1

    .prologue
    .line 66
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 7
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/u8/sdk/MMSDK;->purchase:Lmm/purchasesdk/Purchase;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/u8/sdk/MMSDK;->LEASE_PAYCODE:Ljava/lang/String;

    iget-object v4, p0, Lcom/u8/sdk/MMSDK;->mListener:Lcom/u8/sdk/IAPListener;

    invoke-virtual {v1, v2, v3, v4}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 75
    :goto_11
    return-void

    .line 72
    :catch_12
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
