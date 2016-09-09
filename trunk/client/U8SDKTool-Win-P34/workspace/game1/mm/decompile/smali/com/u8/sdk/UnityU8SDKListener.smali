.class public Lcom/u8/sdk/UnityU8SDKListener;
.super Ljava/lang/Object;
.source "UnityU8SDKListener.java"

# interfaces
.implements Lcom/u8/sdk/IU8SDKListener;


# instance fields
.field private context:Lcom/u8/sdk/U8UnityContext;

.field private isSwitchAccount:Z


# direct methods
.method public constructor <init>(Lcom/u8/sdk/U8UnityContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    iput-object p1, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    return-object v0
.end method

.method private tip(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/UnityU8SDKListener$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/UnityU8SDKListener$2;-><init>(Lcom/u8/sdk/UnityU8SDKListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 5

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SDK\u767b\u5f55\u8ba4\u8bc1\u5931\u8d25,\u786e\u8ba4U8Server\u662f\u5426\u914d\u7f6e"

    invoke-direct {p0, v2}, Lcom/u8/sdk/UnityU8SDKListener;->tip(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "isSuc"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSwitchAccount"

    iget-boolean v3, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "userID"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdkUserID"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkUsername"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v3, "OnLoginSuc"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onInitResult(Lcom/u8/sdk/InitResult;)V
    .locals 0

    return-void
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "U8SDK"

    const-string v1, "SDK \u767b\u5f55\u6210\u529f,\u4e0d\u7528\u505a\u5904\u7406\uff0c\u5728onAuthResult\u4e2d\u5904\u7406\u767b\u5f55\u6210\u529f, \u53c2\u6570\u5982\u4e0b:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "U8SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    const-string v0, "SDK\u767b\u5f55\u6210\u529f"

    invoke-direct {p0, v0}, Lcom/u8/sdk/UnityU8SDKListener;->tip(Ljava/lang/String;)V

    return-void
.end method

.method public onLogout()V
    .locals 3

    const-string v0, "U8SDK"

    const-string v1, "SDK \u9000\u51fa\u767b\u5f55\u6210\u529f...\u53d1\u9001\u6d88\u606f\u5230Unity\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnLogout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPayResult(Lcom/u8/sdk/PayResult;)V
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "productID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "orderID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extension"

    invoke-virtual {p1}, Lcom/u8/sdk/PayResult;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v3, "OnPaySuc"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/UnityU8SDKListener$1;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/UnityU8SDKListener$1;-><init>(Lcom/u8/sdk/UnityU8SDKListener;I)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchAccount()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;

    const-string v1, "OnSwitchLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 2

    const-string v0, "U8SDK"

    const-string v1, "SDK \u5207\u6362\u5e10\u53f7\u5e76\u767b\u5f55\u6210\u529f,\u4e0d\u7528\u505a\u5904\u7406\uff0c\u5728onAuthResult\u4e2d\u5904\u7406\u767b\u5f55\u6210\u529f, \u53c2\u6570\u5982\u4e0b:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "U8SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/u8/sdk/UnityU8SDKListener;->isSwitchAccount:Z

    const-string v0, "\u5207\u6362\u5e10\u53f7\u6210\u529f"

    invoke-direct {p0, v0}, Lcom/u8/sdk/UnityU8SDKListener;->tip(Ljava/lang/String;)V

    return-void
.end method
