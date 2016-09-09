.class final Lcom/vivo/sdkplugin/activity/fn;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/fn;-><init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_78

    :goto_1c
    :pswitch_1c
    return-void

    :pswitch_1d
    const-string v1, "feedback"

    const-string v2, "-------GET_CHAT_SERVICE_MSG_SUCCESS--------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :pswitch_37
    const-string v0, "feedback"

    const-string v1, "-------GET_CHAT_SERVICE_MSG_FAIL--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->e(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c

    :pswitch_49
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u4ea4\u6210\u529f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->finish()V

    goto :goto_1c

    :pswitch_63
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0, v3}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->a(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fn;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->c(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_49
        :pswitch_63
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_37
    .end packed-switch
.end method
