.class Lcom/baidu/sapi2/SapiCache$3$1$1;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache$3$1;->a(Lcom/baidu/sapi2/c$a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiCache$3$1;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiCache$3$1;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 402
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$a$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 385
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiCache$3$1;->a:Lcom/baidu/sapi2/c;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/b;->a(Lcom/baidu/sapi2/c;)V

    .line 386
    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/sapi2/c$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 391
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 393
    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$3$1$1;->a:Lcom/baidu/sapi2/SapiCache$3$1;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$3$1;->b:Lcom/baidu/sapi2/c$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/c$a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/c$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "externalFile":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;[B)V

    .line 398
    .end local v0    # "externalFile":Ljava/lang/String;
    :cond_71
    return-void
.end method
