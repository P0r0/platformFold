.class Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorizedResponseInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 8
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    const/4 v5, 0x1

    .line 1861
    const/4 v1, 0x0

    .line 1862
    .local v1, "type":I
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1863
    .local v2, "xml":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_26

    .line 1864
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1866
    :cond_26
    if-ne v1, v5, :cond_40

    .line 1867
    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->b(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    move-result-object v0

    .line 1868
    .local v0, "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    if-nez v0, :cond_5c

    .line 1869
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1870
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$1;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$1;-><init>(Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 1884
    .end local v0    # "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_40
    :goto_40
    if-nez v1, :cond_5a

    .line 1885
    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    move-result-object v0

    .line 1886
    .local v0, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    if-nez v0, :cond_76

    .line 1887
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 1888
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$2;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$2;-><init>(Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 1913
    .end local v0    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_5a
    :goto_5a
    const/4 v3, 0x0

    return-object v3

    .line 1877
    .local v0, "response":Lcom/baidu/sapi2/shell/response/SocialResponse;
    :cond_5c
    iget-boolean v3, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->offlineNotice:Z

    if-nez v3, :cond_6a

    iget-boolean v3, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->bindGuide:Z

    if-nez v3, :cond_6a

    iget v3, v0, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_70

    .line 1879
    :cond_6a
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    goto :goto_40

    .line 1881
    :cond_70
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SocialResponse;)V

    goto :goto_40

    .line 1895
    .local v0, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_76
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->D(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-boolean v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v3, :cond_8d

    .line 1896
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .line 1897
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    goto :goto_5a

    .line 1899
    :cond_8d
    iget v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    if-eqz v3, :cond_98

    iget v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    const v4, 0x1adb0

    if-ne v3, v4, :cond_9e

    .line 1900
    :cond_98
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    goto :goto_5a

    .line 1902
    :cond_9e
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v3}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 1903
    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v4, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$3;

    invoke-direct {v4, p0, v0}, Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter$3;-><init>(Lcom/baidu/sapi2/SapiWebView$AuthorizedResponseInterpreter;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5a
.end method
