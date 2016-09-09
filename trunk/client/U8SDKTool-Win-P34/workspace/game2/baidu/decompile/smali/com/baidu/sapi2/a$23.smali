.class Lcom/baidu/sapi2/a$23;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/LoginCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/LoginResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Lcom/baidu/sapi2/dto/LoginDTO;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/result/LoginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/LoginDTO;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$23;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$23;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 691
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 692
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 693
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 698
    :goto_23
    return-void

    .line 695
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 696
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$23;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/LoginCallback;->onFinish()V

    .line 626
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/LoginCallback;->onStart()V

    .line 621
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 18
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/sapi2/a$a;->d()V

    .line 631
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v9

    .line 632
    .local v9, "resultCode":I
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v9}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 634
    :try_start_16
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 635
    .local v8, "responseJSONObj":Lorg/json/JSONObject;
    const-string v13, "userinfo"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "cipherUserInfo":Ljava/lang/String;
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual {v13, v4}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "plainUserInfo":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 638
    .local v12, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v13, "sdk"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 639
    .local v11, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v13, "msg"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 640
    .local v10, "resultMsg":Ljava/lang/String;
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v10}, Lcom/baidu/sapi2/result/LoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 642
    new-instance v2, Lcom/baidu/sapi2/result/SapiResult$Action;

    invoke-direct {v2}, Lcom/baidu/sapi2/result/SapiResult$Action;-><init>()V

    .line 643
    .local v2, "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    const-string v13, "action"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->fromString(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionMode:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    .line 644
    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/sapi2/result/SapiResult$ActionType;->fromString(Ljava/lang/String;)Lcom/baidu/sapi2/result/SapiResult$ActionType;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionType:Lcom/baidu/sapi2/result/SapiResult$ActionType;

    .line 645
    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionTitle:Ljava/lang/String;

    .line 646
    const-string v13, "url"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionUrl:Ljava/lang/String;

    .line 647
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    iput-object v2, v13, Lcom/baidu/sapi2/result/LoginResult;->action:Lcom/baidu/sapi2/result/SapiResult$Action;

    .line 649
    const-string v13, "needvcode"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a3

    const/4 v3, 0x1

    .line 650
    .local v3, "captchaRequired":Z
    :goto_7a
    if-eqz v3, :cond_8e

    .line 651
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    const-string v14, "vcodestr"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 654
    :cond_8e
    sget-object v13, Lcom/baidu/sapi2/a$51;->a:[I

    iget-object v14, v2, Lcom/baidu/sapi2/result/SapiResult$Action;->actionMode:Lcom/baidu/sapi2/result/SapiResult$ActionMode;

    invoke-virtual {v14}, Lcom/baidu/sapi2/result/SapiResult$ActionMode;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_122

    .line 679
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 686
    .end local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v6    # "plainUserInfo":Ljava/lang/String;
    .end local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v10    # "resultMsg":Ljava/lang/String;
    .end local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_a2
    return-void

    .line 649
    .restart local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v6    # "plainUserInfo":Ljava/lang/String;
    .restart local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v10    # "resultMsg":Ljava/lang/String;
    .restart local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :cond_a3
    const/4 v3, 0x0

    goto :goto_7a

    .line 656
    .restart local v3    # "captchaRequired":Z
    :pswitch_a5
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-static {v13, v14}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/dto/LoginDTO;)Lcom/baidu/sapi2/dto/LoginDTO;

    .line 657
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onProxyActionRequired(Lcom/baidu/sapi2/result/LoginResult;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_b3} :catch_b4

    goto :goto_a2

    .line 682
    .end local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v6    # "plainUserInfo":Ljava/lang/String;
    .end local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v10    # "resultMsg":Ljava/lang/String;
    .end local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_b4
    move-exception v5

    .line 683
    .local v5, "e":Ljava/lang/Exception;
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 684
    invoke-static {v5}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_a2

    .line 660
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "action":Lcom/baidu/sapi2/result/SapiResult$Action;
    .restart local v3    # "captchaRequired":Z
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v6    # "plainUserInfo":Ljava/lang/String;
    .restart local v8    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v10    # "resultMsg":Ljava/lang/String;
    .restart local v11    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v12    # "userInfoJSONObj":Lorg/json/JSONObject;
    :pswitch_c0
    if-nez v9, :cond_10d

    .line 661
    :try_start_c2
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v13, v12}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    .line 662
    .local v1, "account":Lcom/baidu/sapi2/SapiAccount;
    new-instance v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v7}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 664
    .local v7, "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 665
    const-string v13, "logintype"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    .line 666
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->d:Lcom/baidu/sapi2/dto/LoginDTO;

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->encryptPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 667
    const-string v13, "ubi"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 668
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->e:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v13

    iget-object v14, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v13, v14, v7}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 670
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 671
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_a2

    .line 672
    .end local v1    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v7    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    :cond_10d
    const/16 v13, 0x12

    if-ne v9, v13, :cond_119

    .line 673
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onLoginTypeConflict(Lcom/baidu/sapi2/result/LoginResult;)V

    goto :goto_a2

    .line 675
    :cond_119
    iget-object v13, p0, Lcom/baidu/sapi2/a$23;->a:Lcom/baidu/sapi2/callback/LoginCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/a$23;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_120} :catch_b4

    goto :goto_a2

    .line 654
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_c0
    .end packed-switch
.end method
