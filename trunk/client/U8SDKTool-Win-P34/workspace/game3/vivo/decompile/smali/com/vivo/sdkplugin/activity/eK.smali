.class final Lcom/vivo/sdkplugin/activity/eK;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eK;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u606d\u559c\u60a8\u6210\u529f\u521b\u5efa"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->c(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->h(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)V

    goto :goto_b

    :pswitch_34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eK;->a:Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountAddCommitActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    :pswitch_data_46
    .packed-switch 0x7
        :pswitch_c
        :pswitch_34
    .end packed-switch
.end method
