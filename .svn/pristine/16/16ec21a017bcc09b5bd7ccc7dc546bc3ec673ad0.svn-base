.class Lcom/baidu/sapi2/a$44;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4855
    iput-object p1, p0, Lcom/baidu/sapi2/a$44;->a:Lcom/baidu/sapi2/a;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4876
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4877
    iget-object v0, p0, Lcom/baidu/sapi2/a$44;->a:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/b;->a(Z)V

    .line 4878
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 4858
    if-eqz p2, :cond_40

    .line 4860
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4861
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "fulfilbind"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "reg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_30

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_40

    .line 4865
    :cond_30
    iget-object v2, p0, Lcom/baidu/sapi2/a$44;->a:Lcom/baidu/sapi2/a;

    invoke-static {v2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/b;->a(Z)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_40} :catch_41

    .line 4872
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_40
    :goto_40
    return-void

    .line 4867
    :catch_41
    move-exception v0

    .line 4868
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 4869
    iget-object v2, p0, Lcom/baidu/sapi2/a$44;->a:Lcom/baidu/sapi2/a;

    invoke-static {v2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/b;->a(Z)V

    goto :goto_40
.end method
