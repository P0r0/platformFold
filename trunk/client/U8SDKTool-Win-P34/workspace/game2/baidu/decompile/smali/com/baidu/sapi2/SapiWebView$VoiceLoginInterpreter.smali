.class Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceLoginInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 3
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->B(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1824
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$VoiceLoginInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->B(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;->handleVoiceLogin()V

    .line 1826
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method
