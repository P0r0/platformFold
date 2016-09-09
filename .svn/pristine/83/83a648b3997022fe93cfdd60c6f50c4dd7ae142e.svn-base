.class Lcom/baidu/sapi2/a$33;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4181
    iput-object p1, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$33;->a:Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$33;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/a$33;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$33;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$33;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/a$33;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4191
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4193
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4194
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4195
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$33;->a:Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;)V

    .line 4201
    :goto_1f
    return-void

    .line 4198
    :cond_20
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 4199
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$33;->a:Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$33;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$33;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$33;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/a$33;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/a$33;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4184
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 4185
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4186
    iget-object v0, p0, Lcom/baidu/sapi2/a$33;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$33;->a:Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;)V

    .line 4187
    return-void
.end method
