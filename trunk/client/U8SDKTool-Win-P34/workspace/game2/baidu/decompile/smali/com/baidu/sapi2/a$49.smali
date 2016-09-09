.class Lcom/baidu/sapi2/a$49;
.super Lcom/baidu/sapi2/callback/GetUserInfoCallback;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

.field final synthetic c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 5438
    iput-object p1, p0, Lcom/baidu/sapi2/a$49;->e:Lcom/baidu/sapi2/a;

    iput-object p2, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/a$49;->b:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    iput-object p4, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$49;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 6
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 5441
    iget-object v0, p0, Lcom/baidu/sapi2/a$49;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->b:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    iget-object v3, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    .line 5442
    return-void
.end method

.method public b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 8
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 5446
    iget-object v1, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->secureMobile:Ljava/lang/String;

    .line 5447
    .local v1, "sapiPhoneNum":Ljava/lang/String;
    iget-boolean v0, p1, Lcom/baidu/sapi2/result/GetUserInfoResult;->incompleteUser:Z

    .line 5449
    .local v0, "isIncompleteUser":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 5451
    if-eqz v0, :cond_18

    .line 5453
    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->e:Lcom/baidu/sapi2/a;

    iget-object v3, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$49;->b:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    iget-object v5, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    .line 5465
    :goto_17
    return-void

    .line 5454
    :cond_18
    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5456
    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v3, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_17

    .line 5459
    :cond_28
    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->e:Lcom/baidu/sapi2/a;

    iget-object v3, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v4, p0, Lcom/baidu/sapi2/a$49;->b:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    iget-object v5, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-static {v2, v3, v4, v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    goto :goto_17

    .line 5463
    :cond_34
    iget-object v2, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v3, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_17
.end method

.method public c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V
    .registers 4
    .param p1, "result"    # Lcom/baidu/sapi2/result/GetUserInfoResult;

    .prologue
    .line 5469
    iget-object v0, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetUserInfoResult;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultCode(I)V

    .line 5470
    iget-object v0, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {p1}, Lcom/baidu/sapi2/result/GetUserInfoResult;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 5471
    iget-object v0, p0, Lcom/baidu/sapi2/a$49;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$49;->c:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 5472
    return-void
.end method

.method public synthetic onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 5438
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$49;->a(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 5438
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$49;->c(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 5481
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 5476
    return-void
.end method

.method public synthetic onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    .registers 2
    .param p1, "x0"    # Lcom/baidu/sapi2/result/SapiResult;

    .prologue
    .line 5438
    check-cast p1, Lcom/baidu/sapi2/result/GetUserInfoResult;

    .end local p1    # "x0":Lcom/baidu/sapi2/result/SapiResult;
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a$49;->b(Lcom/baidu/sapi2/result/GetUserInfoResult;)V

    return-void
.end method
