.class Lcom/bestpay/app/H5PayActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "H5PayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/app/H5PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 412
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$MyWebViewClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebViewClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 428
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$MyWebViewClient;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$2(Lcom/bestpay/app/H5PayActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    :cond_15
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "file:///android_asset/bestpaysdk/error/bestpay_error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramSslErrorHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "paramSslError"    # Landroid/net/http/SslError;

    .prologue
    .line 441
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 442
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramString"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 416
    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 417
    :cond_10
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
