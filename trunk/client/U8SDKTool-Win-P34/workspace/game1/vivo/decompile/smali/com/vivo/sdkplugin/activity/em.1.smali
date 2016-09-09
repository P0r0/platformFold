.class final Lcom/vivo/sdkplugin/activity/em;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/em;->a:Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/em;->a:Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->a(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/em;->a:Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;->b(Lcom/vivo/sdkplugin/activity/StrategyDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html; charset=UTF-8"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
