.class Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinaSSOInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SinaSSOInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->a(Z)V

    .line 1685
    const/4 v0, 0x0

    return-object v0
.end method
