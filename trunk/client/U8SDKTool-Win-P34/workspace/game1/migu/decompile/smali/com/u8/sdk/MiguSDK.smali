.class public Lcom/u8/sdk/MiguSDK;
.super Ljava/lang/Object;
.source "MiguSDK.java"


# static fields
.field public static final KEY_LOGIN_RESULT:Ljava/lang/String; = "LoginResult"

.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"

.field public static final REQ_CODE_LOGIN:I = 0x3e8

.field public static final REQ_CODE_PAY:I = 0x3ea

.field public static final REQ_CODE_SWITCH:I = 0x3e9

.field private static instance:Lcom/u8/sdk/MiguSDK;


# instance fields
.field private appID:Ljava/lang/String;

.field private payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/MiguSDK;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/MiguSDK;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/u8/sdk/MiguSDK;->instance:Lcom/u8/sdk/MiguSDK;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/u8/sdk/MiguSDK;

    invoke-direct {v0}, Lcom/u8/sdk/MiguSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/MiguSDK;->instance:Lcom/u8/sdk/MiguSDK;

    .line 40
    :cond_b
    sget-object v0, Lcom/u8/sdk/MiguSDK;->instance:Lcom/u8/sdk/MiguSDK;

    return-object v0
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 45
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    .line 47
    new-instance v0, Lcom/u8/sdk/MiguSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/MiguSDK$1;-><init>(Lcom/u8/sdk/MiguSDK;)V

    iput-object v0, p0, Lcom/u8/sdk/MiguSDK;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    .line 75
    return-void
.end method

.method public login()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 15
    .param p1, "params"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "productDes":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()F

    move-result v10

    .line 104
    .local v10, "price":F
    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The pay extension is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v9, "json":Lorg/json/JSONObject;
    const-string v0, "transNo"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "cmOrder":Ljava/lang/String;
    const-string v0, "accessKey"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "cmSignature":Ljava/lang/String;
    const-string v3, "123456"

    .line 113
    .local v3, "order":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/u8/sdk/MiguSDK;->payCallback:Lcn/cmgame/billing/api/GameInterface$IPayCallback;

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    .line 119
    .end local v3    # "order":Ljava/lang/String;
    .end local v6    # "cmOrder":Ljava/lang/String;
    .end local v7    # "cmSignature":Ljava/lang/String;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "price":F
    .end local v11    # "productDes":Ljava/lang/String;
    .end local v12    # "productName":Ljava/lang/String;
    :goto_4b
    return-void

    .line 115
    :catch_4c
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pay failed. exception:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_4b
.end method

.method public sdkExit()V
    .registers 3

    .prologue
    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/MiguSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/MiguSDK$2;-><init>(Lcom/u8/sdk/MiguSDK;)V

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/GameInterface;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 96
    return-void
.end method
