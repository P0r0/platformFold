.class Lcom/u8/sdk/OppoSDK$3;
.super Ljava/lang/Object;
.source "OppoSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OppoSDK;->sdkExit()V
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
    iput-object p1, p0, Lcom/u8/sdk/OppoSDK$3;->this$0:Lcom/u8/sdk/OppoSDK;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGame()V
    .registers 2

    .prologue
    .line 112
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitGameProcess(Landroid/app/Activity;)V

    .line 113
    return-void
.end method
