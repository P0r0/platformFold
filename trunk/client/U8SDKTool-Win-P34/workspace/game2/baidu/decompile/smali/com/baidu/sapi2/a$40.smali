.class Lcom/baidu/sapi2/a$40;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4656
    iput-object p1, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$40;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$40;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4666
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4668
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4669
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4670
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->c(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$40;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, v1, v2, p2}, Lcom/baidu/sapi2/a;->c(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 4676
    :goto_25
    return-void

    .line 4673
    :cond_26
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4674
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$40;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$40;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    goto :goto_25
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4659
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 4660
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4661
    iget-object v0, p0, Lcom/baidu/sapi2/a$40;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$40;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/sapi2/a;->c(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 4662
    return-void
.end method
