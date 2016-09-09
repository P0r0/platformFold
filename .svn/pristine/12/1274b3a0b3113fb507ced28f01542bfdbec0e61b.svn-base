.class final Lcom/vivo/sdkplugin/activity/dC;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dC;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dC;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---------\u9875\u9762finish\u4e86\uff0c\u4e0d\u80fd\u53d1\u9001\u7f51\u7edc\u8bf7\u6c42-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2c

    goto :goto_f

    :sswitch_16
    :try_start_16
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dC;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->e(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/util/Map;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_f

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :sswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dC;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->d(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/util/Map;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_f

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :sswitch_data_2c
    .sparse-switch
        0x6 -> :sswitch_16
        0xa -> :sswitch_21
    .end sparse-switch
.end method
