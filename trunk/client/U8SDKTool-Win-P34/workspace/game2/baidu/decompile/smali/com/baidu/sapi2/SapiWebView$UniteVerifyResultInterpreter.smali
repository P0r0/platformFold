.class Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UniteVerifyResultInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 10
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1978
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1980
    .local v2, "result":Ljava/lang/String;
    :try_start_b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v3, "resultJSON":Lorg/json/JSONObject;
    const-string v6, "info"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1982
    .local v5, "verifyInfo":Ljava/lang/String;
    const-string v6, "u"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1983
    .local v1, "redirectUrl":Ljava/lang/String;
    new-instance v4, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v4}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 1984
    .local v4, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    const-string v6, "passuid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 1985
    const-string v6, "username"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 1986
    const-string v6, "displayname"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 1987
    const-string v6, "bduss"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 1988
    const-string v6, "ptoken"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 1989
    const-string v6, "stoken"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 1990
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6e

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1991
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v6}, Lcom/baidu/sapi2/SapiWebView;->E(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v6

    if-eqz v6, :cond_6e

    .line 1992
    iget-object v6, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyResultInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v6}, Lcom/baidu/sapi2/SapiWebView;->E(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;

    move-result-object v6

    invoke-interface {v6, v5, v1, v4}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_6e} :catch_70

    .line 1998
    .end local v1    # "redirectUrl":Ljava/lang/String;
    .end local v3    # "resultJSON":Lorg/json/JSONObject;
    .end local v4    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    .end local v5    # "verifyInfo":Ljava/lang/String;
    :cond_6e
    :goto_6e
    const/4 v6, 0x0

    return-object v6

    .line 1995
    :catch_70
    move-exception v0

    .line 1996
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_6e
.end method
