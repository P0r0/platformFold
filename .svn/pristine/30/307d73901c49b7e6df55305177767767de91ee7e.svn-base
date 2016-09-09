.class public Lcom/baidu/home/HomeWebViewActivity;
.super Lcom/baidu/wallet/core/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/home/HomeWebViewActivity$b;,
        Lcom/baidu/home/HomeWebViewActivity$a;
    }
.end annotation


# static fields
.field public static final JUMP_URL:Ljava/lang/String; = "jump_url"

.field public static final WEBVIEW_TITLE:Ljava/lang/String; = "webview_title"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/home/HomeWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/home/HomeWebViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/home/HomeWebViewActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/home/HomeWebViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "bdactionbar"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/HomeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_1d

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/home/b;

    invoke-direct {v1, p0}, Lcom/baidu/home/b;-><init>(Lcom/baidu/home/HomeWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/home/HomeWebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/HomeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/home/c;

    invoke-direct {v1, p0}, Lcom/baidu/home/c;-><init>(Lcom/baidu/home/HomeWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_11
    return-void

    :cond_12
    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onBackPressed()V

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ebpay_layout_webview"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/HomeWebViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/home/HomeWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    if-eqz v2, :cond_121

    const-string v0, "webview_title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "jump_url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bank_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?bank_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_54
    const/4 v2, -0x1

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v0, "ebpay_bd_wallet"

    :cond_62
    invoke-direct {p0, v0}, Lcom/baidu/home/HomeWebViewActivity;->a(Ljava/lang/String;)V

    const-string v0, "cust_webview"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/home/HomeWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/home/HomeWebViewActivity$b;

    invoke-direct {v2, p0, v5}, Lcom/baidu/home/HomeWebViewActivity$b;-><init>(Lcom/baidu/home/HomeWebViewActivity;Lcom/baidu/home/b;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/home/HomeWebViewActivity$a;

    invoke-direct {v2, p0, v5}, Lcom/baidu/home/HomeWebViewActivity$a;-><init>(Lcom/baidu/home/HomeWebViewActivity;Lcom/baidu/home/b;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_ad

    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_ad
    invoke-static {p0}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11b

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_128

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ua="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d6
    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/paysdk/PayUtils;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/android/pay/SafePay;->encryptProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ee

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&atbc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pay/SafePay;->getInstance()Lcom/baidu/android/pay/SafePay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pay/SafePay;->getpwProxy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_11b
    iget-object v0, p0, Lcom/baidu/home/HomeWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_121
    const-string v0, "http://co.baifubao.com/content/resource/HTML5/eptos.html"

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_54

    :cond_128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?ua="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d6
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onPause()V

    const-string v0, "WebViewActivity"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_19

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/home/HomeWebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_19
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onResume()V

    const-string v0, "WebViewActivity"

    invoke-static {p0, v0}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_19

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/home/HomeWebViewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_19
    return-void
.end method
