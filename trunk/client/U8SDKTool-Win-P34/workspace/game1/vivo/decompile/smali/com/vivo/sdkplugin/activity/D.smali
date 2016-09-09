.class final Lcom/vivo/sdkplugin/activity/D;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_38

    :goto_5
    return-void

    :sswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->n(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_11
    :try_start_11
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->o(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_5

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_1c
    :try_start_1c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->verifyPassword(Ljava/lang/String;)Ljava/util/Map;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    goto :goto_5

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :sswitch_31
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/D;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->p(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    goto :goto_5

    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_1c
        0x13 -> :sswitch_31
        0x14 -> :sswitch_11
        0x38 -> :sswitch_6
    .end sparse-switch
.end method
