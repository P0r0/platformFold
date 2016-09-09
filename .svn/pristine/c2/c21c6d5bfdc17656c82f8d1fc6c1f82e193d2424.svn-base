.class public Lcom/baidu/paysdk/lightapp/LightappWebView;
.super Lcom/baidu/wallet/core/webmanager/SafeWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/webmanager/SafeWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/webmanager/SafeWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public impactJavascriptInterfaces()V
    .registers 5

    invoke-super {p0}, Lcom/baidu/wallet/core/webmanager/SafeWebView;->impactJavascriptInterfaces()V

    const-string v0, "javascript:(function JsSendRuntimeReadyToClouda_(){    var event = document.createEvent(\'Events\');    event.initEvent(\'runtimeready\', false,false);    document.dispatchEvent(event);})()"

    invoke-super {p0, v0}, Lcom/baidu/wallet/core/webmanager/SafeWebView;->loadUrl(Ljava/lang/String;)V

    const-string v1, "LightappWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
