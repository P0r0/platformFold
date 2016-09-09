.class public Lcom/u8/sdk/ViVoUser;
.super Lcom/u8/sdk/U8UserAdapter;
.source "ViVoUser.java"


# instance fields
.field private supportedMethods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/u8/sdk/U8UserAdapter;-><init>()V

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "switchLogin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "submitExtraData"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "exit"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/u8/sdk/ViVoUser;->supportedMethods:[Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/u8/sdk/ViVoSDK;->getInstance()Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/ViVoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 14
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "U8SDK_VIVO"

    const-string v1, "vivo exit called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/u8/sdk/ViVoSDK;->getInstance()Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/ViVoSDK;->sdkExit()V

    .line 35
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/u8/sdk/ViVoUser;->supportedMethods:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/u8/sdk/utils/Arrays;->contain([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .registers 2

    .prologue
    .line 18
    invoke-static {}, Lcom/u8/sdk/ViVoSDK;->getInstance()Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/ViVoSDK;->login()V

    .line 19
    return-void
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .registers 3
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 28
    invoke-static {}, Lcom/u8/sdk/ViVoSDK;->getInstance()Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/ViVoSDK;->submitExtraData(Lcom/u8/sdk/UserExtraData;)V

    .line 29
    return-void
.end method

.method public switchLogin()V
    .registers 2

    .prologue
    .line 23
    invoke-static {}, Lcom/u8/sdk/ViVoSDK;->getInstance()Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/ViVoSDK;->login()V

    .line 24
    return-void
.end method
