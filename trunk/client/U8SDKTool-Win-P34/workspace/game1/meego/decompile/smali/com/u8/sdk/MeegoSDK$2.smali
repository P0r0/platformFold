.class Lcom/u8/sdk/MeegoSDK$2;
.super Ljava/lang/Object;
.source "MeegoSDK.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/MeegoSDK;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/MeegoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/MeegoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/MeegoSDK$2;->this$0:Lcom/u8/sdk/MeegoSDK;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelExit()V
    .registers 4

    .prologue
    .line 117
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u9000\u51fa"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method

.method public onConfirmExit()V
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 113
    return-void
.end method
