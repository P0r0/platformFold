.class Lcom/baidu/sapi2/a$5;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$5;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-boolean p4, p0, Lcom/baidu/sapi2/a$5;->b:Z

    iput-object p5, p0, Lcom/baidu/sapi2/a$5;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$5;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$5;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1600
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1601
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1602
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1603
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$5;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/a$5;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/a$5;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 1609
    :goto_2a
    return-void

    .line 1606
    :cond_2b
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1607
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$5;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$5;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$5;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/baidu/sapi2/a$5;->b:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_2a
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1594
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$5;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$5;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/a$5;->b:Z

    iget-object v5, p0, Lcom/baidu/sapi2/a$5;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    .line 1596
    return-void
.end method
