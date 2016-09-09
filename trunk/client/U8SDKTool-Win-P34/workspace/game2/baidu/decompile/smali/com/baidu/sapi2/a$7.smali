.class Lcom/baidu/sapi2/a$7;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPortraitCallback;Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/SetPortraitResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[B

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SetPortraitCallback;Lcom/baidu/sapi2/result/SetPortraitResult;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 8
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$7;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/a$7;->d:[B

    iput-object p7, p0, Lcom/baidu/sapi2/a$7;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1818
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1819
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/SetPortraitResult;->setResultCode(I)V

    .line 1820
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1825
    :goto_23
    return-void

    .line 1822
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1823
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$7;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/a$7;->d:[B

    iget-object v4, p0, Lcom/baidu/sapi2/a$7;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPortraitCallback;Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onFinish()V

    .line 1795
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onStart()V

    .line 1790
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    invoke-static {v1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1800
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->f:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1801
    .local v0, "resultCode":I
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/result/SetPortraitResult;->setResultCode(I)V

    .line 1802
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v1}, Lcom/baidu/sapi2/result/SetPortraitResult;->getResultCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    .line 1810
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1813
    :goto_24
    return-void

    .line 1804
    :sswitch_25
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_24

    .line 1807
    :sswitch_2d
    iget-object v1, p0, Lcom/baidu/sapi2/a$7;->a:Lcom/baidu/sapi2/callback/SetPortraitCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$7;->b:Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_24

    .line 1802
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_25
        0x27167 -> :sswitch_2d
    .end sparse-switch
.end method
