.class final Lcom/vivo/sdkplugin/activity/aM;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aM;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/aM;-><init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aM;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aM;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->b(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;I)V

    goto :goto_b

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aM;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method
