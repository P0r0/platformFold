.class public final Lcn/egame/terminal/miniapay/e;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_8
    return-void

    :pswitch_9
    const/4 v0, 0x1

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    goto :goto_8

    :pswitch_d
    const/4 v0, 0x0

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    goto :goto_8

    nop

    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method
