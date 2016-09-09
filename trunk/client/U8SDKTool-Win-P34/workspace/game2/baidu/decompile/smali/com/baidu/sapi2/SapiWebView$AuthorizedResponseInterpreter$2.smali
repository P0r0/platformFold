.class Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$2;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;)V
    .registers 2

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$2;->a:Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$2;->a:Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;->onFailed(ILjava/lang/String;)V

    .line 1892
    return-void
.end method
