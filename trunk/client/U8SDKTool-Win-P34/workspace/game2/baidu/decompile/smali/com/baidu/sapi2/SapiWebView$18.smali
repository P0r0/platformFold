.class Lcom/baidu/sapi2/SapiWebView$18;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$18;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$18;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2194
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$18;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2196
    :cond_13
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$18;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->F(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2197
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$18;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->F(Lcom/baidu/sapi2/SapiWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2199
    :cond_25
    return-void
.end method
