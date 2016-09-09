.class final Lcom/vivo/sdkplugin/activity/eb;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eb;-><init>(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->a(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5a

    const-string v0, "SetPassWordActivity"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void

    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pwd"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->d(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->finish()V

    goto :goto_13

    :sswitch_4b
    const-string v0, "SetPassWordActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eb;->a:Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;->b(Lcom/vivo/sdkplugin/activity/SetPassWordActivity;I)V

    goto :goto_13

    :sswitch_data_5a
    .sparse-switch
        0xd -> :sswitch_4b
        0x1b -> :sswitch_22
        0x1c -> :sswitch_14
    .end sparse-switch
.end method
