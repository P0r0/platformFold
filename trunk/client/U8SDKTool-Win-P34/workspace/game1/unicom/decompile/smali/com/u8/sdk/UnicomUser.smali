.class public Lcom/u8/sdk/UnicomUser;
.super Ljava/lang/Object;
.source "UnicomUser.java"

# interfaces
.implements Lcom/u8/sdk/IUser;


# instance fields
.field private supportedMethodStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/u8/sdk/UnicomUser;->supportedMethodStrings:[Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/u8/sdk/UnicomSDK;->getInstance()Lcom/u8/sdk/UnicomSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/UnicomSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/u8/sdk/UnicomUser;->supportedMethodStrings:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/u8/sdk/utils/Arrays;->contain([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 27
    .local v0, "isSupport":Z
    const-string v1, "Meego"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MethodSuppot] Check :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v0
.end method

.method public login()V
    .registers 2

    .prologue
    .line 14
    invoke-static {}, Lcom/u8/sdk/UnicomSDK;->getInstance()Lcom/u8/sdk/UnicomSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/UnicomSDK;->login()V

    .line 15
    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .registers 2
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public logout()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public queryAntiAddiction()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public realNameRegister()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public showAccountCenter()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .registers 2
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 63
    return-void
.end method

.method public switchLogin()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method
