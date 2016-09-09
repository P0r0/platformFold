.class final Lcom/vivo/sdkplugin/activity/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_44

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$4(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mLoadBar:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$5(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_24
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$4(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$4(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_44

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/c;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mLoadBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$5(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_44
    return-void
.end method
