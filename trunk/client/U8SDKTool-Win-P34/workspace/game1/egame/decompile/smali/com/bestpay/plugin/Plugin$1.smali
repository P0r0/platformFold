.class Lcom/bestpay/plugin/Plugin$1;
.super Landroid/os/Handler;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/plugin/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/plugin/Plugin;


# direct methods
.method constructor <init>(Lcom/bestpay/plugin/Plugin;Landroid/os/Looper;)V
    .registers 3
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/plugin/Plugin$1;->this$0:Lcom/bestpay/plugin/Plugin;

    .line 577
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 586
    :goto_5
    return-void

    .line 581
    :pswitch_6
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin$1;->this$0:Lcom/bestpay/plugin/Plugin;

    iget-object v0, v0, Lcom/bestpay/plugin/Plugin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 579
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
