.class Lcom/u8/sdk/OppoSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "OppoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OppoSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OppoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OppoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OppoSDK$1;->this$0:Lcom/u8/sdk/OppoSDK;

    .line 37
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .prologue
    .line 48
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nearme/game/sdk/GameCenterSDK;->onPause()V

    .line 49
    invoke-super {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;->onPause()V

    .line 50
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;->onResume()V

    .line 42
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->onResume(Landroid/app/Activity;)V

    .line 43
    return-void
.end method
