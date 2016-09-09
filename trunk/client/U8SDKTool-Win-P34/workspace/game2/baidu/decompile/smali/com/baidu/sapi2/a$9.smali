.class Lcom/baidu/sapi2/a$9;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$9;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/a$9;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$9;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1966
    iget-object v0, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1967
    iget-object v0, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    const/16 v1, -0x64

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 1972
    :goto_1c
    return-void

    .line 1969
    :cond_1d
    iget-object v0, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1970
    iget-object v0, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$9;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$9;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1976
    iget-object v5, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1977
    iget-object v5, p0, Lcom/baidu/sapi2/a$9;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 1978
    .local v1, "errorNo":I
    if-nez v1, :cond_4f

    .line 1980
    :try_start_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v2, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/baidu/sapi2/shell/response/GetPortraitResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/GetPortraitResponse;-><init>()V

    .line 1982
    .local v4, "response":Lcom/baidu/sapi2/shell/response/GetPortraitResponse;
    iput v1, v4, Lcom/baidu/sapi2/shell/response/GetPortraitResponse;->errorCode:I

    .line 1983
    const-string v5, "errmsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetPortraitResponse;->errorMsg:Ljava/lang/String;

    .line 1984
    const-string v5, "portrait"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1985
    .local v3, "portrait":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1986
    const-string v5, "http://himg.bdimg.com/sys/portrait/item/%s.jpg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/GetPortraitResponse;->portrait:Ljava/lang/String;

    .line 1989
    :cond_3f
    iget-object v5, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v5, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_44} :catch_45

    .line 1997
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "portrait":Ljava/lang/String;
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/GetPortraitResponse;
    :goto_44
    return-void

    .line 1990
    :catch_45
    move-exception v0

    .line 1991
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v5, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 1992
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_44

    .line 1995
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4f
    iget-object v5, p0, Lcom/baidu/sapi2/a$9;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v5, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_44
.end method
