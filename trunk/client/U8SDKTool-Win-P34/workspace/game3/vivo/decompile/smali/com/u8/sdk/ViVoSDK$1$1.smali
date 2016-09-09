.class Lcom/u8/sdk/ViVoSDK$1$1;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK$1;->onAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/ViVoSDK$1;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$1$1;->this$1:Lcom/u8/sdk/ViVoSDK$1;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$1$1;->this$1:Lcom/u8/sdk/ViVoSDK$1;

    # getter for: Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK$1;->access$0(Lcom/u8/sdk/ViVoSDK$1;)Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    # getter for: Lcom/u8/sdk/ViVoSDK;->sdkApi:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->showVivoAssitView(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$1$1;->this$1:Lcom/u8/sdk/ViVoSDK$1;

    # getter for: Lcom/u8/sdk/ViVoSDK$1;->this$0:Lcom/u8/sdk/ViVoSDK;
    invoke-static {v0}, Lcom/u8/sdk/ViVoSDK$1;->access$0(Lcom/u8/sdk/ViVoSDK$1;)Lcom/u8/sdk/ViVoSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/u8/sdk/ViVoSDK;->access$1(Lcom/u8/sdk/ViVoSDK;Z)V

    .line 76
    return-void
.end method
