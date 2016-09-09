.class final Lcom/baidu/sapi2/a;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/a$51;,
        Lcom/baidu/sapi2/a$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x6

.field private static final b:Ljava/lang/String; = "3"


# instance fields
.field private c:Lcom/baidu/sapi2/SapiConfiguration;

.field private d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

.field private e:Lcom/baidu/sapi2/a$a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/sapi2/dto/LoginDTO;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    .line 226
    new-instance v0, Lcom/baidu/sapi2/a$a;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/dto/LoginDTO;)Lcom/baidu/sapi2/dto/LoginDTO;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/dto/LoginDTO;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/sapi2/a;->h:Lcom/baidu/sapi2/dto/LoginDTO;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p2, "sign_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5161
    .local p1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5162
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5164
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 5165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 5169
    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5172
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5173
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5176
    :try_start_3b
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5177
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_50

    .line 5178
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5179
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_50} :catch_56

    .line 5184
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :cond_50
    :goto_50
    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 5181
    :catch_56
    move-exception v1

    .line 5182
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_50

    .line 5187
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "string":Ljava/lang/String;
    :cond_5b
    const-string v8, "sign_key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private a(ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "callBack"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p3, "json"    # Ljava/lang/String;
    .param p4, "helper"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    .prologue
    .line 5226
    if-eqz p3, :cond_8a

    .line 5227
    new-instance v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v5}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 5229
    .local v5, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5230
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v7, "userinfo"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5231
    .local v6, "strUserInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 5232
    invoke-virtual {p4, v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5233
    .local v1, "decryptedUserInfo":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5234
    .local v3, "jsonInfo":Lorg/json/JSONObject;
    const-string v7, "bduss"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 5235
    const-string v7, "ptoken"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 5236
    const-string v7, "stoken"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 5237
    const-string v7, "displayname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 5238
    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 5239
    const-string v7, "uname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 5240
    const-string v7, "email"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    .line 5242
    sparse-switch p1, :sswitch_data_8e

    .line 5263
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    .line 5272
    .end local v1    # "decryptedUserInfo":Ljava/lang/String;
    .end local v3    # "jsonInfo":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .end local v6    # "strUserInfo":Ljava/lang/String;
    :cond_5f
    :goto_5f
    return-void

    .line 5244
    .restart local v1    # "decryptedUserInfo":Ljava/lang/String;
    .restart local v3    # "jsonInfo":Lorg/json/JSONObject;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v6    # "strUserInfo":Ljava/lang/String;
    :sswitch_60
    invoke-virtual {p0, v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 5245
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 5246
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 5247
    invoke-virtual {p2, v5}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_74} :catch_75

    goto :goto_5f

    .line 5266
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v1    # "decryptedUserInfo":Ljava/lang/String;
    .end local v3    # "jsonInfo":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "strUserInfo":Ljava/lang/String;
    :catch_75
    move-exception v2

    .line 5267
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    goto :goto_5f

    .line 5250
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "decryptedUserInfo":Ljava/lang/String;
    .restart local v3    # "jsonInfo":Lorg/json/JSONObject;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "strUserInfo":Ljava/lang/String;
    :sswitch_7a
    :try_start_7a
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUsernameFormatError()V

    goto :goto_5f

    .line 5254
    :sswitch_7e
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUsernameAlreadyExist()V

    goto :goto_5f

    .line 5257
    :sswitch_82
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUserHaveUsername()V

    goto :goto_5f

    .line 5260
    :sswitch_86
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onInvalidBduss()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_89} :catch_75

    goto :goto_5f

    .line 5270
    .end local v1    # "decryptedUserInfo":Ljava/lang/String;
    .end local v3    # "jsonInfo":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .end local v6    # "strUserInfo":Ljava/lang/String;
    :cond_8a
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    goto :goto_5f

    .line 5242
    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_60
        0x27167 -> :sswitch_86
        0x27168 -> :sswitch_82
        0x27169 -> :sswitch_7e
        0x2716e -> :sswitch_7a
        0x2716f -> :sswitch_7e
    .end sparse-switch
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 5
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sapi2/a;->a(ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/baidu/sapi2/shell/callback/SapiCallBack;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/a;->d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V
    .registers 4
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/callback/IqiyiLoginCallback;
    .param p2, "x2"    # Lcom/baidu/sapi2/dto/IqiyiLoginDTO;
    .param p3, "x3"    # Lcom/baidu/sapi2/result/IqiyiLoginResult;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V
    .registers 6
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/callback/SapiCallback;
    .param p2, "x2"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Ljava/lang/Runnable;
    .param p5, "x5"    # [Z

    .prologue
    .line 168
    invoke-direct/range {p0 .. p5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/callback/SapiCallback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/callback/VoiceLoginCallback;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 8
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 8
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Lcom/baidu/sapi2/shell/callback/SapiCallBack;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/security/cert/CertificateException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/IqiyiLoginCallback;
    .param p2, "iqiyiLoginDTO"    # Lcom/baidu/sapi2/dto/IqiyiLoginDTO;
    .param p3, "result"    # Lcom/baidu/sapi2/result/IqiyiLoginResult;

    .prologue
    .line 5490
    iget-object v0, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->openID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5491
    :cond_10
    invoke-virtual {p1, p3}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onLogin(Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    .line 5578
    :goto_13
    return-void

    .line 5494
    :cond_14
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 5495
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 5496
    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 5497
    .local v6, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 5498
    const-string v0, "crypt_m"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->phoneNum:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5500
    :cond_3b
    const-string v0, "access_token"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->accessToken:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5501
    const-string v0, "osuid"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->openID:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5502
    const-string v0, "json"

    const-string v1, "1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5503
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/sapi2/utils/enums/SocialType;->IQIYI:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v2}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5504
    const-string v0, "act"

    const-string v1, "special"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5505
    const-string v0, "display"

    const-string v1, "native"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5506
    const-string v0, "client"

    const-string v1, "android"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5507
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5508
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5509
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 5510
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->s()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$50;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$50;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/result/IqiyiLoginResult;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V

    invoke-virtual {v9, v10, v11, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_13
.end method

.method private a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V
    .registers 18
    .param p2, "params"    # Lcom/baidu/cloudsdk/common/http/RequestParams;
    .param p3, "mainHandler"    # Landroid/os/Handler;
    .param p4, "timeoutTask"    # Ljava/lang/Runnable;
    .param p5, "timeout"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/FastRegResult;",
            ">;",
            "Lcom/baidu/cloudsdk/common/http/RequestParams;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "[Z)V"
        }
    .end annotation

    .prologue
    .line 4757
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/FastRegResult;>;"
    new-instance v3, Lcom/baidu/sapi2/result/FastRegResult;

    invoke-direct {v3}, Lcom/baidu/sapi2/result/FastRegResult;-><init>()V

    .line 4758
    .local v3, "result":Lcom/baidu/sapi2/result/FastRegResult;
    const/4 v0, 0x0

    aget-boolean v0, p5, v0

    if-eqz v0, :cond_1b

    .line 4759
    iget-object v0, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a$a;->d()V

    .line 4760
    const/16 v0, -0x67

    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4761
    invoke-interface {p1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 4762
    invoke-interface {p1, v3}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4831
    :goto_1a
    return-void

    .line 4766
    :cond_1b
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/smsgetlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$43;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/sapi2/a$43;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/FastRegResult;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;[Z)V

    invoke-virtual {v9, v10, v11, p2, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_1a
.end method

.method private a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Z)V
    .registers 10
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "newUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/VoiceRegResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3203
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/VoiceRegResult;>;"
    new-instance v3, Lcom/baidu/sapi2/result/VoiceRegResult;

    invoke-direct {v3}, Lcom/baidu/sapi2/result/VoiceRegResult;-><init>()V

    .line 3205
    .local v3, "result":Lcom/baidu/sapi2/result/VoiceRegResult;
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3206
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3207
    .local v4, "resultCode":I
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/VoiceRegResult;->setResultCode(I)V

    .line 3208
    packed-switch v4, :pswitch_data_3a

    .line 3217
    invoke-interface {p1, v3}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3224
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "resultCode":I
    :goto_1d
    return-void

    .line 3210
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "resultCode":I
    :pswitch_1e
    if-eqz p3, :cond_2b

    .line 3211
    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 3212
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 3214
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_2b
    invoke-interface {p1, v3}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_1d

    .line 3220
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "resultCode":I
    :catch_2f
    move-exception v1

    .line 3221
    .local v1, "e":Ljava/lang/Exception;
    const/16 v5, -0xca

    invoke-virtual {v3, v5}, Lcom/baidu/sapi2/result/VoiceRegResult;->setResultCode(I)V

    .line 3222
    invoke-interface {p1, v3}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1d

    .line 3208
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method private a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V
    .registers 10
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 2972
    new-instance v2, Lcom/baidu/sapi2/result/VoiceCheckResult;

    invoke-direct {v2}, Lcom/baidu/sapi2/result/VoiceCheckResult;-><init>()V

    .line 2974
    .local v2, "result":Lcom/baidu/sapi2/result/VoiceCheckResult;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2975
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2976
    .local v3, "resultCode":I
    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2977
    sparse-switch v3, :sswitch_data_d6

    .line 3019
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3026
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :goto_1d
    return-void

    .line 2979
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "resultCode":I
    :sswitch_1e
    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->uid:Ljava/lang/String;

    .line 2980
    const-string v5, "displayname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->displayname:Ljava/lang/String;

    .line 2981
    const-string v5, "1"

    const-string v6, "voice"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->signUp:Z

    .line 2982
    const-string v5, "1"

    const-string v6, "needverify"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->needVerify:Z

    .line 2983
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authToken:Ljava/lang/String;

    .line 2984
    const-string v5, "loginswitch"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ba

    const-string v5, "loginswitch"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 2985
    sget-object v5, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->switchState:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 2990
    :goto_76
    const-string v5, "null"

    iget-object v6, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2991
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authToken:Ljava/lang/String;

    .line 2993
    :cond_83
    const-string v5, "authsid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authSid:Ljava/lang/String;

    .line 2994
    const-string v5, "null"

    iget-object v6, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authSid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2995
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->authSid:Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_98} :catch_af

    .line 2999
    :cond_98
    :try_start_98
    const-string v5, "password"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3000
    .local v4, "voicePwd":Ljava/lang/String;
    sget-object v5, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->voiceCode:I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_aa} :catch_bf

    .line 3007
    .end local v4    # "voicePwd":Ljava/lang/String;
    :goto_aa
    :try_start_aa
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_af

    goto/16 :goto_1d

    .line 3022
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v3    # "resultCode":I
    :catch_af
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    const/16 v5, -0xca

    invoke-virtual {v2, v5}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 3024
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1d

    .line 2987
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "resultCode":I
    :cond_ba
    :try_start_ba
    sget-object v5, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->switchState:Lcom/baidu/sapi2/utils/enums/Switch;

    goto :goto_76

    .line 3002
    :catch_bf
    move-exception v0

    .line 3003
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v5, -0x1

    iput v5, v2, Lcom/baidu/sapi2/result/VoiceCheckResult;->voiceCode:I

    .line 3004
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_aa

    .line 3010
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_c7
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onIncompleteUser(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1d

    .line 3013
    :sswitch_cc
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onAccountTypeConflict(Lcom/baidu/sapi2/result/VoiceCheckResult;)V

    goto/16 :goto_1d

    .line 3016
    :sswitch_d1
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d4} :catch_af

    goto/16 :goto_1d

    .line 2977
    :sswitch_data_d6
    .sparse-switch
        0x0 -> :sswitch_1e
        0x3 -> :sswitch_c7
        0x61a95 -> :sswitch_d1
        0x61c11 -> :sswitch_cc
    .end sparse-switch
.end method

.method private a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;)V
    .registers 9
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceLoginCallback;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 3302
    new-instance v3, Lcom/baidu/sapi2/result/VoiceLoginResult;

    invoke-direct {v3}, Lcom/baidu/sapi2/result/VoiceLoginResult;-><init>()V

    .line 3304
    .local v3, "result":Lcom/baidu/sapi2/result/VoiceLoginResult;
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3305
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3306
    .local v4, "resultCode":I
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/result/VoiceLoginResult;->setResultCode(I)V

    .line 3307
    sparse-switch v4, :sswitch_data_3c

    .line 3317
    invoke-virtual {p1, v3}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3324
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "resultCode":I
    :goto_1d
    return-void

    .line 3309
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "resultCode":I
    :sswitch_1e
    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 3310
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 3311
    invoke-virtual {p1, v3}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 3320
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v4    # "resultCode":I
    :catch_2d
    move-exception v1

    .line 3321
    .local v1, "e":Ljava/lang/Exception;
    const/16 v5, -0xca

    invoke-virtual {v3, v5}, Lcom/baidu/sapi2/result/VoiceLoginResult;->setResultCode(I)V

    .line 3322
    invoke-virtual {p1, v3}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1d

    .line 3314
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "resultCode":I
    :sswitch_37
    :try_start_37
    invoke-virtual {p1, v3}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onPwdVerifyFailure(Lcom/baidu/sapi2/result/VoiceLoginResult;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_2d

    goto :goto_1d

    .line 3307
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_1e
        0x11582 -> :sswitch_37
    .end sparse-switch
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 20
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "cert"    # Ljava/lang/String;
    .param p6, "certId"    # Ljava/lang/String;
    .param p7, "helper"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 2536
    new-instance v7, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v7}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v7, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2537
    iget-object v7, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2538
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2539
    .local v4, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "appid"

    iget-object v8, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    const-string v7, "tpl"

    iget-object v8, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    const-string v7, "cert_id"

    move-object/from16 v0, p6

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    const-string v7, "crypttype"

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2543
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2544
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v7, "bduss"

    invoke-virtual {v2, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2545
    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 2546
    const-string v7, "clientid"

    iget-object v8, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2548
    :cond_55
    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 2549
    const-string v7, "clientip"

    iget-object v8, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2551
    :cond_68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_73

    .line 2552
    const-string v7, "ptoken"

    invoke-virtual {v2, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2554
    :cond_73
    const-string v7, "username"

    move-object/from16 v0, p4

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2555
    const-string v7, "key"

    invoke-virtual/range {p7 .. p7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2556
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2557
    .local v6, "userInfo":Ljava/lang/String;
    const-string v7, "userinfo"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2559
    .local v5, "sig":Ljava/lang/String;
    const-string v7, "sig"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    new-instance v3, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v3, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 2561
    .local v3, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v7, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->l()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/baidu/sapi2/a$17;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-direct {v10, p0, v11, p1, v0}, Lcom/baidu/sapi2/a$17;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/utils/SapiDataEncryptor;)V

    invoke-virtual {v7, v8, v9, v3, v10}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 2575
    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 28
    .param p2, "cert"    # Ljava/lang/String;
    .param p3, "certid"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "needShare"    # Z
    .param p7, "helper"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/baidu/sapi2/utils/SapiDataEncryptor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/security/cert/CertificateException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1559
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1561
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1562
    .local v15, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "crypttype"

    const-string v4, "6"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const-string v3, "tpl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string v3, "appid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 1566
    .local v11, "cuid":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1567
    const-string v3, "cuid"

    invoke-virtual {v15, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_47
    const-string v3, "cert_id"

    move-object/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string v3, "isdpass"

    const-string v4, "1"

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 1574
    .local v13, "obj":Lorg/json/JSONObject;
    const-string v3, "username"

    move-object/from16 v0, p4

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1575
    const-string v3, "isphone"

    const-string v4, "1"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1576
    const-string v3, "password"

    move-object/from16 v0, p5

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1577
    const-string v3, "login_type"

    const-string v4, "3"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1578
    const-string v3, "key"

    invoke-virtual/range {p7 .. p7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1579
    const-string v3, "sdk_version"

    const-string v4, "2"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1580
    const-string v3, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1581
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1582
    .local v12, "encryptInfo":Ljava/lang/String;
    const-string v3, "userinfo"

    invoke-virtual {v15, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1586
    .local v16, "sig":Ljava/lang/String;
    const-string v3, "sig"

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    new-instance v14, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v14, v15}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1590
    .local v14, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->r()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Lcom/baidu/sapi2/a$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/a$5;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 1611
    return-void
.end method

.method static synthetic b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/sapi2/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/sapi2/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/dto/LoginDTO;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/sapi2/a;->h:Lcom/baidu/sapi2/dto/LoginDTO;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/sapi2/a;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 9
    .param p1, "code"    # I
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    if-eqz p3, :cond_74

    .line 513
    new-instance v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v3}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 514
    .local v3, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    iput p1, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    .line 516
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "displayname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 518
    const-string v4, "uname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 519
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 520
    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    .line 521
    const-string v4, "bduss"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 522
    const-string v4, "ptoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 523
    const-string v4, "stoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 524
    const-string v4, "authsid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    .line 526
    if-eqz p2, :cond_56

    .line 527
    packed-switch p1, :pswitch_data_7a

    .line 535
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 550
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_56
    :goto_56
    return-void

    .line 529
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :pswitch_57
    invoke-virtual {p0, v3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 530
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iput-object p3, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 531
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 532
    invoke-interface {p2, v3}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_67} :catch_68

    goto :goto_56

    .line 539
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_68
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 541
    if-eqz p2, :cond_56

    .line 542
    const/16 v4, -0x64

    invoke-interface {p2, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_56

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_74
    if-eqz p2, :cond_56

    .line 547
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_56

    .line 527
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_57
    .end packed-switch
.end method

.method static synthetic e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
    .registers 2
    .param p0, "x0"    # Lcom/baidu/sapi2/a;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";android_sapi_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6.14.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/baidu/sapi2/utils/enums/Domain;
    .registers 2

    .prologue
    .line 5632
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sslcrypt/get_last_cert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)I
    .registers 23
    .param p1, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    .prologue
    .line 438
    if-nez p1, :cond_a

    .line 439
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "ReloginCredentials can\'t be null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 441
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 442
    const v4, 0x1fbd5

    .line 507
    :cond_19
    :goto_19
    return v4

    .line 444
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 445
    const v4, 0x1fbda

    goto :goto_19

    .line 447
    :cond_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 448
    const v4, 0x1fbe9

    goto :goto_19

    .line 451
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4f

    .line 452
    const/16 v4, -0xc8

    goto :goto_19

    .line 455
    :cond_4f
    new-instance v7, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 457
    .local v7, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_54
    new-instance v18, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {v18 .. v18}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 459
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v15, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "crypttype"

    const-string v19, "11"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v18, "tpl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v18, "appid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d4

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 466
    :cond_d4
    const-string v18, "cuid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v18, "cert_id"

    const-string v19, "2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v18, "isdpass"

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v18, "username"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v18, "password"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v18, "UBI"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v18, "3"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1ce

    const-string v12, "1"

    .line 475
    .local v12, "isPhone":Ljava/lang/String;
    :goto_13c
    const-string v18, "isphone"

    move-object/from16 v0, v18

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v18, "login_type"

    const-string v19, "3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v18, "key"

    invoke-virtual {v7}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v18, "sdk_version"

    const-string v19, "2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v18, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/d;->b()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 482
    .local v17, "sig":Ljava/lang/String;
    const-string v18, "sig"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_19d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 486
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c5
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_1c5} :catch_1c6

    goto :goto_19d

    .line 504
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isPhone":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "sig":Ljava/lang/String;
    :catch_1c6
    move-exception v6

    .line 505
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 507
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1ca
    const/16 v4, -0x64

    goto/16 :goto_19

    .line 474
    .restart local v15    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1ce
    :try_start_1ce
    const-string v12, "0"

    goto/16 :goto_13c

    .line 488
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "isPhone":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v17    # "sig":Ljava/lang/String;
    :cond_1d2
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->r()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 489
    .local v16, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v8, v14, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 490
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 492
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    const/16 v18, 0xc8

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ca

    .line 493
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "content":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1ca

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v4

    .line 496
    .local v4, "code":I
    if-nez v4, :cond_19

    .line 497
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    .local v13, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v3

    .line 499
    .local v3, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_235
    .catch Ljava/lang/Throwable; {:try_start_1ce .. :try_end_235} :catch_1c6

    goto/16 :goto_19
.end method

.method a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/SapiAccount;
    .registers 4
    .param p1, "response"    # Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    .prologue
    .line 5597
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 5598
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 5599
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 5600
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 5601
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 5602
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 5603
    iget-object v1, p1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 5604
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 5606
    return-object v0
.end method

.method a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;
    .registers 4
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 5582
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 5583
    .local v0, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 5584
    const-string v1, "bduss"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 5585
    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 5586
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    .line 5587
    const-string v1, "stoken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 5588
    const-string v1, "ptoken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 5589
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 5590
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 5592
    return-object v0
.end method

.method a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;
    .registers 4
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    .prologue
    .line 5665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .param p1, "situation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5138
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5139
    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5140
    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5141
    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 5143
    :cond_2d
    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 5144
    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5146
    :cond_40
    invoke-static {p1}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5147
    .local v0, "deviceInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 5148
    const-string v2, "di"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5150
    :cond_4f
    const-string v2, "clientfrom"

    const-string v3, "mobilesdk_enhanced"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5151
    const-string v2, "sdk_version"

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5153
    return-object v1
.end method

.method a()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    if-eqz v0, :cond_e

    .line 231
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 233
    :cond_e
    return-void
.end method

.method a(ILcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;
    .param p3, "json"    # Ljava/lang/String;

    .prologue
    .line 5317
    if-eqz p2, :cond_5

    .line 5318
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    .line 5320
    :cond_5
    if-eqz p3, :cond_84

    .line 5321
    new-instance v3, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;

    invoke-direct {v3}, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;-><init>()V

    .line 5323
    .local v3, "response":Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5324
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 5325
    iput p1, v3, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->errorCode:I

    .line 5326
    const-string v5, "local"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5327
    .local v1, "locale":Lorg/json/JSONObject;
    if-eqz v1, :cond_3d

    .line 5328
    const-string v5, "country"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->country:Ljava/lang/String;

    .line 5329
    const-string v5, "provice"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->province:Ljava/lang/String;

    .line 5330
    const-string v5, "city"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->city:Ljava/lang/String;

    .line 5332
    :cond_3d
    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "errno"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 5334
    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v4

    .line 5335
    .local v4, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 5337
    .end local v4    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_62
    if-eqz p2, :cond_6a

    .line 5338
    sparse-switch p1, :sswitch_data_8a

    .line 5357
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    .line 5370
    .end local v1    # "locale":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;
    :cond_6a
    :goto_6a
    return-void

    .line 5340
    .restart local v1    # "locale":Lorg/json/JSONObject;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;
    :sswitch_6b
    invoke-virtual {p2, v3}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6e} :catch_6f

    goto :goto_6a

    .line 5360
    .end local v1    # "locale":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_6f
    move-exception v0

    .line 5361
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_6a

    .line 5362
    const/16 v5, -0x64

    invoke-virtual {p2, v5}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    goto :goto_6a

    .line 5345
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "locale":Lorg/json/JSONObject;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :sswitch_78
    :try_start_78
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onQrCodeInvalid()V

    goto :goto_6a

    .line 5350
    :sswitch_7c
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onBdussInvalid()V

    goto :goto_6a

    .line 5354
    :sswitch_80
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onUserNotNormalized()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_83} :catch_6f

    goto :goto_6a

    .line 5366
    .end local v1    # "locale":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;
    :cond_84
    if-eqz p2, :cond_6a

    .line 5367
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    goto :goto_6a

    .line 5338
    :sswitch_data_8a
    .sparse-switch
        -0x67 -> :sswitch_78
        0x0 -> :sswitch_6b
        0x1 -> :sswitch_78
        0x2 -> :sswitch_7c
        0x3 -> :sswitch_80
        0x27166 -> :sswitch_7c
    .end sparse-switch
.end method

.method a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5036
    .local p2, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    if-eqz p3, :cond_b6

    .line 5037
    new-instance v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v3}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 5039
    .local v3, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5040
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v5, "displayname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 5041
    const-string v5, "uid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 5042
    const-string v5, "bduss"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 5043
    const-string v5, "ptoken"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 5045
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x68

    if-ne v5, v6, :cond_40

    .line 5046
    const-string v5, "force_reg_token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5047
    .local v0, "deviceForcedToken":Ljava/lang/String;
    invoke-virtual {p0, p2, v0}, Lcom/baidu/sapi2/a;->c(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 5086
    .end local v0    # "deviceForcedToken":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_3f
    :goto_3f
    return-void

    .line 5049
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_40
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "error_msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 5050
    new-instance v4, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v4}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 5051
    .local v4, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 5052
    iget-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 5053
    iget-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 5054
    iget-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 5055
    iget-object v5, v3, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 5056
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 5058
    const-string v5, "device_token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 5059
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v5

    const-string v6, "device_token"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;)V

    .line 5063
    :cond_8c
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 5065
    .end local v4    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_93
    if-eqz p2, :cond_3f

    .line 5066
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_bc

    .line 5071
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a7} :catch_a8

    goto :goto_3f

    .line 5076
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_a8
    move-exception v1

    .line 5077
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_3f

    .line 5078
    const/16 v5, -0x64

    invoke-interface {p2, v5}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_3f

    .line 5068
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :pswitch_b1
    const/4 v5, 0x0

    :try_start_b2
    invoke-interface {p2, v5}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_a8

    goto :goto_3f

    .line 5082
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_b6
    if-eqz p2, :cond_3f

    .line 5083
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_3f

    .line 5066
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_b1
    .end packed-switch
.end method

.method a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;)V
    .registers 14
    .param p1, "code"    # I
    .param p3, "json"    # Ljava/lang/String;
    .param p4, "needShare"    # Z
    .param p5, "helper"    # Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/baidu/sapi2/utils/SapiDataEncryptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1618
    .local p2, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    if-eqz p3, :cond_8b

    .line 1619
    new-instance v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v5}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 1621
    .local v5, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v7, "userinfo"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1623
    .local v6, "strUserInfo":Ljava/lang/String;
    const-string v1, ""

    .line 1624
    .local v1, "decryptStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 1625
    invoke-virtual {p5, v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1626
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v3, "jsonInfo":Lorg/json/JSONObject;
    const-string v7, "displayname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 1629
    const-string v7, "uname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 1630
    const-string v7, "uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 1631
    const-string v7, "email"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    .line 1632
    const-string v7, "bduss"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 1633
    const-string v7, "ptoken"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 1634
    const-string v7, "stoken"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 1635
    const-string v7, "authsid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    .line 1639
    .end local v3    # "jsonInfo":Lorg/json/JSONObject;
    :cond_63
    if-eqz p2, :cond_6b

    .line 1640
    packed-switch p1, :pswitch_data_92

    .line 1650
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 1665
    .end local v1    # "decryptStr":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .end local v6    # "strUserInfo":Ljava/lang/String;
    :cond_6b
    :goto_6b
    return-void

    .line 1642
    .restart local v1    # "decryptStr":Ljava/lang/String;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    .restart local v6    # "strUserInfo":Ljava/lang/String;
    :pswitch_6c
    if-eqz p4, :cond_7b

    .line 1643
    invoke-virtual {p0, v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 1644
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iput-object v1, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    .line 1645
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 1647
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_7b
    invoke-interface {p2, v5}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7e} :catch_7f

    goto :goto_6b

    .line 1654
    .end local v1    # "decryptStr":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "strUserInfo":Ljava/lang/String;
    :catch_7f
    move-exception v2

    .line 1655
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 1656
    if-eqz p2, :cond_6b

    .line 1657
    const/16 v7, -0x64

    invoke-interface {p2, v7}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_6b

    .line 1661
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_8b
    if-eqz p2, :cond_6b

    .line 1662
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_6b

    .line 1640
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6c
    .end packed-switch
.end method

.method a(Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceCheckCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceCheckDTO;

    .prologue
    .line 3606
    if-nez p1, :cond_21

    .line 3607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FaceCheckCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3610
    :cond_21
    if-nez p2, :cond_42

    .line 3611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/FaceCheckDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3614
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "either bduss or account must be assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3618
    :cond_5a
    new-instance v4, Lcom/baidu/sapi2/result/FaceCheckResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FaceCheckResult;-><init>()V

    .line 3620
    .local v4, "result":Lcom/baidu/sapi2/result/FaceCheckResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 3621
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FaceCheckResult;->setResultCode(I)V

    .line 3622
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FaceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3725
    :goto_71
    return-void

    .line 3626
    :cond_72
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3627
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3628
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3629
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3630
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 3632
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3633
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3635
    :cond_b5
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 3636
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3638
    :cond_c8
    const-string v0, "/v2/sapi/getfaceid"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3639
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 3640
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3643
    :cond_d9
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12a

    .line 3644
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    :cond_e8
    :goto_e8
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3659
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3660
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3661
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/getfaceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$28;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$28;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/result/FaceCheckResult;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_71

    .line 3646
    .end local v7    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v9    # "sig":Ljava/lang/String;
    :cond_12a
    const-string v0, "username"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->account:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3647
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    if-eqz v0, :cond_13b

    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;->MERGE:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    if-ne v0, v1, :cond_142

    .line 3648
    :cond_13b
    const-string v0, "merge"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    :cond_142
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;->USERNAME:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    if-ne v0, v1, :cond_14f

    .line 3651
    const-string v0, "isphone"

    const-string v1, "0"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    :cond_14f
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;->PHONE:Lcom/baidu/sapi2/dto/FaceCheckDTO$AccountType;

    if-ne v0, v1, :cond_e8

    .line 3654
    const-string v0, "isphone"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e8
.end method

.method a(Lcom/baidu/sapi2/callback/FaceDelCallback;Lcom/baidu/sapi2/dto/FaceDelDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceDelCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceDelDTO;

    .prologue
    .line 4031
    if-nez p1, :cond_21

    .line 4032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FaceRegCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4035
    :cond_21
    if-nez p2, :cond_42

    .line 4036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/FaceRegDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4039
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceDelDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4040
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4043
    :cond_52
    new-instance v4, Lcom/baidu/sapi2/result/FaceDelResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FaceDelResult;-><init>()V

    .line 4044
    .local v4, "result":Lcom/baidu/sapi2/result/FaceDelResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 4045
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FaceDelResult;->setResultCode(I)V

    .line 4046
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FaceDelCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4122
    :goto_69
    return-void

    .line 4050
    :cond_6a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4051
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4052
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4053
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4054
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4055
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 4056
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4059
    :cond_ad
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 4060
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4062
    :cond_c0
    const-string v0, "/v2/sapi/delface"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4063
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 4064
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4066
    :cond_d1
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceDelDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 4067
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceDelDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4070
    :cond_e0
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4071
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4073
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4075
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/delface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$32;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$32;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceDelCallback;Lcom/baidu/sapi2/result/FaceDelResult;Lcom/baidu/sapi2/dto/FaceDelDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_69
.end method

.method a(Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceLoginCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceLoginDTO;

    .prologue
    .line 3728
    if-nez p1, :cond_21

    .line 3729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FaceLoginCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3732
    :cond_21
    if-nez p2, :cond_42

    .line 3733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/FaceLoginDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3736
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->faceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "face id can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3740
    :cond_52
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->authId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth id can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3744
    :cond_62
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->facePictureEncoded:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 3745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "face picture can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3748
    :cond_72
    new-instance v4, Lcom/baidu/sapi2/result/FaceLoginResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FaceLoginResult;-><init>()V

    .line 3750
    .local v4, "result":Lcom/baidu/sapi2/result/FaceLoginResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 3751
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FaceLoginResult;->setResultCode(I)V

    .line 3752
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FaceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3830
    :goto_89
    return-void

    .line 3756
    :cond_8a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3757
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3758
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3759
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 3762
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3765
    :cond_cd
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 3766
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3768
    :cond_e0
    const-string v0, "/v2/sapi/facelogin"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3769
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 3770
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3773
    :cond_f1
    const-string v0, "faceid"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->faceId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3774
    const-string v0, "authsid"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->authId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    const-string v0, "facepic"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceLoginDTO;->facePictureEncoded:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3777
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3778
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3779
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3780
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/facelogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$29;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$29;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/result/FaceLoginResult;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_89
.end method

.method a(Lcom/baidu/sapi2/callback/FaceModifyCallback;Lcom/baidu/sapi2/dto/FaceModifyDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceModifyCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceModifyDTO;

    .prologue
    .line 3932
    if-nez p1, :cond_21

    .line 3933
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FaceRegCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3936
    :cond_21
    if-nez p2, :cond_42

    .line 3937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/FaceRegDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3940
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceModifyDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3941
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3944
    :cond_52
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceModifyDTO;->picturesEncoded:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "face images can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3948
    :cond_62
    new-instance v4, Lcom/baidu/sapi2/result/FaceModifyResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FaceModifyResult;-><init>()V

    .line 3949
    .local v4, "result":Lcom/baidu/sapi2/result/FaceModifyResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 3950
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FaceModifyResult;->setResultCode(I)V

    .line 3951
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FaceModifyCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4028
    :goto_79
    return-void

    .line 3955
    :cond_7a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3956
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3957
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3958
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3959
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3960
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 3961
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3962
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3964
    :cond_bd
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 3965
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3967
    :cond_d0
    const-string v0, "/v2/sapi/updateface"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3968
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 3969
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3971
    :cond_e1
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceModifyDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 3972
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceModifyDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3975
    :cond_f0
    const-string v0, "facepics"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceModifyDTO;->picturesEncoded:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3976
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3977
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3981
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/updateface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$31;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$31;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceModifyCallback;Lcom/baidu/sapi2/result/FaceModifyResult;Lcom/baidu/sapi2/dto/FaceModifyDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_79
.end method

.method a(Lcom/baidu/sapi2/callback/FaceRegCallback;Lcom/baidu/sapi2/dto/FaceRegDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceRegCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceRegDTO;

    .prologue
    .line 3833
    if-nez p1, :cond_21

    .line 3834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FaceRegCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3837
    :cond_21
    if-nez p2, :cond_42

    .line 3838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/FaceRegDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3841
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceRegDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3845
    :cond_52
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceRegDTO;->picturesEncoded:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "face pictures can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3849
    :cond_62
    new-instance v4, Lcom/baidu/sapi2/result/FaceRegResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FaceRegResult;-><init>()V

    .line 3850
    .local v4, "result":Lcom/baidu/sapi2/result/FaceRegResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 3851
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FaceRegResult;->setResultCode(I)V

    .line 3852
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FaceRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3929
    :goto_79
    return-void

    .line 3856
    :cond_7a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3857
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3858
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3859
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3860
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3861
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 3862
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3865
    :cond_bd
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 3866
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    :cond_d0
    const-string v0, "/v2/sapi/regface"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3869
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 3870
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    :cond_e1
    iget-object v0, p2, Lcom/baidu/sapi2/dto/FaceRegDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 3873
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceRegDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3876
    :cond_f0
    const-string v0, "facepics"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/FaceRegDTO;->picturesEncoded:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3878
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3880
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3882
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/regface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$30;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$30;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FaceRegCallback;Lcom/baidu/sapi2/result/FaceRegResult;Lcom/baidu/sapi2/dto/FaceRegDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_79
.end method

.method a(Lcom/baidu/sapi2/callback/FillUserProfileCallback;Ljava/lang/String;)V
    .registers 15
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FillUserProfileCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 2579
    if-nez p1, :cond_21

    .line 2580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2582
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2585
    :cond_2f
    new-instance v4, Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/FillUserProfileResult;-><init>()V

    .line 2586
    .local v4, "result":Lcom/baidu/sapi2/result/FillUserProfileResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2587
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2588
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2807
    :goto_46
    return-void

    .line 2591
    :cond_47
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2592
    const/16 v0, -0x65

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2593
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_46

    .line 2597
    :cond_5a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2598
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2599
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2600
    .local v7, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2602
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 2603
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    :cond_94
    const-string v0, "bduss"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2607
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 2611
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/security/sapibindwidgetsend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$18;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$18;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FillUserProfileCallback;Lcom/baidu/sapi2/result/FillUserProfileResult;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_46
.end method

.method a(Lcom/baidu/sapi2/callback/FillUsernameCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FillUsernameCallback;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 2366
    if-nez p1, :cond_21

    .line 2367
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/FillUsernameCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2369
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2372
    :cond_2f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "username can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2375
    :cond_3d
    new-instance v5, Lcom/baidu/sapi2/result/FillUsernameResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/FillUsernameResult;-><init>()V

    .line 2376
    .local v5, "result":Lcom/baidu/sapi2/result/FillUsernameResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 2377
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/FillUsernameResult;->setResultCode(I)V

    .line 2378
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2477
    :goto_58
    return-void

    .line 2382
    :cond_59
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2384
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2385
    .local v11, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    const-string v1, "tpl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 2391
    .local v10, "obj":Lorg/json/JSONObject;
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 2393
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_a6
    const-string v1, "bduss"

    move-object/from16 v0, p2

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 2395
    const-string v1, "clientid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2397
    :cond_c4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_db

    .line 2398
    const-string v1, "clientip"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2400
    :cond_db
    const-string v1, "username"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2401
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2402
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2404
    .local v13, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    new-instance v12, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v12, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 2407
    .local v12, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v15, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->l()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/baidu/sapi2/a$15;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/a$15;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FillUsernameCallback;Lcom/baidu/sapi2/result/FillUsernameResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_134
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_134} :catch_136

    goto/16 :goto_58

    .line 2472
    .end local v12    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v13    # "sig":Ljava/lang/String;
    :catch_136
    move-exception v9

    .line 2473
    .local v9, "e":Ljava/lang/Throwable;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/FillUsernameResult;->setResultCode(I)V

    .line 2474
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/FillUsernameCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2475
    invoke-static {v9}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_58
.end method

.method a(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "captcha"    # Ljava/lang/String;

    .prologue
    .line 1278
    if-nez p1, :cond_21

    .line 1279
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1282
    :cond_21
    new-instance v5, Lcom/baidu/sapi2/result/GetDynamicPwdResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;-><init>()V

    .line 1283
    .local v5, "result":Lcom/baidu/sapi2/result/GetDynamicPwdResult;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1284
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1285
    invoke-virtual {p1, v5}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1367
    :goto_34
    return-void

    .line 1288
    :cond_35
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1289
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/GetDynamicPwdResult;->setResultCode(I)V

    .line 1290
    invoke-virtual {p1, v5}, Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_34

    .line 1294
    :cond_48
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1295
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1296
    const-string v1, "/v2/sapi/getdpass"

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 1297
    .local v9, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "username"

    move-object/from16 v0, p2

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string v1, "svcd"

    const-string v2, "1"

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v1, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/baidu/sapi2/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 1304
    const-string v1, "vcodestr"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string v1, "vcodesign"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->g:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string v1, "verifycode"

    move-object/from16 v0, p3

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    :cond_97
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1310
    .local v10, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v8, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v8, v9}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1313
    .local v8, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v11, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v12, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/getdpass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/baidu/sapi2/a$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$2;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Lcom/baidu/sapi2/result/GetDynamicPwdResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13, v8, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_34
.end method

.method a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
    .registers 18
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    .prologue
    .line 2002
    if-nez p1, :cond_a

    .line 2003
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getHistoryPortaits callback can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2006
    :cond_a
    if-nez p2, :cond_14

    .line 2007
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getHistoryPortrats dto can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2010
    :cond_14
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2011
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2014
    :cond_26
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;->maxNum:I

    if-ltz v1, :cond_34

    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;->maxNum:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_3c

    .line 2015
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abnormal request history number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2018
    :cond_3c
    new-instance v4, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;-><init>()V

    .line 2020
    .local v4, "result":Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 2021
    const/16 v1, -0xc9

    invoke-virtual {v4, v1}, Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;->setResultCode(I)V

    .line 2022
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2090
    :goto_55
    return-void

    .line 2026
    :cond_56
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2027
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2028
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2029
    .local v9, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    const-string v1, "length"

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;->maxNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 2034
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    :cond_9d
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 2038
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    :cond_b0
    const-string v1, "bduss"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;->bduss:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2043
    .local v11, "sig":Ljava/lang/String;
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2044
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_ce
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2045
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .line 2048
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ea
    const-string v1, "sig"

    invoke-virtual {v10, v1, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v12, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v13, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->n()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/baidu/sapi2/a$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/sapi2/a$10;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/GetHistoryPortraitsResult;Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V

    invoke-virtual {v12, v13, v14, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_55
.end method

.method a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 2093
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty nor null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2097
    :cond_e
    new-instance v4, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;-><init>()V

    .line 2098
    .local v4, "result":Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2099
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;->setResultCode(I)V

    .line 2100
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2174
    :goto_25
    return-void

    .line 2104
    :cond_26
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2105
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2106
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2107
    .local v8, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "bduss"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    new-instance v9, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v9}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2109
    .local v9, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2110
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 2113
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_69
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->p()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$11;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$11;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Lcom/baidu/sapi2/result/GetPopularPortraitsInfoResult;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12, v9, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_25
.end method

.method a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V
    .registers 15
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetRegCodeCallback;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 877
    if-nez p1, :cond_21

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/GetRegCodeCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_21
    new-instance v4, Lcom/baidu/sapi2/result/GetRegCodeResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/GetRegCodeResult;-><init>()V

    .line 882
    .local v4, "result":Lcom/baidu/sapi2/result/GetRegCodeResult;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 883
    const/16 v0, -0x65

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 884
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 953
    :goto_34
    return-void

    .line 887
    :cond_35
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 888
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/GetRegCodeResult;->setResultCode(I)V

    .line 889
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/GetRegCodeCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_34

    .line 893
    :cond_48
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 894
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 895
    const-string v0, "/v2/sapi/applyregcode"

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 896
    .local v7, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "phonenum"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 901
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/applyregcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$52;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$52;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetRegCodeCallback;Lcom/baidu/sapi2/result/GetRegCodeResult;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_34
.end method

.method a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V
    .registers 18
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetUserInfoCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 2178
    if-nez p1, :cond_21

    .line 2179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/GetUserInfoCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2181
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2184
    :cond_2f
    new-instance v5, Lcom/baidu/sapi2/result/GetUserInfoResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/GetUserInfoResult;-><init>()V

    .line 2185
    .local v5, "result":Lcom/baidu/sapi2/result/GetUserInfoResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 2186
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/GetUserInfoResult;->setResultCode(I)V

    .line 2187
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/GetUserInfoCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2275
    :goto_48
    return-void

    .line 2191
    :cond_49
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2192
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2193
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2194
    .local v9, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 2197
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    :cond_83
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 2200
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    :cond_96
    const-string v1, "bduss"

    move-object/from16 v0, p2

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2204
    .local v11, "sig":Ljava/lang/String;
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2205
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_b2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2206
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    .line 2208
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ce
    const-string v1, "sig"

    invoke-virtual {v10, v1, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v12, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v13, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->o()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/baidu/sapi2/a$13;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/sapi2/a$13;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/GetUserInfoCallback;Lcom/baidu/sapi2/result/GetUserInfoResult;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_48
.end method

.method a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V
    .registers 14
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/IqiyiLoginCallback;
    .param p2, "iqiyiLoginDTO"    # Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    .prologue
    .line 5420
    if-nez p1, :cond_3

    .line 5484
    :goto_2
    return-void

    .line 5423
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onStart()V

    .line 5424
    iget-object v6, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->accessToken:Ljava/lang/String;

    .line 5425
    .local v6, "accessToken":Ljava/lang/String;
    iget-object v5, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->phoneNum:Ljava/lang/String;

    .line 5426
    .local v5, "phoneNum":Ljava/lang/String;
    iget-object v8, p2, Lcom/baidu/sapi2/dto/IqiyiLoginDTO;->openID:Ljava/lang/String;

    .line 5427
    .local v8, "openID":Ljava/lang/String;
    new-instance v4, Lcom/baidu/sapi2/result/IqiyiLoginResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/IqiyiLoginResult;-><init>()V

    .line 5428
    .local v4, "iqiyiLoginResult":Lcom/baidu/sapi2/result/IqiyiLoginResult;
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v9

    .line 5429
    .local v9, "session":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v7, 0x1

    .line 5430
    .local v7, "isIqiyiLogin":Z
    :goto_26
    if-nez v7, :cond_30

    if-nez v9, :cond_30

    .line 5432
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/IqiyiLoginCallback;->onLogin(Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    goto :goto_2

    .line 5429
    .end local v7    # "isIqiyiLogin":Z
    :cond_2e
    const/4 v7, 0x0

    goto :goto_26

    .line 5433
    .restart local v7    # "isIqiyiLogin":Z
    :cond_30
    if-eqz v7, :cond_38

    if-nez v9, :cond_38

    .line 5435
    invoke-direct {p0, p1, p2, v4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;)V

    goto :goto_2

    .line 5438
    :cond_38
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v10

    new-instance v0, Lcom/baidu/sapi2/a$49;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$49;-><init>(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;Lcom/baidu/sapi2/result/IqiyiLoginResult;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getUserInfo(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    goto :goto_2
.end method

.method a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V
    .registers 19
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/LoginCallback;
    .param p2, "loginDTO"    # Lcom/baidu/sapi2/dto/LoginDTO;

    .prologue
    .line 554
    if-nez p1, :cond_21

    .line 555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/LoginCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :cond_21
    if-nez p2, :cond_42

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/dto/LoginDTO;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_42
    new-instance v5, Lcom/baidu/sapi2/result/LoginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/LoginResult;-><init>()V

    .line 562
    .local v5, "result":Lcom/baidu/sapi2/result/LoginResult;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 563
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 564
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 705
    :goto_5b
    return-void

    .line 567
    :cond_5c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 568
    const/16 v1, -0x66

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 569
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 572
    :cond_71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 573
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 574
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 578
    :cond_88
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 580
    const-string v1, "/v2/sapi/login"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 581
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_de

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->captcha:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 584
    const-string v1, "verifycode"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/LoginDTO;->captcha:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v1, "vcodestr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_de
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-eqz v1, :cond_ed

    .line 588
    const-string v1, "quick_user"

    const-string v2, "1"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_ed
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    if-eqz v1, :cond_fb

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    sget-object v2, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->MERGE:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    if-ne v1, v2, :cond_102

    .line 592
    :cond_fb
    const-string v1, "loginmerge"

    const-string v2, "true"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_102
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    sget-object v2, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->USERNAME:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    if-ne v1, v2, :cond_111

    .line 595
    const-string v1, "isphone"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_111
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/LoginDTO;->loginType:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    sget-object v2, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->PHONE:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    if-ne v1, v2, :cond_120

    .line 598
    const-string v1, "isphone"

    const-string v2, "1"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_120
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 603
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_125
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 604
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v1, "username"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string v1, "password"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v1, "login_type"

    const-string v2, "3"

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 612
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 615
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->r()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$23;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$23;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/result/LoginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/LoginDTO;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_191} :catch_193

    goto/16 :goto_5b

    .line 700
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v12    # "sig":Ljava/lang/String;
    :catch_193
    move-exception v8

    .line 701
    .local v8, "e":Ljava/lang/Exception;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 702
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/LoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 703
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5b
.end method

.method a(Lcom/baidu/sapi2/callback/QrPcLoginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/QrPcLoginCallback;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "bduss"    # Ljava/lang/String;

    .prologue
    .line 4207
    if-nez p1, :cond_21

    .line 4208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/QrPcLoginCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4210
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sign can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4213
    :cond_2f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cmd can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4216
    :cond_3d
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 4217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4220
    :cond_4b
    new-instance v5, Lcom/baidu/sapi2/result/QrPcLoginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/QrPcLoginResult;-><init>()V

    .line 4221
    .local v5, "result":Lcom/baidu/sapi2/result/QrPcLoginResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 4222
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QrPcLoginResult;->setResultCode(I)V

    .line 4223
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/QrPcLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4303
    :goto_64
    return-void

    .line 4227
    :cond_65
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4228
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4229
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4230
    .local v10, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sign"

    move-object/from16 v0, p2

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    const-string v1, "cmd"

    move-object/from16 v0, p3

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    const-string v1, "bduss"

    move-object/from16 v0, p4

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 4234
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4236
    :cond_a2
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 4237
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4239
    :cond_b5
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4240
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4241
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v10, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4242
    .local v11, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4244
    new-instance v9, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v9, v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4245
    .local v9, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v12, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v13, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/qrlogin?lp=pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/baidu/sapi2/a$35;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/a$35;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/QrPcLoginCallback;Lcom/baidu/sapi2/result/QrPcLoginResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14, v9, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_64
.end method

.method a(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V
    .registers 19
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/QuickUserRegCallback;
    .param p2, "quickUserRegDTO"    # Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    .prologue
    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-nez v1, :cond_10

    .line 1082
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "quick user not enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :cond_10
    if-nez p1, :cond_31

    .line 1085
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/QuickUserRegCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1087
    :cond_31
    if-nez p2, :cond_52

    .line 1088
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1091
    :cond_52
    new-instance v5, Lcom/baidu/sapi2/result/QuickUserRegResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/QuickUserRegResult;-><init>()V

    .line 1092
    .local v5, "result":Lcom/baidu/sapi2/result/QuickUserRegResult;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1093
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1094
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1213
    :goto_6b
    return-void

    .line 1097
    :cond_6c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1098
    const/16 v1, -0x66

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1099
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_6b

    .line 1102
    :cond_81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 1103
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1104
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_6b

    .line 1108
    :cond_98
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1110
    const-string v1, "/v2/sapi/reg/quick"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 1111
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ee

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->captcha:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ee

    .line 1114
    const-string v1, "verifycode"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->captcha:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string v1, "vcodestr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_ee
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 1120
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_f3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1121
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v1, "username"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1122
    const-string v1, "loginpass"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1123
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1128
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1131
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/reg/quick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$54;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$54;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/result/QuickUserRegResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_16f} :catch_171

    goto/16 :goto_6b

    .line 1208
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v12    # "sig":Ljava/lang/String;
    :catch_171
    move-exception v8

    .line 1209
    .local v8, "e":Ljava/lang/Exception;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QuickUserRegResult;->setResultCode(I)V

    .line 1210
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/QuickUserRegCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1211
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6b
.end method

.method public a(Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V
    .registers 15
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SSOConfirmCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/SSOConfirmDTO;

    .prologue
    .line 4465
    if-nez p1, :cond_21

    .line 4466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/SSOConfirmCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4469
    :cond_21
    if-nez p2, :cond_42

    .line 4470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4473
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;->channelID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel id can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4476
    :cond_52
    iget-object v0, p2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4480
    :cond_62
    new-instance v4, Lcom/baidu/sapi2/result/SSOConfirmResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/SSOConfirmResult;-><init>()V

    .line 4481
    .local v4, "result":Lcom/baidu/sapi2/result/SSOConfirmResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 4482
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/SSOConfirmResult;->setResultCode(I)V

    .line 4483
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/SSOConfirmCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4547
    :goto_79
    return-void

    .line 4487
    :cond_7a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4488
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4489
    const-string v0, "/v2/sapi/setssochannelinfo"

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 4490
    .local v7, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 4491
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4493
    :cond_a3
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 4494
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    :cond_b6
    const-string v0, "channel_id"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;->channelID:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4498
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;->bduss:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    const-string v1, "refuse"

    iget-boolean v0, p2, Lcom/baidu/sapi2/dto/SSOConfirmDTO;->authorized:Z

    if-eqz v0, :cond_111

    const-string v0, "0"

    :goto_cc
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4500
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4501
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4503
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4505
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/setssochannelinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$38;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$38;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/result/SSOConfirmResult;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V

    invoke-virtual {v9, v10, v11, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_79

    .line 4499
    .end local v6    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v8    # "sig":Ljava/lang/String;
    :cond_111
    const-string v0, "1"

    goto :goto_cc
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/GetCaptchaResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/GetCaptchaResult;>;"
    if-nez p1, :cond_21

    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_21
    iget-object v0, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "captchaKey can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_31
    new-instance v5, Lcom/baidu/sapi2/result/GetCaptchaResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/GetCaptchaResult;-><init>()V

    .line 826
    .local v5, "result":Lcom/baidu/sapi2/result/GetCaptchaResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 827
    const/16 v0, -0xc9

    invoke-virtual {v5, v0}, Lcom/baidu/sapi2/result/GetCaptchaResult;->setResultCode(I)V

    .line 828
    invoke-interface {p1, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 873
    :goto_48
    return-void

    .line 832
    :cond_49
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 833
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "image/png"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "image/jpeg"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "image/jpg"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "image/gif"

    aput-object v1, v3, v0

    .line 836
    .local v3, "allowedContentTypes":[Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cgi-bin/genimage?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/baidu/sapi2/a$45;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$45;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;[Ljava/lang/String;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/GetCaptchaResult;)V

    invoke-virtual {v6, v7, v8, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_48
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;I)V
    .registers 21
    .param p2, "timeoutSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/FastRegResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4683
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/FastRegResult;>;"
    if-nez p1, :cond_25

    .line 4684
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v16, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " can\'t be null"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4687
    :cond_25
    const/16 v9, 0xa

    .line 4688
    .local v9, "MIN_TIMEOUT_SECONDS":I
    const/16 v8, 0x5a

    .line 4689
    .local v8, "MAX_TIMEOUT_SECONDS":I
    new-instance v12, Lcom/baidu/sapi2/result/FastRegResult;

    invoke-direct {v12}, Lcom/baidu/sapi2/result/FastRegResult;-><init>()V

    .line 4691
    .local v12, "result":Lcom/baidu/sapi2/result/FastRegResult;
    const/16 v2, 0xa

    move/from16 v0, p2

    if-lt v0, v2, :cond_3a

    const/16 v2, 0x5a

    move/from16 v0, p2

    if-le v0, v2, :cond_42

    .line 4692
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeoutSeconds must between 10 and 90"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4695
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 4696
    const/16 v2, -0x65

    invoke-virtual {v12, v2}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4697
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4749
    :goto_58
    return-void

    .line 4700
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 4701
    const/16 v2, -0xc9

    invoke-virtual {v12, v2}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4702
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_58

    .line 4706
    :cond_70
    const/4 v2, 0x1

    new-array v7, v2, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v7, v2

    .line 4707
    .local v7, "timeout":[Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u70b9\u51fb\u53d1\u9001\u76f4\u63a5\u767b\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4708
    .local v15, "sms":Ljava/lang/String;
    const/16 v10, 0x3e9

    .line 4709
    .local v10, "MSG_TIMEOUT":I
    new-instance v5, Lcom/baidu/sapi2/a$41;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v7}, Lcom/baidu/sapi2/a$41;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;[Z)V

    .line 4721
    .local v5, "mainHandler":Landroid/os/Handler;
    new-instance v6, Lcom/baidu/sapi2/a$42;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/baidu/sapi2/a$42;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Handler;)V

    .line 4728
    .local v6, "timeoutTask":Ljava/lang/Runnable;
    const/4 v13, 0x0

    .line 4729
    .local v13, "sendSuccess":Z
    const-string v2, "android.permission.SEND_SMS"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 4730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getFastRegChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 4733
    :cond_df
    if-eqz v13, :cond_12c

    .line 4734
    new-instance v2, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4736
    const-string v2, "/v2/sapi/smsgetlogin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 4737
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "sms"

    invoke-interface {v11, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4739
    .local v14, "sig":Ljava/lang/String;
    const-string v2, "sig"

    invoke-interface {v11, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4740
    new-instance v4, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v4, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4742
    .local v4, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move/from16 v0, p2

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4743
    invoke-interface/range {p1 .. p1}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 4744
    invoke-direct/range {v2 .. v7}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V

    goto/16 :goto_58

    .line 4746
    .end local v4    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v11    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "sig":Ljava/lang/String;
    :cond_12c
    const/16 v2, -0x66

    invoke-virtual {v12, v2}, Lcom/baidu/sapi2/result/FastRegResult;->setResultCode(I)V

    .line 4747
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_58
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V
    .registers 19
    .param p2, "phoneRegDTO"    # Lcom/baidu/sapi2/dto/PhoneRegDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/PhoneRegResult;",
            ">;",
            "Lcom/baidu/sapi2/dto/PhoneRegDTO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 957
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/PhoneRegResult;>;"
    if-nez p1, :cond_21

    .line 958
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_21
    if-nez p2, :cond_42

    .line 961
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/dto/PhoneRegDTO;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 964
    :cond_42
    new-instance v5, Lcom/baidu/sapi2/result/PhoneRegResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/PhoneRegResult;-><init>()V

    .line 965
    .local v5, "result":Lcom/baidu/sapi2/result/PhoneRegResult;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 966
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 967
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1077
    :goto_5b
    return-void

    .line 970
    :cond_5c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->noPwd:Z

    if-nez v1, :cond_77

    .line 971
    const/16 v1, -0x66

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 972
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 975
    :cond_77
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->regCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 976
    const/16 v1, -0x67

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 977
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 980
    :cond_8c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a3

    .line 981
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 982
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 986
    :cond_a3
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 988
    const-string v1, "/v2/sapi/phoneregverify"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 989
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 994
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_d8
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 995
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v1, "phonenum"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->noPwd:Z

    if-nez v1, :cond_f5

    .line 997
    const-string v1, "passwd"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->password:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    :cond_f5
    const-string v1, "smscode"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->regCode:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v2, "nopsw"

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->noPwd:Z

    if-eqz v1, :cond_182

    const-string v1, "1"

    :goto_120
    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1006
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1009
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/phoneregverify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$53;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$53;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/PhoneRegResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_170} :catch_172

    goto/16 :goto_5b

    .line 1072
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v12    # "sig":Ljava/lang/String;
    :catch_172
    move-exception v8

    .line 1073
    .local v8, "e":Ljava/lang/Exception;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/PhoneRegResult;->setResultCode(I)V

    .line 1074
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1075
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 1003
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "obj":Lorg/json/JSONObject;
    :cond_182
    :try_start_182
    const-string v1, "0"
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_184} :catch_172

    goto :goto_120
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/ReloginDTO;)V
    .registers 19
    .param p2, "reloginDTO"    # Lcom/baidu/sapi2/dto/ReloginDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/ReloginResult;",
            ">;",
            "Lcom/baidu/sapi2/dto/ReloginDTO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/ReloginResult;>;"
    if-nez p1, :cond_21

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_21
    if-nez p2, :cond_42

    .line 336
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/dto/ReloginDTO;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_42
    new-instance v5, Lcom/baidu/sapi2/result/ReloginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/ReloginResult;-><init>()V

    .line 339
    .local v5, "result":Lcom/baidu/sapi2/result/ReloginResult;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/ReloginDTO;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 340
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 341
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 434
    :goto_5b
    return-void

    .line 344
    :cond_5c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/ReloginDTO;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 345
    const/16 v1, -0x66

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 346
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 349
    :cond_71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 350
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 351
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_5b

    .line 355
    :cond_88
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 357
    const-string v1, "/v5/login/sapi/relogin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 358
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v1, "bduss"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/ReloginDTO;->bduss:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 364
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_c6
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 365
    .local v9, "obj":Lorg/json/JSONObject;
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/sapi2/dto/ReloginDTO;->getPasswordType()Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;->PLAIN:Lcom/baidu/sapi2/dto/ReloginDTO$PasswordType;

    if-ne v1, v2, :cond_157

    .line 366
    const-string v1, "password"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/ReloginDTO;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->encryptPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    :goto_e0
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 378
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v5/login/sapi/relogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$12;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$12;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/ReloginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Lcom/baidu/sapi2/dto/ReloginDTO;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_145} :catch_147

    goto/16 :goto_5b

    .line 429
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v12    # "sig":Ljava/lang/String;
    :catch_147
    move-exception v8

    .line 430
    .local v8, "e":Ljava/lang/Exception;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/ReloginResult;->setResultCode(I)V

    .line 431
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 432
    invoke-static {v8}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 368
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "obj":Lorg/json/JSONObject;
    :cond_157
    :try_start_157
    const-string v1, "password"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/ReloginDTO;->password:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_160} :catch_147

    goto :goto_e0
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
    .registers 8
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/LoginResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/LoginResult;>;"
    new-instance v0, Lcom/baidu/sapi2/result/LoginResult;

    invoke-direct {v0}, Lcom/baidu/sapi2/result/LoginResult;-><init>()V

    .line 710
    .local v0, "result":Lcom/baidu/sapi2/result/LoginResult;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 711
    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 712
    invoke-interface {p1, v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 810
    :goto_13
    return-void

    .line 715
    :cond_14
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 716
    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 717
    invoke-interface {p1, v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_13

    .line 721
    :cond_27
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 722
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v3, Lcom/baidu/sapi2/a$34;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/baidu/sapi2/a$34;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/LoginResult;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_13
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "dynamicPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/DynamicPwdLoginResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/DynamicPwdLoginResult;>;"
    if-nez p1, :cond_21

    .line 1374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1376
    :cond_21
    new-instance v5, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;-><init>()V

    .line 1377
    .local v5, "result":Lcom/baidu/sapi2/result/DynamicPwdLoginResult;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1378
    const/16 v1, -0x65

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1379
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1482
    :goto_36
    return-void

    .line 1382
    :cond_37
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1383
    const/16 v1, -0x66

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1384
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_36

    .line 1387
    :cond_48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 1388
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1389
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_36

    .line 1393
    :cond_5f
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1395
    const-string v1, "/v2/sapi/login"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 1396
    .local v12, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v1, "cert_id"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string v1, "isphone"

    const-string v2, "1"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const-string v1, "isdpass"

    const-string v2, "1"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    new-instance v6, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 1403
    .local v6, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_a2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1404
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v1, "username"

    move-object/from16 v0, p2

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1406
    const-string v1, "login_type"

    const-string v2, "3"

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1407
    const-string v1, "key"

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1409
    const-string v1, "userinfo"

    const-string v2, "-----BEGIN CERTIFICATE-----\nMIIFKDCCBBCgAwIBAgIQaG9YabPddabIY+N5IoXttzANBgkqhkiG9w0BAQUFADCB\nvDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQL\nExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2Ug\nYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykxMDE2MDQGA1UEAxMt\nVmVyaVNpZ24gQ2xhc3MgMyBJbnRlcm5hdGlvbmFsIFNlcnZlciBDQSAtIEczMB4X\nDTEwMTIwMzAwMDAwMFoXDTEyMTIwMjIzNTk1OVowga8xCzAJBgNVBAYTAkNOMRAw\nDgYDVQQIEwdCZWlqaW5nMRAwDgYDVQQHFAdCZWlqaW5nMTkwNwYDVQQKFDBCZWlK\naW5nIEJhaWR1IE5ldGNvbSBTY2llbmNlIFRlY2hub2xvZ3kgQ28uLCBMdGQxJTAj\nBgNVBAsUHHNlcnZpY2Ugb3BlcmF0aW9uIGRlcGFydG1lbnQxGjAYBgNVBAMUEW9w\nZW5hcGkuYmFpZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC68R1G\nWkkVvvjBOGKHOoyLxdtEcxBiVOGG8lvXTckB8jNrg4tihQzql+fJbr/X8V9MqQLw\nzzOyQViYlW+/GhC6u1jrP6t3Br0Wy8HyThDnvOAWyPFEawgbIywT20F41Iqayled\n/DQ/JCDWcNA7+xX56rqEcQd+6baNAiu9o962PwIDAQABo4IBszCCAa8wCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBaAwQQYDVR0fBDowODA2oDSgMoYwaHR0cDovL1NWUklu\ndGwtRzMtY3JsLnZlcmlzaWduLmNvbS9TVlJJbnRsRzMuY3JsMEQGA1UdIAQ9MDsw\nOQYLYIZIAYb4RQEHFwMwKjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNp\nZ24uY29tL3JwYTAoBgNVHSUEITAfBglghkgBhvhCBAEGCCsGAQUFBwMBBggrBgEF\nBQcDAjByBggrBgEFBQcBAQRmMGQwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZl\ncmlzaWduLmNvbTA8BggrBgEFBQcwAoYwaHR0cDovL1NWUkludGwtRzMtYWlhLnZl\ncmlzaWduLmNvbS9TVlJJbnRsRzMuY2VyMG4GCCsGAQUFBwEMBGIwYKFeoFwwWjBY\nMFYWCWltYWdlL2dpZjAhMB8wBwYFKw4DAhoEFEtruSiWBgy70FI4mymsSweLIQUY\nMCYWJGh0dHA6Ly9sb2dvLnZlcmlzaWduLmNvbS92c2xvZ28xLmdpZjANBgkqhkiG\n9w0BAQUFAAOCAQEAgNIl8/QIKP4KWWWj6ltL6lVknoGlpUIoowvnv+57H7FdEYJb\n9zQewrAqoFkblB0mMiUEGdJOa7YxKKJialqz6KnlMrHQMAsB641BHLDESvLjuhio\nUsWmvBowIK92HQ2H9N01U8d1i5rTz5wwFK+Nvue/61tzCTTmbRgBuGPotQ/tcA+g\nYCNuEIHsJMbWiX9O3gflnMdRME7z9Hw9zMogt+lz7GudP/AO1K6sZ6VnQ931Gv1e\nIOmPCPfvO/Kw/aXSacoEWnMsy+qTIewVPT/MMgSaq9JewAQgLpMX+O5qqAJBYoDj\nxoZnHufGgOIKfNmSvYiHjDFJtP55PdEH21q+JA==\n-----END CERTIFICATE-----"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1412
    .local v13, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    new-instance v11, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v11, v12}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1415
    .local v11, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v15, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->r()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/baidu/sapi2/a$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/a$3;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/DynamicPwdLoginResult;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v11, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_10e} :catch_110

    goto/16 :goto_36

    .line 1477
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v11    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v13    # "sig":Ljava/lang/String;
    :catch_110
    move-exception v9

    .line 1478
    .local v9, "e":Ljava/lang/Exception;
    const/16 v1, -0xca

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/DynamicPwdLoginResult;->setResultCode(I)V

    .line 1479
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1480
    invoke-static {v9}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_36
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .param p2, "voiceMd5"    # Ljava/lang/String;
    .param p3, "bduss"    # Ljava/lang/String;
    .param p4, "authSid"    # Ljava/lang/String;
    .param p5, "newUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/VoiceRegResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 3123
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/VoiceRegResult;>;"
    if-nez p1, :cond_21

    .line 3124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3126
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "voiceMd5 can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3129
    :cond_2f
    new-instance v6, Lcom/baidu/sapi2/result/VoiceRegResult;

    invoke-direct {v6}, Lcom/baidu/sapi2/result/VoiceRegResult;-><init>()V

    .line 3130
    .local v6, "result":Lcom/baidu/sapi2/result/VoiceRegResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 3131
    const/16 v1, -0xc9

    invoke-virtual {v6, v1}, Lcom/baidu/sapi2/result/VoiceRegResult;->setResultCode(I)V

    .line 3132
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3200
    :goto_4a
    return-void

    .line 3135
    :cond_4b
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3137
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 3138
    .local v12, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    const-string v1, "tpl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 3141
    const-string v1, "clientid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    const-string v1, "cuid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    :cond_9c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 3145
    const-string v1, "clientip"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    :cond_b3
    const-string v1, "/v2/sapi/regvoice"

    invoke-static {v1}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3148
    .local v10, "deviceInfo":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 3149
    const-string v1, "di"

    invoke-interface {v12, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    :cond_c4
    const-string v1, "voicemd5"

    move-object/from16 v0, p2

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 3153
    const-string v1, "bduss"

    move-object/from16 v0, p3

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    :cond_d8
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 3156
    const-string v1, "authsid"

    move-object/from16 v0, p4

    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    :cond_e5
    if-eqz p5, :cond_145

    .line 3159
    const-string v1, "newuser"

    const-string v2, "1"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    :goto_ee
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3164
    .local v13, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    new-instance v11, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v11, v12}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3168
    .local v11, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v15, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/regvoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/baidu/sapi2/a$22;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/baidu/sapi2/a$22;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;ZLcom/baidu/sapi2/result/VoiceRegResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v11, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_4a

    .line 3161
    .end local v11    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v13    # "sig":Ljava/lang/String;
    :cond_145
    const-string v1, "newuser"

    const-string v2, "0"

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ee
.end method

.method a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
    .registers 18
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    .prologue
    .line 1830
    if-nez p1, :cond_a

    .line 1831
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SetPopularPortraitCallback can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1834
    :cond_a
    if-nez p2, :cond_14

    .line 1835
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SetPopularPortraitDto can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1838
    :cond_14
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;->bduss:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1842
    :cond_26
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;->series:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1843
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "series can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1846
    :cond_38
    new-instance v4, Lcom/baidu/sapi2/result/SetPopularPortraitResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;-><init>()V

    .line 1848
    .local v4, "result":Lcom/baidu/sapi2/result/SetPopularPortraitResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 1849
    const/16 v1, -0xc9

    invoke-virtual {v4, v1}, Lcom/baidu/sapi2/result/SetPopularPortraitResult;->setResultCode(I)V

    .line 1850
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1920
    :goto_51
    return-void

    .line 1854
    :cond_52
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1855
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1856
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1857
    .local v9, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 1860
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :cond_8c
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 1863
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    :cond_9f
    const-string v1, "bduss"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;->bduss:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    const-string v1, "serie"

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;->series:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    const-string v1, "num"

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;->num:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1869
    .local v11, "sig":Ljava/lang/String;
    new-instance v10, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;

    invoke-direct {v10}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;-><init>()V

    .line 1870
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_d3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1871
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    .line 1873
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ef
    const-string v1, "sig"

    invoke-virtual {v10, v1, v11}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v12, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v13, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->q()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/baidu/sapi2/a$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/sapi2/a$8;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/result/SetPopularPortraitResult;Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V

    invoke-virtual {v12, v13, v14, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_51
.end method

.method a(Lcom/baidu/sapi2/callback/SetPortraitCallback;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 25
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SetPortraitCallback;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "file"    # [B
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 1748
    if-nez p1, :cond_21

    .line 1749
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can\'t be null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1751
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1752
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bduss can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1754
    :cond_2f
    if-eqz p3, :cond_36

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_3e

    .line 1755
    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "file can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1757
    :cond_3e
    new-instance v7, Lcom/baidu/sapi2/result/SetPortraitResult;

    invoke-direct {v7}, Lcom/baidu/sapi2/result/SetPortraitResult;-><init>()V

    .line 1758
    .local v7, "result":Lcom/baidu/sapi2/result/SetPortraitResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1759
    const/16 v3, -0xc9

    invoke-virtual {v7, v3}, Lcom/baidu/sapi2/result/SetPortraitResult;->setResultCode(I)V

    .line 1760
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/baidu/sapi2/callback/SetPortraitCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 1827
    :goto_59
    return-void

    .line 1764
    :cond_5a
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1766
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1767
    .local v14, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    const-string v3, "tpl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 1770
    const-string v3, "clientid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    :cond_a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 1773
    const-string v3, "clientip"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    :cond_b7
    const-string v3, "bduss"

    move-object/from16 v0, p2

    invoke-interface {v14, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1777
    .local v16, "sig":Ljava/lang/String;
    new-instance v15, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;

    invoke-direct {v15}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;-><init>()V

    .line 1778
    .local v15, "params":Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1779
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 1781
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f3
    const-string v3, "sig"

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_140

    const-string v13, "image/jpeg"

    .line 1783
    .local v13, "mime":Ljava/lang/String;
    :goto_102
    const-string v3, "file"

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "portrait.jpg"

    invoke-virtual {v15, v3, v4, v5, v13}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->m()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Lcom/baidu/sapi2/a$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/a$7;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SetPortraitCallback;Lcom/baidu/sapi2/result/SetPortraitResult;Ljava/lang/String;[BLjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_59

    .end local v13    # "mime":Ljava/lang/String;
    :cond_140
    move-object/from16 v13, p4

    .line 1782
    goto :goto_102
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "voiceCheckDTO"    # Lcom/baidu/sapi2/dto/VoiceCheckDTO;

    .prologue
    .line 2812
    if-nez p1, :cond_21

    .line 2813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2815
    :cond_21
    if-nez p2, :cond_42

    .line 2816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2819
    :cond_42
    new-instance v4, Lcom/baidu/sapi2/result/VoiceCheckResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/VoiceCheckResult;-><init>()V

    .line 2820
    .local v4, "result":Lcom/baidu/sapi2/result/VoiceCheckResult;
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2821
    const/16 v0, -0x65

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2822
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2890
    :goto_57
    return-void

    .line 2825
    :cond_58
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2826
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2827
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_57

    .line 2831
    :cond_6b
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2832
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2833
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2834
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 2837
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    :cond_a5
    const-string v0, "/v2/sapi/getvoiceid"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2840
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 2841
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    :cond_b6
    const-string v0, "username"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->account:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    if-eqz v0, :cond_c7

    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;->MERGE:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    if-ne v0, v1, :cond_ce

    .line 2845
    :cond_c7
    const-string v0, "merge"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    :cond_ce
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;->USERNAME:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    if-ne v0, v1, :cond_db

    .line 2848
    const-string v0, "isphone"

    const-string v1, "0"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    :cond_db
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCheckDTO;->accountType:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    sget-object v1, Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;->PHONE:Lcom/baidu/sapi2/dto/VoiceCheckDTO$AccountType;

    if-ne v0, v1, :cond_e8

    .line 2851
    const-string v0, "isphone"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    :cond_e8
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2854
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 2858
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/getvoiceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$19;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$19;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/result/VoiceCheckResult;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_57
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 2894
    if-nez p1, :cond_21

    .line 2895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/VoiceCheckCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2897
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2898
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "either uid or bduss should be assigned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2900
    :cond_35
    new-instance v5, Lcom/baidu/sapi2/result/VoiceCheckResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/VoiceCheckResult;-><init>()V

    .line 2901
    .local v5, "result":Lcom/baidu/sapi2/result/VoiceCheckResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2902
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/VoiceCheckResult;->setResultCode(I)V

    .line 2903
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/VoiceCheckCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2968
    :goto_4e
    return-void

    .line 2907
    :cond_4f
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2908
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2909
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2910
    .local v10, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 2913
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    :cond_89
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 2916
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    :cond_9c
    const-string v1, "/v2/sapi/getvoiceid"

    invoke-static {v1}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2919
    .local v8, "deviceInfo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 2920
    const-string v1, "di"

    invoke-interface {v10, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    :cond_ad
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 2924
    const-string v1, "bduss"

    move-object/from16 v0, p2

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    :cond_ba
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 2928
    const-string v1, "userid"

    move-object/from16 v0, p3

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    :cond_c7
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v10, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2932
    .local v11, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    new-instance v9, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v9, v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 2936
    .local v9, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v12, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v13, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/getvoiceid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/baidu/sapi2/a$20;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$20;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/result/VoiceCheckResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14, v9, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_4e
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;

    .prologue
    .line 3327
    if-nez p1, :cond_21

    .line 3328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3331
    :cond_21
    if-nez p2, :cond_2b

    .line 3332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VoiceCodeSetDTO can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3335
    :cond_2b
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3339
    :cond_3b
    iget v0, p2, Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;->voiceCode:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_45

    iget v0, p2, Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;->voiceCode:I

    if-gez v0, :cond_4d

    .line 3340
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abnormal voice code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3343
    :cond_4d
    new-instance v4, Lcom/baidu/sapi2/result/VoiceCodeSetResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/VoiceCodeSetResult;-><init>()V

    .line 3345
    .local v4, "result":Lcom/baidu/sapi2/result/VoiceCodeSetResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 3346
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/VoiceCodeSetResult;->setResultCode(I)V

    .line 3347
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3421
    :goto_64
    return-void

    .line 3351
    :cond_65
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3352
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3353
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3354
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3355
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 3357
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    :cond_9f
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 3360
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    :cond_b2
    const-string v0, "/v2/sapi/updatevoicepassword"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3363
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 3364
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3366
    :cond_c3
    const-string v0, "time"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3367
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    const-string v0, "password"

    iget v1, p2, Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;->voiceCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3370
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3371
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3375
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/updatevoicepassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$25;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$25;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/result/VoiceCodeSetResult;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_64
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceLoginCallback;
    .param p2, "voiceMd5"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 3228
    if-nez p1, :cond_21

    .line 3229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3231
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "voiceMd5 can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3234
    :cond_2f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "uid can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3237
    :cond_3d
    new-instance v5, Lcom/baidu/sapi2/result/VoiceLoginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/VoiceLoginResult;-><init>()V

    .line 3238
    .local v5, "result":Lcom/baidu/sapi2/result/VoiceLoginResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 3239
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/VoiceLoginResult;->setResultCode(I)V

    .line 3240
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/sapi2/callback/VoiceLoginCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3299
    :goto_58
    return-void

    .line 3244
    :cond_59
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3246
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3247
    .local v11, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3248
    const-string v1, "tpl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 3250
    const-string v1, "clientid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3252
    :cond_9f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 3253
    const-string v1, "clientip"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    :cond_b6
    const-string v1, "/v2/sapi/voicelogin"

    invoke-static {v1}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3256
    .local v9, "deviceInfo":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    .line 3257
    const-string v1, "di"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    :cond_c7
    const-string v1, "voicemd5"

    move-object/from16 v0, p2

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    sget-object v1, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3261
    .local v8, "cipherUid":Ljava/lang/String;
    const-string v1, "id"

    invoke-interface {v11, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3263
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3265
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3267
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/voicelogin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$24;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$24;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceLoginCallback;Lcom/baidu/sapi2/result/VoiceLoginResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_58
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;

    .prologue
    .line 3424
    if-nez p1, :cond_21

    .line 3425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3428
    :cond_21
    if-nez p2, :cond_2b

    .line 3429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VoiceSwitchSetDTO can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3432
    :cond_2b
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;->bduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3436
    :cond_3b
    new-instance v4, Lcom/baidu/sapi2/result/VoiceSwitchSetResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/VoiceSwitchSetResult;-><init>()V

    .line 3438
    .local v4, "result":Lcom/baidu/sapi2/result/VoiceSwitchSetResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 3439
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/VoiceSwitchSetResult;->setResultCode(I)V

    .line 3440
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3513
    :goto_52
    return-void

    .line 3444
    :cond_53
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3445
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3446
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3447
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 3450
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    :cond_8d
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 3453
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    :cond_a0
    const-string v0, "/v2/sapi/updatevoiceloginswitch"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3456
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 3457
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    :cond_b1
    const-string v0, "time"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    const-string v0, "bduss"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;->bduss:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    const-string v1, "status"

    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;->action:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/Switch;->ON:Lcom/baidu/sapi2/utils/enums/Switch;

    if-ne v0, v2, :cond_11c

    const-string v0, "1"

    :goto_d7
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3463
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3467
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/updatevoiceloginswitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$26;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$26;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;Lcom/baidu/sapi2/result/VoiceSwitchSetResult;Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_52

    .line 3461
    .end local v7    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v9    # "sig":Ljava/lang/String;
    :cond_11c
    const-string v0, "0"

    goto :goto_d7
.end method

.method a(Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V
    .registers 16
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceVerifyCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

    .prologue
    .line 3516
    if-nez p1, :cond_21

    .line 3517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3520
    :cond_21
    if-nez p2, :cond_42

    .line 3521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3524
    :cond_42
    iget-object v0, p2, Lcom/baidu/sapi2/dto/VoiceVerifyDTO;->voiceMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "voiceMD5 must be assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3528
    :cond_52
    new-instance v4, Lcom/baidu/sapi2/result/VoiceVerifyResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/VoiceVerifyResult;-><init>()V

    .line 3530
    .local v4, "result":Lcom/baidu/sapi2/result/VoiceVerifyResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 3531
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/VoiceVerifyResult;->setResultCode(I)V

    .line 3532
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/callback/VoiceVerifyCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3603
    :goto_69
    return-void

    .line 3536
    :cond_6a
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3537
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3538
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3540
    .local v8, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 3543
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3546
    :cond_ad
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 3547
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3549
    :cond_c0
    const-string v0, "/v2/sapi/verifyvoice"

    invoke-static {v0}, Lcom/baidu/sapi2/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3550
    .local v6, "deviceInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 3551
    const-string v0, "di"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3554
    :cond_d1
    const-string v0, "md5"

    iget-object v1, p2, Lcom/baidu/sapi2/dto/VoiceVerifyDTO;->voiceMD5:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3555
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v8, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3556
    .local v9, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3558
    .local v7, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v10, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/verifyvoice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/a$27;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$27;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/result/VoiceVerifyResult;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V

    invoke-virtual {v10, v11, v12, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_69
.end method

.method a(Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    .prologue
    .line 1217
    new-instance v1, Lcom/baidu/sapi2/result/Web2NativeLoginResult;

    invoke-direct {v1}, Lcom/baidu/sapi2/result/Web2NativeLoginResult;-><init>()V

    .line 1218
    .local v1, "result":Lcom/baidu/sapi2/result/Web2NativeLoginResult;
    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->getCookieBduss()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "bduss":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1220
    if-eqz p1, :cond_19

    .line 1221
    const/16 v2, -0x65

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/result/Web2NativeLoginResult;->setResultCode(I)V

    .line 1222
    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;->onBdussEmpty(Lcom/baidu/sapi2/result/Web2NativeLoginResult;)V

    .line 1272
    :cond_19
    :goto_19
    return-void

    .line 1227
    :cond_1a
    new-instance v2, Lcom/baidu/sapi2/a$55;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/baidu/sapi2/a$55;-><init>(Lcom/baidu/sapi2/a;Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;Lcom/baidu/sapi2/result/Web2NativeLoginResult;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    goto :goto_19
.end method

.method a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2482
    if-eqz p1, :cond_f

    .line 2483
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onNetworkFailed()V

    .line 2529
    :cond_f
    :goto_f
    return-void

    .line 2487
    :cond_10
    new-instance v4, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v4}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 2488
    .local v4, "helper":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2489
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2490
    iget-object v8, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v9, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->z()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/baidu/sapi2/a$16;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/a$16;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_f
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
    .registers 13
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 2279
    if-nez p1, :cond_21

    .line 2280
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can\'t be null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2282
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2283
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bduss can\'t be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2285
    :cond_2f
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2286
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    .line 2287
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onNetworkFailed()V

    .line 2363
    :goto_3f
    return-void

    .line 2291
    :cond_40
    new-instance v5, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v5, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2292
    iget-object v5, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2293
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2294
    .local v2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "appid"

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    const-string v5, "tpl"

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 2297
    const-string v5, "clientid"

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    :cond_7a
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 2300
    const-string v5, "clientip"

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    :cond_8d
    const-string v5, "bduss"

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    iget-object v5, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2304
    .local v4, "sig":Ljava/lang/String;
    new-instance v3, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2305
    .local v3, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2306
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 2308
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c3
    const-string v5, "sig"

    invoke-virtual {v3, v5, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    iget-object v5, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->o()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/baidu/sapi2/a$14;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1, p2}, Lcom/baidu/sapi2/a$14;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_3f
.end method

.method a(Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;
    .param p2, "qrSign"    # Ljava/lang/String;
    .param p3, "qrCmd"    # Ljava/lang/String;

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4310
    if-eqz p1, :cond_12

    .line 4311
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    .line 4312
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onNetworkFailed()V

    .line 4368
    :cond_12
    :goto_12
    return-void

    .line 4317
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4318
    :cond_1f
    if-eqz p1, :cond_12

    .line 4319
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    .line 4320
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onQrCodeInvalid()V

    goto :goto_12

    .line 4325
    :cond_28
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4326
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4327
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4328
    .local v7, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "sign"

    invoke-virtual {v7, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    const-string v0, "cmd"

    invoke-virtual {v7, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 4332
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4334
    :cond_5a
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 4335
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4338
    :cond_6d
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4339
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4340
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4341
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4345
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/qrlogin?lp=app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$36;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_12
.end method

.method a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;)V
    .registers 9
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 5275
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    .line 5277
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5278
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "errno"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5279
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_58

    .line 5306
    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSystemError(I)V

    .line 5311
    .end local v0    # "code":I
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_18
    return-void

    .line 5281
    .restart local v0    # "code":I
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :sswitch_19
    new-instance v4, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;-><init>()V

    .line 5282
    .local v4, "response":Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;
    iput v0, v4, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->errorCode:I

    .line 5283
    const-string v5, "local"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 5284
    .local v2, "locale":Lorg/json/JSONObject;
    if-eqz v2, :cond_40

    .line 5285
    const-string v5, "country"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->country:Ljava/lang/String;

    .line 5286
    const-string v5, "provice"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->province:Ljava/lang/String;

    .line 5287
    const-string v5, "city"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->city:Ljava/lang/String;

    .line 5289
    :cond_40
    invoke-virtual {p1, v4}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_18

    .line 5308
    .end local v0    # "code":I
    .end local v2    # "locale":Lorg/json/JSONObject;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "response":Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;
    :catch_44
    move-exception v1

    .line 5309
    .local v1, "e":Ljava/lang/Exception;
    const/16 v5, -0x64

    invoke-virtual {p1, v5}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSystemError(I)V

    goto :goto_18

    .line 5294
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :sswitch_4b
    :try_start_4b
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onQrCodeInvalid()V

    goto :goto_18

    .line 5299
    :sswitch_4f
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onBdussInvalid()V

    goto :goto_18

    .line 5303
    :sswitch_53
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onUserNotNormalized()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_44

    goto :goto_18

    .line 5279
    nop

    :sswitch_data_58
    .sparse-switch
        -0x67 -> :sswitch_4b
        0x0 -> :sswitch_19
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_53
        0x27166 -> :sswitch_4f
    .end sparse-switch
.end method

.method a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;
    .param p2, "qrSign"    # Ljava/lang/String;
    .param p3, "qrCmd"    # Ljava/lang/String;
    .param p4, "bduss"    # Ljava/lang/String;
    .param p5, "stoken"    # Ljava/lang/String;
    .param p6, "ptoken"    # Ljava/lang/String;

    .prologue
    .line 4128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 4129
    if-eqz p1, :cond_14

    .line 4130
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    .line 4131
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onNetworkFailed()V

    .line 4203
    :cond_14
    :goto_14
    return-void

    .line 4136
    :cond_15
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4137
    :cond_21
    if-eqz p1, :cond_14

    .line 4138
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    .line 4139
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onQrCodeInvalid()V

    goto :goto_14

    .line 4144
    :cond_2a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/baidu/sapi2/utils/enums/QrLoginAction;->LOGIN:Lcom/baidu/sapi2/utils/enums/QrLoginAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/QrLoginAction;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4145
    if-eqz p1, :cond_14

    .line 4146
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    .line 4147
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onBdussInvalid()V

    goto :goto_14

    .line 4152
    :cond_47
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4154
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4155
    .local v11, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sign"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    const-string v1, "cmd"

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 4158
    const-string v1, "bduss"

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    :cond_7b
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 4161
    const-string v1, "ptoken"

    move-object/from16 v0, p6

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4163
    :cond_88
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 4164
    const-string v1, "stoken"

    move-object/from16 v0, p5

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    :cond_95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 4167
    const-string v1, "clientid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    :cond_ac
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 4170
    const-string v1, "clientip"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    :cond_c3
    const-string v1, "tpl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4174
    const-string v1, "appid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4176
    .local v12, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4178
    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4180
    .local v10, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/qrlogin?lp=pc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$33;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/baidu/sapi2/a$33;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15, v10, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_14
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .registers 15
    .param p2, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    const/16 v11, -0x64

    .line 237
    if-nez p2, :cond_c

    .line 238
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ReloginCredentials can\'t be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 240
    :cond_c
    iget-object v6, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 241
    if-eqz p1, :cond_1c

    .line 242
    const v6, 0x1fbd5

    invoke-interface {p1, v6}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 328
    :cond_1c
    :goto_1c
    return-void

    .line 246
    :cond_1d
    iget-object v6, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 247
    if-eqz p1, :cond_1c

    .line 248
    const v6, 0x1fbda

    invoke-interface {p1, v6}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_1c

    .line 252
    :cond_2e
    iget-object v6, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 253
    if-eqz p1, :cond_1c

    .line 254
    const v6, 0x1fbe9

    invoke-interface {p1, v6}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_1c

    .line 259
    :cond_3f
    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v6, :cond_49

    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v6, :cond_4f

    .line 260
    :cond_49
    if-eqz p1, :cond_1c

    .line 261
    invoke-interface {p1, v11}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_1c

    .line 266
    :cond_4f
    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 267
    if-eqz p1, :cond_1c

    .line 268
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_1c

    .line 273
    :cond_5f
    new-instance v1, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v1}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 275
    .local v1, "encryptor":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    :try_start_64
    new-instance v6, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v6, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 276
    iget-object v6, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 277
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v4, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "crypttype"

    const-string v7, "11"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v6, "tpl"

    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v6, "appid"

    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 282
    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 284
    :cond_a8
    const-string v6, "cuid"

    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v6, "cert_id"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v6, "isdpass"

    const-string v7, "0"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v6, "username"

    iget-object v7, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v6, "password"

    iget-object v7, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v6, "UBI"

    iget-object v7, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v6, "3"

    iget-object v7, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13c

    const-string v2, "1"

    .line 293
    .local v2, "isPhone":Ljava/lang/String;
    :goto_e3
    const-string v6, "isphone"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v6, "login_type"

    const-string v7, "3"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v6, "key"

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v6, "sdk_version"

    const-string v7, "2"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v6, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v6, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v6, v6, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "sig":Ljava/lang/String;
    const-string v6, "sig"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v3, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v3, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 304
    .local v3, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v6, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v7, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/a;->r()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/baidu/sapi2/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10, p1, p2}, Lcom/baidu/sapi2/a$1;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    invoke-virtual {v6, v7, v8, v3, v9}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_130} :catch_132

    goto/16 :goto_1c

    .line 324
    .end local v2    # "isPhone":Ljava/lang/String;
    .end local v3    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v4    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "sig":Ljava/lang/String;
    :catch_132
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    invoke-direct {p0, v11, p1, v6}, Lcom/baidu/sapi2/a;->d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13c
    :try_start_13c
    const-string v2, "0"
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13e} :catch_132

    goto :goto_e3
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "stoken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/GetPortraitResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1925
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/GetPortraitResponse;>;"
    if-nez p1, :cond_21

    .line 1926
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1928
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1929
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1931
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1932
    invoke-interface/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    .line 1999
    :goto_3e
    return-void

    .line 1936
    :cond_3f
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1938
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1939
    .local v10, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    const-string v1, "tpl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 1942
    const-string v1, "clientid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    :cond_85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1945
    const-string v1, "clientip"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    :cond_9c
    const-string v1, "bduss"

    move-object/from16 v0, p2

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1949
    const-string v1, "ptoken"

    move-object/from16 v0, p3

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    :cond_b0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 1952
    const-string v1, "stoken"

    move-object/from16 v0, p4

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    :cond_bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1955
    .local v12, "sig":Ljava/lang/String;
    new-instance v11, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v11}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 1956
    .local v11, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_d6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1957
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    .line 1959
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f2
    const-string v1, "sig"

    invoke-virtual {v11, v1, v12}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v14, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/center/getportrait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lcom/baidu/sapi2/a$9;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$9;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15, v11, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_3e
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 29
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "stoken"    # Ljava/lang/String;
    .param p5, "file"    # [B
    .param p6, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1674
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    if-nez p1, :cond_21

    .line 1675
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "can\'t be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1677
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1678
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bduss can\'t be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1680
    :cond_2f
    if-eqz p5, :cond_36

    move-object/from16 v0, p5

    array-length v4, v0

    if-nez v4, :cond_3e

    .line 1681
    :cond_36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "file can\'t be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1683
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1684
    invoke-interface/range {p1 .. p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    .line 1742
    :goto_4d
    return-void

    .line 1688
    :cond_4e
    new-instance v4, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct/range {p0 .. p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1690
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1691
    .local v16, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "appid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    const-string v4, "tpl"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 1694
    const-string v4, "clientid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_9a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b3

    .line 1697
    const-string v4, "clientip"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v5, v5, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    :cond_b3
    const-string v4, "bduss"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 1701
    const-string v4, "ptoken"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    :cond_cb
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 1704
    const-string v4, "stoken"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_da
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1707
    .local v18, "sig":Ljava/lang/String;
    new-instance v17, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;

    invoke-direct/range {v17 .. v17}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;-><init>()V

    .line 1708
    .local v17, "params":Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_f5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1709
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f5

    .line 1711
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_113
    const-string v4, "sig"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16a

    const-string v15, "image/jpeg"

    .line 1713
    .local v15, "mime":Ljava/lang/String;
    :goto_124
    const-string v4, "file"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "portrait.jpg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6, v15}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/sapi2/a;->m()Ljava/lang/String;

    move-result-object v21

    new-instance v4, Lcom/baidu/sapi2/a$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v12}, Lcom/baidu/sapi2/a$6;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_4d

    .end local v15    # "mime":Ljava/lang/String;
    :cond_16a
    move-object/from16 v15, p6

    .line 1712
    goto :goto_124
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    const/4 v3, 0x0

    .line 4889
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->b()Z

    move-result v4

    if-nez v4, :cond_24

    .line 4932
    :cond_23
    :goto_23
    return v3

    .line 4896
    :cond_24
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 4897
    if-eqz p1, :cond_23

    .line 4898
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_23

    .line 4903
    :cond_34
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4904
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4905
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4907
    .local v2, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4910
    .local v0, "deviceID":Ljava/lang/String;
    const-string v3, "ptpl"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4911
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    const-string v3, "device_info"

    invoke-static {}, Lcom/baidu/sapi2/utils/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    const-string v3, "package_sign"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4915
    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4917
    .local v1, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/yunid/device/reg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/a$46;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1}, Lcom/baidu/sapi2/a$46;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 4932
    const/4 v3, 0x1

    goto/16 :goto_23
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .registers 11
    .param p2, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    const/4 v3, 0x0

    .line 4552
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v4, :cond_c

    .line 4612
    :cond_b
    :goto_b
    return v3

    .line 4556
    :cond_c
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4557
    if-eqz p1, :cond_b

    .line 4558
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_b

    .line 4563
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 4564
    if-eqz p1, :cond_b

    .line 4565
    const/16 v4, 0x101

    invoke-interface {p1, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_b

    .line 4570
    :cond_2a
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4571
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4573
    .local v1, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "username"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4575
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 4576
    const-string v3, "clientid"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4578
    :cond_57
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 4579
    const-string v3, "clientip"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4582
    :cond_6a
    const-string v3, "tpl"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4583
    const-string v3, "appid"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4584
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4585
    .local v2, "sig":Ljava/lang/String;
    const-string v3, "sig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4587
    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4589
    .local v0, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/v2/sapi/getdpass"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/a$39;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1, p2}, Lcom/baidu/sapi2/a$39;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 4612
    const/4 v3, 0x1

    goto/16 :goto_b
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 16
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "needShare"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 1490
    :cond_a
    const/4 v0, 0x0

    .line 1545
    :goto_b
    return v0

    .line 1493
    :cond_c
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1494
    if-eqz p1, :cond_1b

    .line 1495
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    .line 1497
    :cond_1b
    const/4 v0, 0x1

    goto :goto_b

    .line 1500
    :cond_1d
    new-instance v5, Lcom/baidu/sapi2/utils/SapiDataEncryptor;

    invoke-direct {v5}, Lcom/baidu/sapi2/utils/SapiDataEncryptor;-><init>()V

    .line 1501
    .local v5, "helper":Lcom/baidu/sapi2/utils/SapiDataEncryptor;
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 1502
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 1503
    iget-object v8, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v9, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->z()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/baidu/sapi2/a$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/a$4;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/utils/SapiDataEncryptor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 1545
    const/4 v0, 0x1

    goto :goto_b
.end method

.method b(Ljava/lang/String;)I
    .registers 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 5205
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5206
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "errno"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 5211
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .local v1, "errCode":I
    :goto_b
    return v1

    .line 5207
    .end local v1    # "errCode":I
    :catch_c
    move-exception v0

    .line 5208
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, -0x64

    .line 5209
    .restart local v1    # "errCode":I
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/baidu/sapi2/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method b(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5089
    .local p2, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    if-eqz p3, :cond_a2

    .line 5090
    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 5092
    .local v2, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5093
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v4, "displayname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 5094
    const-string v4, "uid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 5095
    const-string v4, "bduss"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 5096
    const-string v4, "ptoken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 5098
    const-string v4, "error_code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "error_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 5099
    new-instance v3, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v3}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 5100
    .local v3, "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    .line 5101
    iget-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 5102
    iget-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    .line 5103
    iget-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    .line 5104
    iget-object v4, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    .line 5105
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 5107
    const-string v4, "device_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 5108
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    const-string v5, "device_token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/b;->a(Ljava/lang/String;)V

    .line 5111
    :cond_78
    invoke-static {}, Lcom/baidu/sapi2/share/a;->a()Lcom/baidu/sapi2/share/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 5113
    .end local v3    # "sapiAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_7f
    if-eqz p2, :cond_93

    .line 5114
    const-string v4, "error_code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_a8

    .line 5119
    const-string v4, "error_code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 5132
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_93
    :goto_93
    return-void

    .line 5116
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :pswitch_94
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_98} :catch_99

    goto :goto_93

    .line 5122
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_99
    move-exception v0

    .line 5123
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_93

    .line 5124
    const/16 v4, -0x64

    invoke-interface {p2, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_93

    .line 5128
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_a2
    if-eqz p2, :cond_93

    .line 5129
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_93

    .line 5114
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_94
    .end packed-switch
.end method

.method b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
    .registers 15
    .param p2, "bduss"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/OAuthResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3030
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/OAuthResult;>;"
    if-nez p1, :cond_21

    .line 3031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3033
    :cond_21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3034
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3037
    :cond_2f
    new-instance v4, Lcom/baidu/sapi2/result/OAuthResult;

    invoke-direct {v4}, Lcom/baidu/sapi2/result/OAuthResult;-><init>()V

    .line 3038
    .local v4, "result":Lcom/baidu/sapi2/result/OAuthResult;
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 3039
    const/16 v0, -0xc9

    invoke-virtual {v4, v0}, Lcom/baidu/sapi2/result/OAuthResult;->setResultCode(I)V

    .line 3040
    invoke-interface {p1, v4}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 3115
    :goto_46
    return-void

    .line 3044
    :cond_47
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 3045
    iget-object v0, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 3046
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3047
    .local v7, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    const-string v0, "tpl"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 3050
    const-string v0, "clientid"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    :cond_81
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 3053
    const-string v0, "clientip"

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    :cond_94
    const-string v0, "bduss"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3056
    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3057
    .local v8, "sig":Ljava/lang/String;
    const-string v0, "sig"

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3059
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v7}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 3061
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v9, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/bdussexchangeaccesstoken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/baidu/sapi2/a$21;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/a$21;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/OAuthResult;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_46
.end method

.method b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/QrAppLoginResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4372
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/QrAppLoginResult;>;"
    if-nez p1, :cond_21

    .line 4373
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4375
    :cond_21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sign can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4378
    :cond_2f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4379
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cmd can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4382
    :cond_3d
    new-instance v5, Lcom/baidu/sapi2/result/QrAppLoginResult;

    invoke-direct {v5}, Lcom/baidu/sapi2/result/QrAppLoginResult;-><init>()V

    .line 4383
    .local v5, "result":Lcom/baidu/sapi2/result/QrAppLoginResult;
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 4384
    const/16 v1, -0xc9

    invoke-virtual {v5, v1}, Lcom/baidu/sapi2/result/QrAppLoginResult;->setResultCode(I)V

    .line 4385
    invoke-interface {p1, v5}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 4462
    :goto_54
    return-void

    .line 4389
    :cond_55
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4390
    iget-object v1, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4391
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 4392
    .local v9, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sign"

    move-object/from16 v0, p2

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    const-string v1, "cmd"

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4395
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 4396
    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4398
    :cond_8b
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 4399
    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4402
    :cond_9e
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4403
    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4404
    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v9, v1}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4405
    .local v10, "sig":Ljava/lang/String;
    const-string v1, "sig"

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4407
    new-instance v8, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v8, v9}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4409
    .local v8, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v11, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v12, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v2/sapi/qrlogin?lp=app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/baidu/sapi2/a$37;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/a$37;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/QrAppLoginResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13, v8, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_54
.end method

.method b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .registers 11
    .param p2, "sms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    const/4 v3, 0x0

    .line 4618
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v4, :cond_c

    .line 4678
    :cond_b
    :goto_b
    return v3

    .line 4622
    :cond_c
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4623
    if-eqz p1, :cond_b

    .line 4624
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_b

    .line 4629
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 4630
    if-eqz p1, :cond_b

    .line 4631
    const/16 v4, -0x67

    invoke-interface {p1, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_b

    .line 4636
    :cond_2a
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4637
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4638
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4639
    .local v1, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "sms"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4641
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 4642
    const-string v3, "clientid"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4644
    :cond_57
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 4645
    const-string v3, "clientip"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4648
    :cond_6a
    const-string v3, "tpl"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    const-string v3, "appid"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4650
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/baidu/sapi2/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4651
    .local v2, "sig":Ljava/lang/String;
    const-string v3, "sig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4653
    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4655
    .local v0, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v6}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/v2/sapi/smsgetlogin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/a$40;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1, p2}, Lcom/baidu/sapi2/a$40;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 4678
    const/4 v3, 0x1

    goto/16 :goto_b
.end method

.method c(Ljava/lang/String;)I
    .registers 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 5218
    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 5219
    .local v0, "errCode":I
    const v1, 0x1adb0

    if-ne v0, v1, :cond_a

    .line 5220
    const/4 v0, 0x0

    .line 5222
    :cond_a
    return v0
.end method

.method c()V
    .registers 8

    .prologue
    .line 4838
    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4880
    :cond_14
    :goto_14
    return-void

    .line 4844
    :cond_15
    new-instance v2, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4845
    iget-object v2, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4846
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4847
    .local v1, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 4848
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4849
    const-string v2, "device_token"

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4852
    :cond_56
    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4853
    .local v0, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v2, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/yunid/device/service/status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/baidu/sapi2/a$44;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/baidu/sapi2/a$44;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;)V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_14
.end method

.method c(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 8
    .param p1, "code"    # I
    .param p3, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5376
    .local p2, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    if-eqz p3, :cond_76

    .line 5377
    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    .line 5379
    .local v2, "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5380
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "displayname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 5381
    const-string v3, "uname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 5382
    const-string v3, "uid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 5383
    const-string v3, "bduss"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 5384
    const-string v3, "ptoken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 5385
    const-string v3, "stoken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 5386
    const-string v3, "newreg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    .line 5387
    iget-boolean v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v3, :cond_50

    .line 5388
    const-string v3, "authsid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    .line 5390
    :cond_50
    if-eqz p2, :cond_5e

    .line 5391
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_7c

    .line 5403
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 5416
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_5e
    :goto_5e
    return-void

    .line 5393
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :sswitch_5f
    invoke-interface {p2, v2}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_62} :catch_63

    goto :goto_5e

    .line 5406
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_63
    move-exception v0

    .line 5407
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_5e

    .line 5408
    const/16 v3, -0x64

    invoke-interface {p2, v3}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_5e

    .line 5399
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :sswitch_6c
    :try_start_6c
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_75} :catch_63

    goto :goto_5e

    .line 5412
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "response":Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
    :cond_76
    if-eqz p2, :cond_5e

    .line 5413
    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_5e

    .line 5391
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_5f
        0x2 -> :sswitch_6c
        0x10 -> :sswitch_6c
        0x2e640 -> :sswitch_6c
    .end sparse-switch
.end method

.method c(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 11
    .param p2, "forceRegToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4941
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4983
    :cond_14
    :goto_14
    return-void

    .line 4947
    :cond_15
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 4948
    if-eqz p1, :cond_14

    .line 4949
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_14

    .line 4954
    :cond_25
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 4955
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 4956
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4958
    .local v2, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4961
    .local v0, "deviceID":Ljava/lang/String;
    const-string v3, "ptpl"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4962
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4963
    const-string v3, "device_info"

    invoke-static {}, Lcom/baidu/sapi2/utils/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    const-string v3, "force_reg_token"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4966
    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 4968
    .local v1, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/yunid/device/forcereg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/a$47;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1}, Lcom/baidu/sapi2/a$47;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_14
.end method

.method d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .registers 11
    .param p2, "deviceToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    const/4 v3, 0x0

    .line 4991
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5032
    :cond_15
    :goto_15
    return v3

    .line 4997
    :cond_16
    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 4998
    if-eqz p1, :cond_15

    .line 4999
    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_15

    .line 5004
    :cond_26
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 5005
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 5006
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5007
    .local v2, "postParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/utils/d$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5010
    .local v0, "deviceID":Ljava/lang/String;
    const-string v3, "ptpl"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5011
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5012
    const-string v3, "device_token"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    const-string v3, "package_sign"

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5015
    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 5017
    .local v1, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    iget-object v3, p0, Lcom/baidu/sapi2/a;->d:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v4, p0, Lcom/baidu/sapi2/a;->c:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/yunid/device/login"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/a$48;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1}, Lcom/baidu/sapi2/a$48;-><init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    .line 5032
    const/4 v3, 0x1

    goto/16 :goto_15
.end method

.method e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/getpass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .registers 8
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5614
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5615
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v4, "errno"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5616
    .local v0, "code":I
    packed-switch v0, :pswitch_data_2c

    .line 5624
    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    .line 5629
    .end local v0    # "code":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_15
    return-void

    .line 5618
    .restart local v0    # "code":I
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :pswitch_16
    new-instance v3, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v3}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    .line 5619
    .local v3, "response":Lcom/baidu/sapi2/shell/response/SapiResponse;
    iput v0, v3, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    .line 5620
    const-string v4, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    iput-object v4, v3, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorMsg:Ljava/lang/String;

    .line 5621
    invoke-interface {p1, v3}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_15

    .line 5626
    .end local v0    # "code":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "response":Lcom/baidu/sapi2/shell/response/SapiResponse;
    :catch_25
    move-exception v1

    .line 5627
    .local v1, "e":Ljava/lang/Exception;
    const/16 v4, -0x64

    invoke-interface {p1, v4}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_15

    .line 5616
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/wappassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/recordindex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/?bindingaccount&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/?bindingret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/authwidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/unitewidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/filluname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/setportrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/getuinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/portrait/hotitemlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/a;->y()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/sethotitem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/ssologin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/ssologin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/startlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/afterauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/a;->e:Lcom/baidu/sapi2/a$a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/finishbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
