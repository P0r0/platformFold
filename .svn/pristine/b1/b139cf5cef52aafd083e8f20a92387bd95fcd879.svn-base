.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;
.super Landroid/os/Handler;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$FastRegAction;-><init>(Lcom/baidu/sapi2/SapiWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V
    .registers 3

    .prologue
    .line 3016
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3019
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3a

    .line 3020
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3021
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->u(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v1

    .line 3022
    .local v1, "phoneNum":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 3023
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2, v1, v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :cond_24
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->n(Lcom/baidu/sapi2/SapiWebView;)V

    .line 3026
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3028
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "phoneNum":Ljava/lang/String;
    :cond_3a
    return-void
.end method
