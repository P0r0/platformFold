.class Lcom/u8/sdk/EGameSDK$2;
.super Ljava/lang/Object;
.source "EGameSDK.java"

# interfaces
.implements Lcn/egame/terminal/paysdk/EgameExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/EGameSDK;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/EGameSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/EGameSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/EGameSDK$2;->this$0:Lcom/u8/sdk/EGameSDK;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    return-void
.end method
