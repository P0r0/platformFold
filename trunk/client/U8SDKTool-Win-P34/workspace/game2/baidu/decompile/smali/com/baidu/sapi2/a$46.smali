.class Lcom/baidu/sapi2/a$46;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 4919
    iput-object p1, p0, Lcom/baidu/sapi2/a$46;->b:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$46;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4928
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4929
    iget-object v0, p0, Lcom/baidu/sapi2/a$46;->b:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$46;->b:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->c(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/a$46;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, v1, v2, p2}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 4930
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4922
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 4923
    iget-object v0, p0, Lcom/baidu/sapi2/a$46;->b:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$46;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 4924
    return-void
.end method
