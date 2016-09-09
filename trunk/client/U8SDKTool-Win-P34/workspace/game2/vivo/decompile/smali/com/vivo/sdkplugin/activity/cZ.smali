.class final Lcom/vivo/sdkplugin/activity/cZ;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cZ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1c

    :goto_5
    return-void

    :sswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cZ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->d(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_11
    :try_start_11
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cZ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->e(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_5

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_11
        0x13 -> :sswitch_6
    .end sparse-switch
.end method
