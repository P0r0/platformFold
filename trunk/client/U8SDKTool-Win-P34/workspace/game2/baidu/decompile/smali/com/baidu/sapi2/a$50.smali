.class Lcom/baidu/sapi2/a$50;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

.field final synthetic c:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/result/IqiyiLoginResult;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 5511
    iput-object p1, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$50;->c:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 5564
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5565
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5566
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 5567
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultCode(I)V

    .line 5568
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 5575
    :goto_26
    return-void

    .line 5571
    :cond_27
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 5572
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onStart()V

    .line 5573
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$50;->c:Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    iget-object v3, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    goto :goto_26
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 5518
    iget-object v0, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onFinish()V

    .line 5519
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 5514
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    const/16 v6, -0x64

    .line 5523
    invoke-super {p0, p1, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 5524
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-static {v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/a$a;->d()V

    .line 5525
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, p2}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 5526
    .local v2, "resultCode":I
    const/16 v5, 0x12e

    if-ne v2, v5, :cond_34

    .line 5528
    :try_start_18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5529
    .local v1, "object":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    const-string v6, "next_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/sapi2/result/IqiyiLoginResult;->nextUrl:Ljava/lang/String;

    .line 5530
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onBindWebview(Lcom/baidu/sapi2/result/IqiyiLoginResult;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_2e} :catch_2f

    .line 5560
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_2e
    return-void

    .line 5531
    :catch_2f
    move-exception v0

    .line 5532
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2e

    .line 5536
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_34
    invoke-static {p2}, Lcom/baidu/sapi2/SapiWebView;->b(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SocialResponse;

    move-result-object v4

    .line 5538
    .local v4, "socialResponse":Lcom/baidu/sapi2/shell/response/SocialResponse;
    if-nez v4, :cond_4e

    .line 5539
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultCode(I)V

    .line 5540
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    const-string v6, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 5541
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_2e

    .line 5544
    :cond_4e
    iget v5, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->errorCode:I

    if-eq v5, v6, :cond_66

    .line 5545
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultCode(I)V

    .line 5546
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    const-string v6, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/result/IqiyiLoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 5547
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_2e

    .line 5550
    :cond_66
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v5, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    .line 5551
    .local v3, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialType:Lcom/baidu/sapi2/utils/enums/SocialType;

    iget-object v6, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->socialPortraitUrl:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/baidu/sapi2/SapiAccount;->a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V

    .line 5553
    const-string v5, "account_type"

    iget-object v6, v4, Lcom/baidu/sapi2/shell/response/SocialResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/AccountType;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/baidu/sapi2/SapiAccount;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5555
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 5556
    iget-object v5, p0, Lcom/baidu/sapi2/a$50;->a:Lcom/baidu/sapi2/callback/IqiyiLoginCallback;

    iget-object v6, p0, Lcom/baidu/sapi2/a$50;->b:Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_2e
.end method
