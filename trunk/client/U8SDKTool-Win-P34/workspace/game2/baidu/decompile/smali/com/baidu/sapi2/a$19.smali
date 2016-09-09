.class Lcom/baidu/sapi2/a$19;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceCheckResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/VoiceCheckDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/result/VoiceCheckResult;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$19;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$19;->c:Lcom/baidu/sapi2/dto/VoiceCheckDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2880
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2881
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2882
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$19;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2888
    :goto_23
    return-void

    .line 2885
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2886
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$19;->c:Lcom/baidu/sapi2/dto/VoiceCheckDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFinish()V

    .line 2869
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onStart()V

    .line 2864
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2874
    iget-object v0, p0, Lcom/baidu/sapi2/a$19;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$19;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V

    .line 2875
    return-void
.end method
