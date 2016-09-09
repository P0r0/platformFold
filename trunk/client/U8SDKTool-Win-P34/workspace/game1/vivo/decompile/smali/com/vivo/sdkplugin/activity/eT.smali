.class final Lcom/vivo/sdkplugin/activity/eT;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eT;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/eT;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eT;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eT;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->i(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    goto :goto_b

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eT;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->d(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eT;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    goto :goto_b

    nop

    :pswitch_data_2a
    .packed-switch 0xa
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
