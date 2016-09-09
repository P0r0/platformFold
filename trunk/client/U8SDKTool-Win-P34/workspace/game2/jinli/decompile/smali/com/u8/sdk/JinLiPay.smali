.class public Lcom/u8/sdk/JinLiPay;
.super Ljava/lang/Object;
.source "JinLiPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/gionee/game/offlinesdk/AppInfo;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/AppInfo;-><init>()V

    .line 26
    .local v0, "appInfo":Lcom/gionee/game/offlinesdk/AppInfo;
    sget-object v1, Lcom/u8/sdk/JinLiSDK;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/AppInfo;->setApiKey(Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/u8/sdk/JinLiSDK;->privateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/AppInfo;->setPrivateKey(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/AppInfo;->setSpecificPayMode()V

    .line 29
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/gionee/game/offlinesdk/GamePlatform;->init(Landroid/app/Application;Lcom/gionee/game/offlinesdk/AppInfo;)V

    .line 31
    invoke-static {}, Lcom/u8/sdk/JinLiSDK;->getInstance()Lcom/u8/sdk/JinLiSDK;

    move-result-object v1

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/JinLiSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 20
    invoke-static {}, Lcom/u8/sdk/JinLiSDK;->getInstance()Lcom/u8/sdk/JinLiSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/JinLiSDK;->pay(Lcom/u8/sdk/PayParams;)V

    .line 21
    return-void
.end method
