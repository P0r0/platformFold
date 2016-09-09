.class Lcom/duoku/platform/floatview/DKFloatWebView$7;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 667
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 687
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 699
    :cond_10
    :goto_10
    return-void

    .line 691
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 693
    if-nez v0, :cond_1c

    .line 695
    const-string v0, ""

    .line 697
    :cond_1c
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->i(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 673
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 682
    :cond_10
    :goto_10
    return-void

    .line 677
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 680
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 704
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0, p4}, Lcom/duoku/platform/floatview/DKFloatWebView;->b(Lcom/duoku/platform/floatview/DKFloatWebView;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->l(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->l(Lcom/duoku/platform/floatview/DKFloatWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 724
    :cond_24
    :goto_24
    return-void

    .line 709
    :cond_25
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0, v3}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;Z)V

    .line 710
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 712
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->m(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 714
    :cond_3b
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->j(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->j(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5c

    .line 717
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->j(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :cond_5c
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_79

    .line 721
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$7;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->k(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 723
    :cond_79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 754
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    .line 755
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 744
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 745
    if-eqz p2, :cond_8

    .line 747
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 749
    :cond_8
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 729
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 731
    :cond_10
    const/4 v0, 0x0

    .line 737
    :goto_11
    return v0

    .line 734
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 735
    const-string v1, "Referer"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 737
    const/4 v0, 0x1

    goto :goto_11
.end method
