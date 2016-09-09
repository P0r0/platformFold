.class final Lcom/vivo/sdkplugin/activity/bW;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->refreshData()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->b(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->notifyDataSetChanged()V

    goto :goto_8

    :pswitch_23
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/FooterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setHasMore()V

    :cond_34
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_51

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_51
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->g(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u653b\u7565\u5217\u8868\u8bf7\u6c42\u5931\u8d25\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :pswitch_61
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/FooterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setEmpty()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bW;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u76f8\u5173\u6570\u636e\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_61
        :pswitch_23
        :pswitch_9
    .end packed-switch
.end method
