.class Lcom/baidu/sapi2/a$22;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/sapi2/result/VoiceRegResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;ZLcom/baidu/sapi2/result/VoiceRegResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3169
    iput-object p1, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-boolean p4, p0, Lcom/baidu/sapi2/a$22;->b:Z

    iput-object p5, p0, Lcom/baidu/sapi2/a$22;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    iput-object p6, p0, Lcom/baidu/sapi2/a$22;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$22;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/a$22;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3190
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3191
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/VoiceRegResult;->setResultCode(I)V

    .line 3192
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$22;->c:Lcom/baidu/sapi2/result/VoiceRegResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3198
    :goto_23
    return-void

    .line 3195
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 3196
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$22;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$22;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$22;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/baidu/sapi2/a$22;->b:Z

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 3179
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 3174
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 3184
    iget-object v0, p0, Lcom/baidu/sapi2/a$22;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$22;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-boolean v2, p0, Lcom/baidu/sapi2/a$22;->b:Z

    invoke-static {v0, v1, p2, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Z)V

    .line 3185
    return-void
.end method
