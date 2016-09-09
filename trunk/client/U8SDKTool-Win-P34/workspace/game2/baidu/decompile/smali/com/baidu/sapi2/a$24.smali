.class Lcom/baidu/sapi2/a$24;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/VoiceLoginResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Lcom/baidu/sapi2/result/VoiceLoginResult;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3268
    iput-object p1, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$24;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$24;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$24;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3289
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3290
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceLoginResult;->setResultCode(I)V

    .line 3291
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$24;->b:Lcom/baidu/sapi2/result/VoiceLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3297
    :goto_23
    return-void

    .line 3294
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3295
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$24;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$24;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFinish()V

    .line 3278
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onStart()V

    .line 3273
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3283
    iget-object v0, p0, Lcom/baidu/sapi2/a$24;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$24;->a:Lcom/baidu/sapi2/callback/VoiceLoginCallback;

    invoke-static {v0, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;)V

    .line 3284
    return-void
.end method
