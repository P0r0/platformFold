.class final Lcom/vivo/sdkplugin/activity/ez;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ez;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_28

    :goto_5
    return-void

    :sswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ez;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->h(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_11
    :try_start_11
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ez;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->i(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_5

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_1c
    :try_start_1c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ez;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->j(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Ljava/util/Map;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_5

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    nop

    :sswitch_data_28
    .sparse-switch
        0x4 -> :sswitch_6
        0x9 -> :sswitch_1c
        0x13 -> :sswitch_11
    .end sparse-switch
.end method
