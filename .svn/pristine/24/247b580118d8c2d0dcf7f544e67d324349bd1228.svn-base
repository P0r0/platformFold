.class Lcom/baidu/sapi2/SapiWebView$Command;
.super Ljava/lang/Object;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Command"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 2834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiWebView$Command;->b:Ljava/util/List;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/baidu/sapi2/SapiWebView$Command;
    .registers 11
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2855
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v2, v7

    .line 2879
    :cond_8
    :goto_8
    return-object v2

    .line 2859
    :cond_9
    :try_start_9
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v2, Lcom/baidu/sapi2/SapiWebView$Command;

    invoke-direct {v2}, Lcom/baidu/sapi2/SapiWebView$Command;-><init>()V

    .line 2861
    .local v2, "context":Lcom/baidu/sapi2/SapiWebView$Command;
    const-string v8, "action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2862
    .local v0, "action":Lorg/json/JSONObject;
    if-eqz v0, :cond_42

    .line 2863
    const-string v8, "name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/baidu/sapi2/SapiWebView$Command;->a:Ljava/lang/String;

    .line 2864
    const-string v8, "params"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 2865
    .local v6, "params":Lorg/json/JSONArray;
    if-eqz v6, :cond_42

    .line 2866
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_42

    .line 2867
    iget-object v8, v2, Lcom/baidu/sapi2/SapiWebView$Command;->b:Ljava/util/List;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2866
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 2871
    .end local v4    # "i":I
    .end local v6    # "params":Lorg/json/JSONArray;
    :cond_42
    const-string v8, "callback"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2872
    .local v1, "callback":Lorg/json/JSONObject;
    if-eqz v1, :cond_8

    .line 2873
    const-string v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/baidu/sapi2/SapiWebView$Command;->c:Ljava/lang/String;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_52} :catch_53

    goto :goto_8

    .line 2876
    .end local v0    # "action":Lorg/json/JSONObject;
    .end local v1    # "callback":Lorg/json/JSONObject;
    .end local v2    # "context":Lcom/baidu/sapi2/SapiWebView$Command;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_53
    move-exception v3

    .line 2877
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {v3}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    move-object v2, v7

    .line 2879
    goto :goto_8
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$Command;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getActionParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$Command;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCallbackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$Command;->c:Ljava/lang/String;

    return-object v0
.end method
