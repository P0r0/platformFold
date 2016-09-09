.class Lcom/baidu/sapi2/a$38;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/SSOConfirmResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/SSOConfirmDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/result/SSOConfirmResult;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4506
    iput-object p1, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$38;->c:Lcom/baidu/sapi2/dto/SSOConfirmDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4519
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4520
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4521
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/SSOConfirmResult;->setResultCode(I)V

    .line 4522
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4527
    :goto_23
    return-void

    .line 4524
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4525
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->c:Lcom/baidu/sapi2/dto/SSOConfirmDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onFinish()V

    .line 4515
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 4509
    iget-object v0, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onStart()V

    .line 4510
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 4531
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    invoke-static {v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4533
    :try_start_9
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v2, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 4534
    .local v1, "resultCode":I
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/result/SSOConfirmResult;->setResultCode(I)V

    .line 4535
    if-nez v1, :cond_1e

    .line 4536
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iget-object v3, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4545
    .end local v1    # "resultCode":I
    :goto_1d
    return-void

    .line 4538
    .restart local v1    # "resultCode":I
    :cond_1e
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iget-object v3, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 4540
    .end local v1    # "resultCode":I
    :catch_26
    move-exception v0

    .line 4541
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    const/16 v3, -0xca

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/result/SSOConfirmResult;->setResultCode(I)V

    .line 4542
    iget-object v2, p0, Lcom/baidu/sapi2/a$38;->a:Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    iget-object v3, p0, Lcom/baidu/sapi2/a$38;->b:Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4543
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
