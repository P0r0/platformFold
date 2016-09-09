.class Lcom/baidu/sapi2/SapiWebView$10;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->c()V
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
    .line 703
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$10;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "result":Z
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$10;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 708
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$10;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->onForgetPwd()Z

    move-result v0

    .line 710
    :cond_13
    if-eqz v0, :cond_18

    const-string v1, "1"

    :goto_17
    return-object v1

    :cond_18
    const-string v1, "0"

    goto :goto_17
.end method
