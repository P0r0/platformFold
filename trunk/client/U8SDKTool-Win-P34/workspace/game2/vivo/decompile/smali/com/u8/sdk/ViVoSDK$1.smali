.class Lcom/u8/sdk/ViVoSDK$1;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Lcom/vivo/sdkplugin/accounts/OnVivoAccountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ViVoSDK$1;)Lcom/u8/sdk/ViVoSDK;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;

    return-object v0
.end method


# virtual methods
.method public onAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "openid"    # Ljava/lang/String;
    .param p3, "authtoken"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, "U8SDK"

    const-string v2, "onAccountLogin..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/ViVoSDK$1$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ViVoSDK$1$1;-><init>(Lcom/u8/sdk/ViVoSDK$1;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;

    # invokes: Lcom/u8/sdk/ViVoSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p2, p1, p3}, Lcom/u8/sdk/ViVoSDK;->access$4(Lcom/u8/sdk/ViVoSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onAccountLoginCancled()V
    .registers 3

    .prologue
    .line 66
    const-string v0, "U8SDK"

    const-string v1, "on login canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$2(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->hideVivoAssitView(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onAccountRemove(Z)V
    .registers 4
    .param p1, "arg0"    # Z

    .prologue
    .line 61
    const-string v0, "U8SDK"

    const-string v1, "vivo account removed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
