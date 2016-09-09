.class Lcom/bestpay/app/H5PayActivity$4;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity;->goback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 593
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-nez v1, :cond_37

    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "result"

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/bestpay/app/H5PayActivity;->setResult(ILandroid/content/Intent;)V

    .line 597
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    invoke-virtual {v1}, Lcom/bestpay/app/H5PayActivity;->finish()V

    .line 598
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 599
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 605
    .end local v0    # "data":Landroid/content/Intent;
    :goto_36
    return-void

    .line 602
    :cond_37
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$4;->this$0:Lcom/bestpay/app/H5PayActivity;

    # invokes: Lcom/bestpay/app/H5PayActivity;->exit()V
    invoke-static {v1}, Lcom/bestpay/app/H5PayActivity;->access$6(Lcom/bestpay/app/H5PayActivity;)V

    goto :goto_36
.end method
