.class final Lcom/vivo/sdkplugin/activity/fw;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/fw;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V

    const-string v0, "VerifyMobileNumLog"

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

    sparse-switch v0, :sswitch_data_ca

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    const-string v0, "VerifyMobileNumLog"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    :sswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->e(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    :try_start_3e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "sk"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_5c} :catch_72

    :goto_5c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "LoginResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->finish()V

    goto :goto_2e

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5c

    :sswitch_77
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->g(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Lcom/vivo/sdkplugin/activity/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/fx;->start()Landroid/os/CountDownTimer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    :sswitch_9c
    const-string v0, "VerifyMobileNumLog"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V

    goto/16 :goto_2e

    :sswitch_b1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fw;->a:Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->finish()V

    goto/16 :goto_2e

    :sswitch_data_ca
    .sparse-switch
        0x9 -> :sswitch_2f
        0xa -> :sswitch_77
        0xd -> :sswitch_9c
        0x15 -> :sswitch_77
        0x16 -> :sswitch_77
        0x30 -> :sswitch_b1
    .end sparse-switch
.end method
