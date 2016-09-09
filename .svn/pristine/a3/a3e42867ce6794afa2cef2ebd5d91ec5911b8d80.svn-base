.class Lcom/baidu/sapi2/SapiCache$3$1;
.super Ljava/lang/Object;
.source "SapiCache.java"

# interfaces
.implements Lcom/baidu/sapi2/SapiCache$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache$3;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/c;

.field final synthetic b:Lcom/baidu/sapi2/c$a$a;

.field final synthetic c:Lcom/baidu/sapi2/SapiCache$3;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiCache$3;Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/c$a$a;)V
    .registers 4

    .prologue
    .line 360
    iput-object p1, p0, Lcom/baidu/sapi2/SapiCache$3$1;->c:Lcom/baidu/sapi2/SapiCache$3;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiCache$3$1;->a:Lcom/baidu/sapi2/c;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/c$a$a;)V
    .registers 8
    .param p1, "module"    # Lcom/baidu/sapi2/c$a$a;

    .prologue
    .line 374
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/c$a$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/SapiCache$3$1$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/baidu/sapi2/SapiCache$3$1$1;-><init>(Lcom/baidu/sapi2/SapiCache$3$1;Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 404
    return-void
.end method

.method public a(Lcom/baidu/sapi2/c$a$a;Ljava/lang/String;)V
    .registers 6
    .param p1, "module"    # Lcom/baidu/sapi2/c$a$a;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1;->a:Lcom/baidu/sapi2/c;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/c;)V

    .line 364
    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 365
    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 370
    :cond_37
    return-void
.end method
