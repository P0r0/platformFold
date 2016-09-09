.class Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->goback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    # getter for: Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;

    move-result-object v0

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 340
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface$5;->this$1:Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;

    # getter for: Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->this$0:Lcom/bestpay/app/H5PayActivity;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;->access$0(Lcom/bestpay/app/H5PayActivity$PayJavaScriptInterface;)Lcom/bestpay/app/H5PayActivity;

    move-result-object v0

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 343
    :cond_1d
    return-void
.end method
