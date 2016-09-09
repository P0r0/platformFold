.class public Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p0}, Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    sget-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_e
    return-void

    :pswitch_f
    sget-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    nop

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_f
    .end packed-switch
.end method
