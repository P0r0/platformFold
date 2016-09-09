.class Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;
.super Ljava/lang/Object;
.source "GamePlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;->onEvent(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;I)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

    iput p2, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 170
    iget v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->val$key:I

    packed-switch v0, :pswitch_data_30

    .line 191
    :cond_5
    :goto_5
    return-void

    .line 172
    :pswitch_6
    invoke-static {}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->getInstance()Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

    iget-object v1, v1, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->showDialog(Landroid/app/Activity;)V

    goto :goto_5

    .line 176
    :pswitch_12
    invoke-static {}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->getInstance()Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->dismissDialog()V

    goto :goto_5

    .line 182
    :pswitch_1a
    invoke-static {}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->getInstance()Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->dismissDialog()V

    .line 183
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;->val$callBack:Lcom/gionee/game/offlinesdk/InitPluginCallback;

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7$1;->this$1:Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;

    iget-object v0, v0, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl$7;->val$callBack:Lcom/gionee/game/offlinesdk/InitPluginCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gionee/game/offlinesdk/InitPluginCallback;->onEvent(I)V

    goto :goto_5

    .line 170
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method
