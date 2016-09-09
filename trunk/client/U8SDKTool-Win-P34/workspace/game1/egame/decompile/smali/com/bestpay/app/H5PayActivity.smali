.class public Lcom/bestpay/app/H5PayActivity;
.super Landroid/app/Activity;
.source "H5PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;,
        Lcom/bestpay/app/H5PayActivity$MyWebViewClient;,
        Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;
    }
.end annotation


# static fields
.field public static OSSYSTEM:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "H5PayActivity"

.field private static isExit:Ljava/lang/Boolean;


# instance fields
.field private BASEURL:Ljava/lang/String;

.field private DEVICESEND:Ljava/lang/String;

.field private H5BASEURL:Ljava/lang/String;

.field private H5_SKIP_LOGIN:Ljava/lang/String;

.field private QUERYDEVSENS:Ljava/lang/String;

.field public jsonTo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mParamStr:Ljava/lang/String;

.field private mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mWebKitcookieStr:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "1"

    sput-object v0, Lcom/bestpay/app/H5PayActivity;->OSSYSTEM:Ljava/lang/String;

    .line 561
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bestpay/app/H5PayActivity;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    .line 77
    const-string v0, "https://capi.bestpay.com.cn"

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->BASEURL:Ljava/lang/String;

    .line 89
    const-string v0, "/gateway.pay"

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->H5_SKIP_LOGIN:Ljava/lang/String;

    .line 91
    const-string v0, "/common/queryDevSens"

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->QUERYDEVSENS:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->BASEURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->H5_SKIP_LOGIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->H5BASEURL:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->BASEURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->QUERYDEVSENS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->DEVICESEND:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/bestpay/app/H5PayActivity;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bestpay/app/H5PayActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/bestpay/app/H5PayActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/Boolean;)V
    .registers 1

    .prologue
    .line 561
    sput-object p0, Lcom/bestpay/app/H5PayActivity;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$6(Lcom/bestpay/app/H5PayActivity;)V
    .registers 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/bestpay/app/H5PayActivity;->exit()V

    return-void
.end method

.method private checkNetworkFlg(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 652
    .line 653
    :try_start_1
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 654
    .local v2, "manger":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 655
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_17

    move-result v4

    if-eqz v4, :cond_16

    const/4 v3, 0x1

    .line 657
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "manger":Landroid/net/ConnectivityManager;
    :cond_16
    :goto_16
    return v3

    .line 656
    :catch_17
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_16
.end method

.method private exit()V
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 633
    return-void
.end method

.method private exitBy2Click()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "tExit":Ljava/util/Timer;
    sget-object v2, Lcom/bestpay/app/H5PayActivity;->isExit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 566
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/bestpay/app/H5PayActivity;->isExit:Ljava/lang/Boolean;

    .line 567
    const-string v2, "\u53cc\u51fb\u8fd4\u56de\u5546\u6237"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 568
    new-instance v1, Ljava/util/Timer;

    .end local v1    # "tExit":Ljava/util/Timer;
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 569
    .restart local v1    # "tExit":Ljava/util/Timer;
    new-instance v2, Lcom/bestpay/app/H5PayActivity$3;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$3;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    .line 574
    const-wide/16 v4, 0x7d0

    .line 569
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 584
    :goto_29
    return-void

    .line 577
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "result"

    const-string v3, "\u5df2\u53d7\u7406"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const/16 v2, 0x200

    invoke-virtual {p0, v2, v0}, Lcom/bestpay/app/H5PayActivity;->setResult(ILandroid/content/Intent;)V

    .line 580
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->finish()V

    .line 581
    iget-object v2, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 582
    iget-object v2, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_29
.end method

.method private getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initview()V
    .registers 4

    .prologue
    .line 212
    const-string v0, "bestpay_webview"

    .line 213
    const-string v1, "id"

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/bestpay/app/H5PayActivity;->getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bestpay/app/H5PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    .line 214
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->initSettings()V

    .line 219
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/bestpay/app/H5PayActivity$MyWebChromeClient;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 221
    invoke-static {p0}, Lcom/bestpay/app/PassGuardManager;->getInstance(Landroid/content/Context;)Lcom/bestpay/app/PassGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    .line 222
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/bestpay/app/PassGuardManager;->setWebView(Landroid/webkit/WebView;)V

    .line 223
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    const-string v2, "passGuardManager"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    const-string v2, "pay"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/bestpay/app/H5PayActivity$2;

    invoke-direct {v1, p0}, Lcom/bestpay/app/H5PayActivity$2;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    return-void
.end method


# virtual methods
.method public goback()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 588
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u9000\u51fa\u4ed8\u6b3e\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 589
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bestpay/app/H5PayActivity$4;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$4;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 606
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/bestpay/app/H5PayActivity$5;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$5;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 610
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 612
    return-void
.end method

.method public gobackpro()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 616
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 617
    const-string v1, "\u8bf7\u95ee\u60a8\u662f\u5426\u8981\u5b89\u5168\u9000\u51fa?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 618
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bestpay/app/H5PayActivity$6;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$6;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 624
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/bestpay/app/H5PayActivity$7;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$7;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 628
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 629
    return-void
.end method

.method public initSettings()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 195
    const-string v1, "Linux/Android/tigerbrowser/2.0"

    .line 194
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 197
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 198
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 199
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 200
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 202
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 201
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 203
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 204
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 205
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 206
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 207
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 105
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 106
    const/16 v5, 0x12

    .line 105
    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    iput-object p0, p0, Lcom/bestpay/app/H5PayActivity;->mContext:Landroid/content/Context;

    .line 111
    :try_start_1e
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 112
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "arg_order_info"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_107

    .line 121
    :cond_30
    const-string v4, "bestpay_h5"

    const-string v5, "layout"

    invoke-direct {p0, v4, v5}, Lcom/bestpay/app/H5PayActivity;->getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bestpay/app/H5PayActivity;->setContentView(I)V

    .line 122
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bestpay/db/BestPayDao;->getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bestpay/db/BestPayDao;->getLastAccount()Lcom/bestpay/db/AccountInfo;

    move-result-object v2

    .line 123
    .local v2, "info":Lcom/bestpay/db/AccountInfo;
    if-eqz v2, :cond_9c

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=%s&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    const-string v5, "key_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=%s&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    const-string v5, "key_tid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 129
    invoke-virtual {v2}, Lcom/bestpay/db/AccountInfo;->getTid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 130
    invoke-virtual {v2}, Lcom/bestpay/db/AccountInfo;->getKey_index()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 131
    invoke-virtual {v2}, Lcom/bestpay/db/AccountInfo;->getKey_tid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 125
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;

    .line 140
    :cond_9c
    const-string v4, "bestpay_progress"

    const-string v5, "id"

    .line 139
    invoke-direct {p0, v4, v5}, Lcom/bestpay/app/H5PayActivity;->getIdentifierByStr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/bestpay/app/H5PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 141
    invoke-direct {p0}, Lcom/bestpay/app/H5PayActivity;->initview()V

    .line 143
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 144
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->H5BASEURL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mWebKitcookieStr:Ljava/lang/String;

    .line 145
    const-string v4, "aaa"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "webview\u8fd4\u56decookie\u4fe1\u606f\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/bestpay/app/H5PayActivity;->mWebKitcookieStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x0

    :try_start_d2
    const-string v5, "\u6b63\u5728\u52a0\u8f7d\u4e2d......"

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 149
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/bestpay/app/H5PayActivity;->H5BASEURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/bestpay/encrypt/SginKeyEncrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/bestpay/app/H5PayActivity$MyWebViewClient;

    invoke-direct {v5, p0}, Lcom/bestpay/app/H5PayActivity$MyWebViewClient;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 154
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->mWebKitcookieStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_106

    .line 156
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/bestpay/app/H5PayActivity$1;

    invoke-direct {v4, p0}, Lcom/bestpay/app/H5PayActivity$1;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_106} :catch_115

    .line 187
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v2    # "info":Lcom/bestpay/db/AccountInfo;
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_106
    :goto_106
    return-void

    .line 114
    :catch_107
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "\u652f\u4ed8\u51fa\u73b0\u672a\u77e5\u9519\u8bef"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->finish()V

    goto :goto_106

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .restart local v2    # "info":Lcom/bestpay/db/AccountInfo;
    :catch_115
    move-exception v1

    .line 173
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u52a0\u5bc6\u4fe1\u606f\u51fa\u73b0\u672a\u77e5\u9519\u8bef"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Lcom/bestpay/app/H5PayActivity;->finish()V

    goto :goto_106
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    invoke-virtual {v1}, Lcom/bestpay/app/PassGuardManager;->hasKeyBoardShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 548
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity;->mPassGuardManager:Lcom/bestpay/app/PassGuardManager;

    invoke-virtual {v1}, Lcom/bestpay/app/PassGuardManager;->StopPassGuardKeyBoardAll()V

    .line 555
    :goto_e
    return v0

    .line 551
    :cond_f
    const/4 v1, 0x4

    if-ne p1, v1, :cond_16

    .line 552
    invoke-direct {p0}, Lcom/bestpay/app/H5PayActivity;->exitBy2Click()V

    goto :goto_e

    .line 555
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 638
    invoke-direct {p0, p0}, Lcom/bestpay/app/H5PayActivity;->checkNetworkFlg(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 639
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7f51\u7edc\u4e0d\u7ed9\u529b"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 640
    const-string v1, "\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 641
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bestpay/app/H5PayActivity$8;

    invoke-direct {v2, p0}, Lcom/bestpay/app/H5PayActivity$8;-><init>(Lcom/bestpay/app/H5PayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 646
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 648
    :cond_2d
    return-void
.end method

.method public sendDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p1}, Lcom/bestpay/util/Tools;->string2Map(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 362
    .local v2, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "aaa"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u53d1\u9001\u8bbe\u5907\u6307\u7eb9\u4fe1\u606f\u5b57\u7b26\u4e32\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/bestpay/util/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/bestpay/util/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "deviceinfo":Lcom/bestpay/util/DeviceInfo;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "merchantID"

    const-string v4, "MERCHANTID"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v5, "orderNo"

    const-string v4, "ORDERSEQ"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v5, "orderReqNo"

    const-string v4, "ORDERREQTRANSEQ"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v4, "productNo"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v4, "encodeType"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v4, "operCity"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getLocationWithGps()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v4, "osSystem"

    sget-object v5, Lcom/bestpay/app/H5PayActivity;->OSSYSTEM:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v4, "clientVersion"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v4, "deviceName"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v4, "osVersion"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v4, "deviceModel"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v4, "imei"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v4, "imsi"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v4, "phoneMac"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getPhoneMac()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v4, "baseVersion"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getBaseVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v4, "kernelVersion"

    invoke-virtual {v0}, Lcom/bestpay/util/DeviceInfo;->getKernelVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v4, "mac"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v4, "isSaveToSession"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v4, "aaa"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bbe\u5907\u6307\u7eb9\u4fe1\u606f\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {v3}, Lcom/bestpay/encrypt/SginKeyEncrypt;->encryptMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "encryptMapStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity;->DEVICESEND:Ljava/lang/String;

    invoke-static {v1, v4, p3}, Lcom/bestpay/util/Net;->sendNetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    return-void
.end method
