.class Lcom/baidu/sapi2/SapiWebView$ShareAccountsRemoveInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAccountsRemoveInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$ShareAccountsRemoveInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 9
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    const/4 v6, 0x0

    .line 1960
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1961
    .local v3, "uid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1962
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v1

    .line 1963
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 1964
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1965
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/share/a;->b(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1970
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_39
    return-object v6
.end method
