.class Lcom/baidu/sapi2/a$6;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 9
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$6;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/a$6;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/a$6;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$6;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/a$6;->e:[B

    iput-object p8, p0, Lcom/baidu/sapi2/a$6;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1720
    iget-object v0, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1721
    iget-object v0, p0, Lcom/baidu/sapi2/a$6;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    const/16 v1, -0x64

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 1726
    :goto_1c
    return-void

    .line 1723
    :cond_1d
    iget-object v0, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1724
    iget-object v0, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$6;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/a$6;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$6;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/a$6;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/a$6;->e:[B

    iget-object v6, p0, Lcom/baidu/sapi2/a$6;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_1c
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    invoke-static {v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1731
    iget-object v2, p0, Lcom/baidu/sapi2/a$6;->g:Lcom/baidu/sapi2/a;

    invoke-virtual {v2, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1732
    .local v0, "errorNo":I
    if-nez v0, :cond_22

    .line 1733
    new-instance v1, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    .line 1734
    .local v1, "response":Lcom/baidu/sapi2/shell/response/SapiResponse;
    iput v0, v1, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    .line 1735
    const-string v2, "\u8bbe\u7f6e\u5934\u50cf\u6210\u529f"

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorMsg:Ljava/lang/String;

    .line 1736
    iget-object v2, p0, Lcom/baidu/sapi2/a$6;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v2, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V

    .line 1740
    .end local v1    # "response":Lcom/baidu/sapi2/shell/response/SapiResponse;
    :goto_21
    return-void

    .line 1738
    :cond_22
    iget-object v2, p0, Lcom/baidu/sapi2/a$6;->a:Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-interface {v2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_21
.end method
