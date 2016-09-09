.class final Lcom/vivo/sdkplugin/activity/dZ;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dZ;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dZ;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
