.class Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LecaiLoginInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 3
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->A(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1813
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$LecaiLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->A(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;->handleLCLogin()V

    .line 1815
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method
