.class Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;
.super Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UniteVerifyInterpreter"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .registers 2

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$AbstractInterpreter;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public interpret(Lcom/baidu/sapi2/SapiWebView$Command;)Ljava/lang/String;
    .registers 9
    .param p1, "command"    # Lcom/baidu/sapi2/SapiWebView$Command;

    .prologue
    .line 1837
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiWebView$Command;->getActionParams()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1838
    .local v1, "data":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->C(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1840
    :try_start_19
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "token"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1842
    .local v4, "verityToken":Ljava/lang/String;
    const-string v5, "adtext"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1843
    .local v0, "adText":Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$UniteVerifyInterpreter;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v5}, Lcom/baidu/sapi2/SapiWebView;->C(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;->handleUniteVerify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_33} :catch_35

    .line 1848
    .end local v0    # "adText":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "verityToken":Ljava/lang/String;
    :cond_33
    :goto_33
    const/4 v5, 0x0

    return-object v5

    .line 1844
    :catch_35
    move-exception v2

    .line 1845
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_33
.end method
