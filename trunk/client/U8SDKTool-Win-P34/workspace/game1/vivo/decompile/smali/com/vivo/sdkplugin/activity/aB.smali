.class final Lcom/vivo/sdkplugin/activity/aB;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/aB;-><init>(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->a(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8c

    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "UnSupport UIHandler msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void

    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->c(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->d(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->changeAccountPwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->setResult(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->finish()V

    goto :goto_13

    :sswitch_5f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->e(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->f(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    :sswitch_7c
    const-string v0, "ChangePassWordActivityLog"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aB;->a:Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;->b(Lcom/vivo/sdkplugin/activity/ChangePassWordActivity;I)V

    goto :goto_13

    nop

    :sswitch_data_8c
    .sparse-switch
        0xd -> :sswitch_7c
        0x1b -> :sswitch_22
        0x1c -> :sswitch_14
        0x28 -> :sswitch_5f
    .end sparse-switch
.end method
