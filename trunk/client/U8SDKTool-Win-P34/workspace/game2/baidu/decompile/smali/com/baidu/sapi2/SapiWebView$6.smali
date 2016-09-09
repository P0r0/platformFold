.class Lcom/baidu/sapi2/SapiWebView$6;
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
    .line 659
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$6;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 663
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$6;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 664
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$6;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->p(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/SapiWebView$BindWidgetCallback;->onPhoneNumberExist(Ljava/lang/String;)V

    .line 666
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method
