.class final Lcom/vivo/sdkplugin/activity/dO;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dO;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dO;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v0, "RegisterProtocolActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load result is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    :goto_1e
    return-void

    :pswitch_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dO;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dO;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegisterProtocolActivity"

    const-string v1, "mProtocalContentView.loadDataWithBaseURL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :pswitch_44
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dO;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dO;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->f(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_44
    .end packed-switch
.end method
