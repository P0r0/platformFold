.class final Lcom/vivo/sdkplugin/activity/R;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/R;-><init>(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "BindPhoneActivityLog"

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

    sparse-switch v0, :sswitch_data_106

    const-string v0, "BindPhoneActivityLog"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void

    :sswitch_25
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->d(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->e(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/activity/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/S;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    :sswitch_53
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/activity/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/S;->cancel()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->f(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/activity/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/S;->onFinish()V

    goto :goto_24

    :sswitch_78
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24

    :sswitch_8b
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPhoneName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->delelteAccountInfo(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-direct {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->exportDB()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->g(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountNum(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "phonenum"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->h(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->finish()V

    goto/16 :goto_24

    :sswitch_f1
    const-string v0, "BindPhoneActivityLog"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->a(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/R;->a:Lcom/vivo/sdkplugin/activity/BindPhoneActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/BindPhoneActivity;->b(Lcom/vivo/sdkplugin/activity/BindPhoneActivity;I)V

    goto/16 :goto_24

    :sswitch_data_106
    .sparse-switch
        0xd -> :sswitch_f1
        0x15 -> :sswitch_25
        0x16 -> :sswitch_53
        0x20 -> :sswitch_8b
        0x21 -> :sswitch_78
    .end sparse-switch
.end method
