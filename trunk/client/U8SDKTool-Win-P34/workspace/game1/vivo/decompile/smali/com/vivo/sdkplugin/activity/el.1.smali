.class final Lcom/vivo/sdkplugin/activity/el;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/el;-><init>(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_12a

    const-string v0, "SetPassWordActivityLog"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    return-void

    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    const-string v0, "017"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sim1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_45
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "006"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_13

    :cond_6b
    const-string v0, "017"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sim0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_45

    :sswitch_88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->f(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fd

    const-string v0, "017"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sim1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_b9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_de

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_de

    const-string v0, "006"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_de
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->e(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->finish()V

    goto/16 :goto_13

    :cond_fd
    const-string v0, "017"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sim0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->g(Lcom/vivo/sdkplugin/activity/SetpwdActivity;)Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b9

    :sswitch_11a
    const-string v0, "SetPassWordActivityLog"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/el;->a:Lcom/vivo/sdkplugin/activity/SetpwdActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SetpwdActivity;->b(Lcom/vivo/sdkplugin/activity/SetpwdActivity;I)V

    goto/16 :goto_13

    :sswitch_data_12a
    .sparse-switch
        0xd -> :sswitch_11a
        0x1b -> :sswitch_88
        0x1c -> :sswitch_14
    .end sparse-switch
.end method
