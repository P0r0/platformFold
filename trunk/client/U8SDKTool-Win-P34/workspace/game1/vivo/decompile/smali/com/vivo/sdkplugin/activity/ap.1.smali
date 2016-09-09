.class final Lcom/vivo/sdkplugin/activity/ap;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/ap;-><init>(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "BindQuestionActivityLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UIHandler.handleMessage, msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->a(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_7a

    const-string v0, "BindQuestionActivityLog"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void

    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    :sswitch_38
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    goto :goto_29

    :sswitch_3e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "question"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->e(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->finish()V

    goto :goto_29

    :sswitch_6b
    const-string v0, "BindQuestionActivityLog"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ap;->a:Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;->b(Lcom/vivo/sdkplugin/activity/BindQuestionActivity;I)V

    goto :goto_29

    :sswitch_data_7a
    .sparse-switch
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_2a
        0xd -> :sswitch_6b
        0x24 -> :sswitch_38
        0x25 -> :sswitch_2a
    .end sparse-switch
.end method
