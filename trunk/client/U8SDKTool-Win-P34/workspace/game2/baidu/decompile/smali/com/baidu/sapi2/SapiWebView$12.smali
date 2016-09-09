.class Lcom/baidu/sapi2/SapiWebView$12;
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
    .line 728
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$12;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->t(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method
