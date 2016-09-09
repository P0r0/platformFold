.class public Lcom/vivo/sdkplugin/accounts/SendMsgReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "SendMsgReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/SendMsgReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/SendMsgReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    const-string v0, "012"

    const-string v1, "1"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_26
    return-void

    :pswitch_27
    const-string v0, "012"

    const-string v1, "0"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_26

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch
.end method
