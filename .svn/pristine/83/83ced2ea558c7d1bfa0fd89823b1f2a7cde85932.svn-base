.class Lcom/baidu/sapi2/a$45;
.super Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/GetCaptchaResult;

.field final synthetic c:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;[Ljava/lang/String;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/GetCaptchaResult;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # [Ljava/lang/String;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    iput-object p4, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p5, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-direct {p0, p2, p3}, Lcom/baidu/cloudsdk/common/http/BinaryHttpResponseHandler;-><init>(Landroid/os/Looper;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;[B)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 863
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 864
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 865
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 866
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 871
    :goto_23
    return-void

    .line 868
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 869
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 846
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 841
    return-void
.end method

.method protected onSuccess([B)V
    .registers 4
    .param p1, "binaryData"    # [B

    .prologue
    .line 850
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->c:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 851
    if-eqz p1, :cond_1d

    .line 852
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 853
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    iput-object p1, v0, Lcom/baidu/sapi2/result/GetCaptchaResult;->captchaImage:[B

    .line 854
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 859
    :goto_1c
    return-void

    .line 856
    :cond_1d
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 857
    iget-object v0, p0, Lcom/baidu/sapi2/a$45;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$45;->b:Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1c
.end method
