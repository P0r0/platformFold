.class final Lcom/vivo/sdkplugin/activity/x;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const/16 v7, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "AccountPersonalCenterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v7}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_262

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void

    :sswitch_39
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v0

    if-ne v0, v3, :cond_63

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pwd"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->f(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto :goto_38

    :cond_63
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_38

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1, v0, v6}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto :goto_38

    :sswitch_82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "errorMsg"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v4}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    goto :goto_38

    :sswitch_a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38

    :sswitch_b7
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->i(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto/16 :goto_38

    :sswitch_cf
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->h(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->i(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_38

    :sswitch_ed
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_38

    :sswitch_101
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_account_personal_center_vcoin_state"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->j(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "V\u94bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "vivo_account_personal_center_gift_state"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->k(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "V\u94bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    :sswitch_178
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_38

    :sswitch_18c
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "MSG_GET_PCSTOKEN_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->b(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_login_pcs_canceled"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto/16 :goto_38

    :sswitch_1c6
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "MSG_GET_PCSTOKEN_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "pcstoken"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto/16 :goto_38

    :sswitch_1f3
    const-string v0, "AccountPersonalCenterActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v7}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->c(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto/16 :goto_38

    :sswitch_206
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->g(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_login_pcs_failed"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->l(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->finish()V

    goto/16 :goto_38

    :sswitch_234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/BindQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-virtual {v1, v0, v6}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    goto/16 :goto_38

    :sswitch_24b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/x;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-static {v1, v5, v0}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;ILandroid/os/Bundle;)V

    goto/16 :goto_38

    :sswitch_data_262
    .sparse-switch
        0x4 -> :sswitch_1c6
        0x5 -> :sswitch_206
        0x6 -> :sswitch_18c
        0x9 -> :sswitch_cf
        0xa -> :sswitch_ed
        0xd -> :sswitch_1f3
        0x15 -> :sswitch_101
        0x16 -> :sswitch_178
        0x22 -> :sswitch_b7
        0x23 -> :sswitch_a7
        0x27 -> :sswitch_39
        0x28 -> :sswitch_82
        0x77 -> :sswitch_234
        0x78 -> :sswitch_24b
    .end sparse-switch
.end method
