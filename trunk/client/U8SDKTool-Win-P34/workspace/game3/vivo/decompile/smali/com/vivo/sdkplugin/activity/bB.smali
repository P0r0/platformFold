.class final Lcom/vivo/sdkplugin/activity/bB;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/bB;-><init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return-void

    :cond_11
    const-string v1, "FindPasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg.what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1ac

    :pswitch_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :pswitch_3f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_10

    :pswitch_4b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :pswitch_5e
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v1, v6, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_10

    :pswitch_6e
    const-string v0, "FindPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasEmail="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasPwdPro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :cond_b9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :cond_e0
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :cond_101
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->e(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->l(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->n(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-virtual {v1, v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    :cond_154
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :pswitch_160
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    :pswitch_174
    const-string v0, "FindPasswordActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :pswitch_189
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->o(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto/16 :goto_10

    :pswitch_195
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bB;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v1, v6, v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->a(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;ILandroid/os/Bundle;)V

    goto/16 :goto_10

    :pswitch_data_1ac
    .packed-switch 0x7
        :pswitch_6e
        :pswitch_160
        :pswitch_2c
        :pswitch_3f
        :pswitch_4b
        :pswitch_2c
        :pswitch_174
        :pswitch_5e
        :pswitch_160
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_189
        :pswitch_195
    .end packed-switch
.end method
