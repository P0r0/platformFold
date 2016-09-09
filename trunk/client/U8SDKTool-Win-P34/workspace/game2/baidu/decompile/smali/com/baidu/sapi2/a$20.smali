.class Lcom/baidu/sapi2/a$20;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceCheckResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/result/VoiceCheckResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$20;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$20;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$20;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2958
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2959
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2960
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$20;->b:Lcom/baidu/sapi2/result/VoiceCheckResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2966
    :goto_23
    return-void

    .line 2963
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 2964
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$20;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$20;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFinish()V

    .line 2947
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onStart()V

    .line 2942
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 2952
    iget-object v0, p0, Lcom/baidu/sapi2/a$20;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$20;->a:Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V

    .line 2953
    return-void
.end method
