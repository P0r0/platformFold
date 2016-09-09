.class final Lcom/vivo/sdkplugin/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/i;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(IILjava/lang/String;)V
    .registers 7

    const-string v0, "AccountAssistWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestStrategyDetail-onFailed httpStatusCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/i;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$11(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/huanju/data/content/raw/info/HjInfoDetail;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/i;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    iget-object v1, p1, Lcom/huanju/data/content/raw/info/HjInfoDetail;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$13(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/i;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # getter for: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$11(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
