.class Lcom/baidu/sapi2/SapiWebView$3$2;
.super Ljava/lang/Object;
.source "SapiWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView$3;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/webkit/JsPromptResult;

.field final synthetic d:Lcom/baidu/sapi2/SapiWebView$3;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$3;Ljava/lang/String;[Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .registers 5

    .prologue
    .line 577
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->d:Lcom/baidu/sapi2/SapiWebView$3;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->c:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 580
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$Command;->parse(Ljava/lang/String;)Lcom/baidu/sapi2/SapiWebView$Command;

    move-result-object v0

    .line 581
    .local v0, "command":Lcom/baidu/sapi2/SapiWebView$Command;
    if-eqz v0, :cond_60

    .line 582
    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 583
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->d:Lcom/baidu/sapi2/SapiWebView$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$3;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 584
    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->d:Lcom/baidu/sapi2/SapiWebView$3;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$3;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;->interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    .line 587
    :cond_40
    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_60

    const-string v1, "prompt_on_cancel"

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 589
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->c:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 594
    :goto_5f
    return-void

    .line 593
    :cond_60
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->c:Landroid/webkit/JsPromptResult;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$3$2;->b:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_5f
.end method
