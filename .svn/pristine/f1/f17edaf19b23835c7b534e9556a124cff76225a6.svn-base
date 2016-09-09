.class Lcom/baidu/sapi2/a$54;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/QuickUserRegResult;

.field final synthetic c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

.field final synthetic d:Lcom/baidu/sapi2/dto/QuickUserRegDTO;

.field final synthetic e:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/result/QuickUserRegResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V
    .registers 7
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$54;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    iput-object p6, p0, Lcom/baidu/sapi2/a$54;->d:Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1199
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1200
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1201
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1206
    :goto_23
    return-void

    .line 1203
    :cond_24
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-static {v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->b()V

    .line 1204
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    iget-object v1, p0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/a$54;->d:Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    goto :goto_23
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFinish()V

    .line 1141
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onStart()V

    .line 1136
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 19
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 1145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-static {v14}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/baidu/sapi2/a$a;->d()V

    .line 1146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v10

    .line 1147
    .local v10, "resultCode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v10}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1149
    :try_start_1c
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v9, "responseJSONObj":Lorg/json/JSONObject;
    const-string v14, "userinfo"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, "cipherUserInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->c:Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-virtual {v14, v4}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1152
    .local v7, "plainUserInfo":Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v13, "userInfoJSONObj":Lorg/json/JSONObject;
    const-string v14, "sdk"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 1154
    .local v12, "sdkJSONObj":Lorg/json/JSONObject;
    const-string v14, "msg"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1155
    .local v11, "resultMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v11}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultMsg(Ljava/lang/String;)V

    .line 1157
    const-string v14, "needvcode"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7c

    const/4 v3, 0x1

    .line 1158
    .local v3, "captchaRequired":Z
    :goto_53
    if-eqz v3, :cond_6d

    .line 1159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    const-string v15, "vcodestr"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v15}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onCaptchaRequired(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1162
    :cond_6d
    sparse-switch v10, :sswitch_data_112

    .line 1187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v15}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1194
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v7    # "plainUserInfo":Ljava/lang/String;
    .end local v9    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v11    # "resultMsg":Ljava/lang/String;
    .end local v12    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v13    # "userInfoJSONObj":Lorg/json/JSONObject;
    :goto_7b
    return-void

    .line 1157
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v7    # "plainUserInfo":Ljava/lang/String;
    .restart local v9    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v11    # "resultMsg":Ljava/lang/String;
    .restart local v12    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v13    # "userInfoJSONObj":Lorg/json/JSONObject;
    :cond_7c
    const/4 v3, 0x0

    goto :goto_53

    .line 1164
    .restart local v3    # "captchaRequired":Z
    :sswitch_7e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-virtual {v14, v13}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    .line 1165
    .local v1, "account":Lcom/baidu/sapi2/SapiAccount;
    new-instance v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v8}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 1167
    .local v8, "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->d:Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    iget-object v14, v14, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    iput-object v14, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 1168
    const-string v14, "logintype"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    .line 1169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->d:Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    iget-object v14, v14, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    invoke-static {v14}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->encryptPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 1171
    const-string v14, "ubi"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 1172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->e:Lcom/baidu/sapi2/a;

    invoke-static {v14}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v14

    iget-object v14, v14, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v14

    iget-object v15, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v14, v15, v8}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 1174
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v15}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_d4} :catch_d5

    goto :goto_7b

    .line 1190
    .end local v1    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v3    # "captchaRequired":Z
    .end local v4    # "cipherUserInfo":Ljava/lang/String;
    .end local v7    # "plainUserInfo":Ljava/lang/String;
    .end local v8    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .end local v9    # "responseJSONObj":Lorg/json/JSONObject;
    .end local v11    # "resultMsg":Ljava/lang/String;
    .end local v12    # "sdkJSONObj":Lorg/json/JSONObject;
    .end local v13    # "userInfoJSONObj":Lorg/json/JSONObject;
    :catch_d5
    move-exception v5

    .line 1191
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v15}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1192
    invoke-static {v5}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7b

    .line 1178
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "captchaRequired":Z
    .restart local v4    # "cipherUserInfo":Ljava/lang/String;
    .restart local v7    # "plainUserInfo":Ljava/lang/String;
    .restart local v9    # "responseJSONObj":Lorg/json/JSONObject;
    .restart local v11    # "resultMsg":Ljava/lang/String;
    .restart local v12    # "sdkJSONObj":Lorg/json/JSONObject;
    .restart local v13    # "userInfoJSONObj":Lorg/json/JSONObject;
    :sswitch_e5
    :try_start_e5
    const-string v14, "suggnames"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1179
    .local v2, "array":Lorg/json/JSONArray;
    if-eqz v2, :cond_104

    .line 1180
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ee
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_104

    .line 1181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    iget-object v14, v14, Lcom/baidu/sapi2/result/QuickUserRegResult;->sugUsernameList:Ljava/util/List;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    add-int/lit8 v6, v6, 0x1

    goto :goto_ee

    .line 1184
    .end local v6    # "i":I
    :cond_104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a$54;->a:Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/a$54;->b:Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-virtual {v14, v15}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onUsernameExist(Lcom/baidu/sapi2/result/QuickUserRegResult;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10f} :catch_d5

    goto/16 :goto_7b

    .line 1162
    nop

    :sswitch_data_112
    .sparse-switch
        0x0 -> :sswitch_7e
        0x5 -> :sswitch_e5
    .end sparse-switch
.end method
