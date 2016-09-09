.class Lcom/baidu/sapi2/SapiWebView$13;
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
    .line 737
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 740
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->presetPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 741
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/sapi2/SapiConfiguration;->presetPhoneNumber:Ljava/lang/String;

    .line 744
    :cond_16
    :goto_16
    return-object v0

    .line 743
    :cond_17
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->u(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "localPhoneNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v0, ""

    goto :goto_16
.end method
