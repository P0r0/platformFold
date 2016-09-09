.class final Lcom/vivo/sdkplugin/activity/bM;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V
    .registers 6

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code_wait"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/bM;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_fa

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    :sswitch_2f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/SetPassWordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "code"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------------------------: verifycode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-virtual {v1, v0, v4}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2e

    :sswitch_7e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    :sswitch_91
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Lcom/vivo/sdkplugin/activity/bN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/bN;->start()Landroid/os/CountDownTimer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2e

    :sswitch_b7
    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "MSG_GET_PCSTOKEN_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "pcstoken"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->finish()V

    goto/16 :goto_2e

    :sswitch_e4
    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bM;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;I)V

    goto/16 :goto_2e

    nop

    :sswitch_data_fa
    .sparse-switch
        0x4 -> :sswitch_b7
        0x9 -> :sswitch_2f
        0xa -> :sswitch_7e
        0xd -> :sswitch_e4
        0x15 -> :sswitch_91
        0x16 -> :sswitch_91
    .end sparse-switch
.end method
