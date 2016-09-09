.class public Lcom/u8/sdk/CombinePaySDK;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/CombinePaySDK;


# instance fields
.field private MMAPPID:Ljava/lang/String;

.field private MMAPPKEY:Ljava/lang/String;

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

.field meegoPayCallbackayCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

.field mmOnPurchaseListener:Lmm/purchasesdk/OnPurchaseListener;

.field private mmPurchase:Lmm/purchasesdk/Purchase;

.field unicomListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/u8/sdk/CombinePaySDK;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/u8/sdk/CombinePaySDK;->instance:Lcom/u8/sdk/CombinePaySDK;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/u8/sdk/CombinePaySDK;

    invoke-direct {v0}, Lcom/u8/sdk/CombinePaySDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/CombinePaySDK;->instance:Lcom/u8/sdk/CombinePaySDK;

    .line 38
    :cond_b
    sget-object v0, Lcom/u8/sdk/CombinePaySDK;->instance:Lcom/u8/sdk/CombinePaySDK;

    return-object v0
.end method


# virtual methods
.method public egamePay(Lcom/u8/sdk/PayParams;)V
    .registers 6
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "hashParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getEgameCode()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "payCode":Ljava/lang/String;
    const-string v2, "toolsAlias"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "priority"

    const-string v3, "sms"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 227
    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_22
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/CombinePaySDK$4;

    invoke-direct {v3, p0}, Lcom/u8/sdk/CombinePaySDK$4;-><init>(Lcom/u8/sdk/CombinePaySDK;)V

    invoke-static {v2, v0, v3}, Lcn/egame/terminal/paysdk/EgamePay;->pay(Landroid/app/Activity;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    .line 277
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 6
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    .line 45
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    .line 46
    new-instance v1, Lcom/u8/sdk/CombinePaySDK$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/CombinePaySDK$1;-><init>(Lcom/u8/sdk/CombinePaySDK;)V

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->meegoPayCallbackayCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/app/Activity;)V

    .line 87
    new-instance v1, Lcom/u8/sdk/CombinePaySDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/CombinePaySDK$2;-><init>(Lcom/u8/sdk/CombinePaySDK;)V

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->unicomListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    .line 125
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK;->unicomListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    invoke-virtual {v1, v2, v3}, Lcom/unicom/dcLoader/Utils;->initPayContext(Landroid/app/Activity;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    .line 129
    const-string v1, "MM_APPID"

    invoke-virtual {p1, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->MMAPPID:Ljava/lang/String;

    .line 130
    const-string v1, "MM_AAKEY"

    invoke-virtual {p1, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->MMAPPKEY:Ljava/lang/String;

    .line 131
    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v1

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->mmPurchase:Lmm/purchasesdk/Purchase;

    .line 133
    :try_start_52
    iget-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->mmPurchase:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK;->MMAPPID:Ljava/lang/String;

    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK;->MMAPPKEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5b} :catch_63

    .line 137
    :goto_5b
    new-instance v1, Lcom/u8/sdk/CombinePaySDK$3;

    invoke-direct {v1, p0}, Lcom/u8/sdk/CombinePaySDK$3;-><init>(Lcom/u8/sdk/CombinePaySDK;)V

    iput-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->mmOnPurchaseListener:Lmm/purchasesdk/OnPurchaseListener;

    .line 208
    return-void

    .line 134
    :catch_63
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b
.end method

.method public meegoPay(Lcom/u8/sdk/PayParams;)V
    .registers 8
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getMeegoCode()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "meegoCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 215
    iget-object v0, p0, Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_12
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 217
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/u8/sdk/CombinePaySDK;->meegoPayCallbackayCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    move v2, v1

    .line 216
    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    .line 218
    return-void
.end method

.method public mmPay(Lcom/u8/sdk/PayParams;)V
    .registers 7
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/u8/sdk/CombinePaySDK;->mmPurchase:Lmm/purchasesdk/Purchase;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getMmCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/u8/sdk/CombinePaySDK;->mmOnPurchaseListener:Lmm/purchasesdk/OnPurchaseListener;

    invoke-virtual {v1, v2, v3, v4}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 299
    :goto_13
    return-void

    .line 296
    :catch_14
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public unicomPay(Lcom/u8/sdk/PayParams;)V
    .registers 4
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 281
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/CombinePaySDK$5;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/CombinePaySDK$5;-><init>(Lcom/u8/sdk/CombinePaySDK;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method
