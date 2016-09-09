.class Lcom/baidu/sapi2/SapiWebView$9;
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
    .line 690
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$9;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 3
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$9;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 694
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$9;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegHandler;->handleFastReg()V

    .line 698
    :goto_11
    const/4 v0, 0x0

    return-object v0

    .line 696
    :cond_13
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$9;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadFastReg()V

    goto :goto_11
.end method
