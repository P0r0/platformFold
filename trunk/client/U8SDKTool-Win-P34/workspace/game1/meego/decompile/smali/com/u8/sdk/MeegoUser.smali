.class public Lcom/u8/sdk/MeegoUser;
.super Ljava/lang/Object;
.source "MeegoUser.java"

# interfaces
.implements Lcom/u8/sdk/IUser;


# instance fields
.field private supportedMethodStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "exit"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/u8/sdk/MeegoUser;->supportedMethodStrings:[Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/u8/sdk/MeegoSDK;->getInstance()Lcom/u8/sdk/MeegoSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getSDKParams()Lcom/u8/sdk/SDKParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/MeegoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/u8/sdk/MeegoSDK;->getInstance()Lcom/u8/sdk/MeegoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/MeegoSDK;->exit()V

    .line 35
    return-void
.end method

.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/u8/sdk/MeegoUser;->supportedMethodStrings:[Ljava/lang/String;

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
    invoke-static {}, Lcom/u8/sdk/MeegoSDK;->getInstance()Lcom/u8/sdk/MeegoSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/MeegoSDK;->login()V

    .line 15
    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .registers 2
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method public logout()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public postGiftCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method

.method public queryAntiAddiction()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public realNameRegister()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public showAccountCenter()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public submitExtraData(Lcom/u8/sdk/UserExtraData;)V
    .registers 2
    .param p1, "extraData"    # Lcom/u8/sdk/UserExtraData;

    .prologue
    .line 65
    return-void
.end method

.method public switchLogin()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method
