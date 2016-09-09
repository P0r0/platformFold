.class final Lcom/vivo/sdkplugin/activity/fl;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fl;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_12

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fl;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    goto :goto_5

    :sswitch_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fl;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->b(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    goto :goto_5

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_c
    .end sparse-switch
.end method
