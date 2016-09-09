.class final Lcom/vivo/sdkplugin/activity/ft;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ft;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ft;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/util/Map;

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ft;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/util/Map;

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
