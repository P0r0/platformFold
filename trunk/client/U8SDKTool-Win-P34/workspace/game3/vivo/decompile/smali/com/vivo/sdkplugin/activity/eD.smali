.class final Lcom/vivo/sdkplugin/activity/eD;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eD;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b4

    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "openid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOpenId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameNickName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    const-string v2, "SubAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " openid:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " accountNub: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " authtoken: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->m(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_7d} :catch_7e

    goto :goto_b

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b

    :pswitch_83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    :pswitch_92
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->n(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->o(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    goto/16 :goto_b

    :pswitch_9e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->o(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V

    goto/16 :goto_b

    :pswitch_a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eD;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_83
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9e
        :pswitch_a5
    .end packed-switch
.end method
