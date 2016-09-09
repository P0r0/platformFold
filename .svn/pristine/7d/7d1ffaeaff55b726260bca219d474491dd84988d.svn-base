.class Lcom/baidu/sapi2/SapiWebView$ShareAccountsConfigInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAccountsConfigInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$ShareAccountsConfigInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 5
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1942
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v0

    .line 1944
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-static {v0}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1945
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-nez v1, :cond_10

    .line 1946
    const/4 v2, 0x0

    .line 1948
    :goto_f
    return-object v2

    :cond_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method
