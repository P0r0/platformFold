.class Lcom/baidu/sapi2/a$1;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

.field final synthetic c:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$1;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$1;->b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 315
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 316
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$1;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 322
    :goto_22
    return-void

    .line 319
    :cond_23
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 320
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$1;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$1;->b:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    goto :goto_22
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 309
    iget-object v0, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$1;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$1;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 310
    return-void
.end method
