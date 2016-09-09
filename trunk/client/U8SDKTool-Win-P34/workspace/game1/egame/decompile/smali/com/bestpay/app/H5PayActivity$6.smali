.class Lcom/bestpay/app/H5PayActivity$6;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity;->gobackpro()V
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
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$6;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 621
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$6;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 622
    iget-object v0, p0, Lcom/bestpay/app/H5PayActivity$6;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/bestpay/app/H5PayActivity;->access$1(Lcom/bestpay/app/H5PayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 623
    return-void
.end method
