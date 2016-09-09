.class final Lcom/vivo/sdkplugin/activity/dP;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dP;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dP;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dP;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dP;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dP;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
