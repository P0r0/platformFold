.class final Lcom/vivo/sdkplugin/activity/dc;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dc;-><init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "PhoneRegisterCommitActivity"

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

    packed-switch v0, :pswitch_data_2ba

    :pswitch_1d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void

    :pswitch_2a
    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "22222222222222222222222222222"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "006"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_48
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    new-instance v0, Lcom/vivo/sdkplugin/GetSubAccountCenter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->f(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->getSubAccount()V

    goto :goto_29

    :pswitch_7f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "006"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_96
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    :pswitch_a9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, "011"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_ba
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_29

    :cond_ce
    const-string v0, "015"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_ba

    :pswitch_d8
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->k(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Z

    move-result v0

    if-eqz v0, :cond_102

    const-string v0, "011"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_e9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v7}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_29

    :cond_102
    const-string v0, "015"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_e9

    :pswitch_10c
    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "MSG_GET_PCSTOKEN_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v7}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_login_pcs_canceled"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto/16 :goto_29

    :pswitch_146
    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "MSG_GET_PCSTOKEN_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "pcstoken"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto/16 :goto_29

    :pswitch_173
    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->a(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V

    goto/16 :goto_29

    :pswitch_188
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->o(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_login_pcs_failed"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->p(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->returnResult(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto/16 :goto_29

    :pswitch_1b6
    const-string v0, "PhoneRegisterCommitActivity"

    const-string v1, "333333333333333333333"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhoneRegisterCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVisitorUpdate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setHasLoginSuccHis(Z)V

    const-string v3, ""

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    const-string v1, ""

    :try_start_1ea
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "subinfo"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2b5

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "nickname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "authtoken"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21b
    .catch Lorg/json/JSONException; {:try_start_1ea .. :try_end_21b} :catch_294

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    :goto_21e
    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameNickName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOpenId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setIsDefaultAccount(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->h(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getreportFirstLogin()Z

    move-result v0

    if-nez v0, :cond_273

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->q(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->reportFirstLogin()V

    :cond_273
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->g(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->r(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V

    goto/16 :goto_29

    :catch_294
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v8

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_21e

    :cond_2a1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    goto/16 :goto_29

    :pswitch_2ae
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dc;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-static {v0, v6}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->b(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;I)V

    goto/16 :goto_29

    :cond_2b5
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_21e

    :pswitch_data_2ba
    .packed-switch 0x4
        :pswitch_146
        :pswitch_188
        :pswitch_10c
        :pswitch_1d
        :pswitch_1d
        :pswitch_2a
        :pswitch_7f
        :pswitch_1d
        :pswitch_1d
        :pswitch_173
        :pswitch_1b6
        :pswitch_2ae
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a9
        :pswitch_d8
    .end packed-switch
.end method
