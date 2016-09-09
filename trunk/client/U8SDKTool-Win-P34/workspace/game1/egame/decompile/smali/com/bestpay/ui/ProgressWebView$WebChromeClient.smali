.class public Lcom/bestpay/ui/ProgressWebView$WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/ui/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/ui/ProgressWebView;


# direct methods
.method public constructor <init>(Lcom/bestpay/ui/ProgressWebView;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/bestpay/ui/ProgressWebView$WebChromeClient;->this$0:Lcom/bestpay/ui/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 36
    const/16 v0, 0x64

    if-ne p2, v0, :cond_13

    .line 37
    iget-object v0, p0, Lcom/bestpay/ui/ProgressWebView$WebChromeClient;->this$0:Lcom/bestpay/ui/ProgressWebView;

    # getter for: Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/ui/ProgressWebView;->access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 43
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 44
    return-void

    .line 39
    :cond_13
    iget-object v0, p0, Lcom/bestpay/ui/ProgressWebView$WebChromeClient;->this$0:Lcom/bestpay/ui/ProgressWebView;

    # getter for: Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/ui/ProgressWebView;->access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 40
    iget-object v0, p0, Lcom/bestpay/ui/ProgressWebView$WebChromeClient;->this$0:Lcom/bestpay/ui/ProgressWebView;

    # getter for: Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/ui/ProgressWebView;->access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 41
    :cond_29
    iget-object v0, p0, Lcom/bestpay/ui/ProgressWebView$WebChromeClient;->this$0:Lcom/bestpay/ui/ProgressWebView;

    # getter for: Lcom/bestpay/ui/ProgressWebView;->progressbar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/bestpay/ui/ProgressWebView;->access$0(Lcom/bestpay/ui/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_f
.end method
