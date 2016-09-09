.class Lcom/baidu/sapi2/a$18;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FillUserProfileCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/FillUserProfileResult;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Looper;Lcom/baidu/sapi2/callback/FillUserProfileCallback;Lcom/baidu/sapi2/result/FillUserProfileResult;Ljava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2613
    iput-object p1, p0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    iput-object p3, p0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iput-object p4, p0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    iput-object p5, p0, Lcom/baidu/sapi2/a$18;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2804
    iget-object v0, p0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2805
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFinish()V

    .line 2623
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onStart()V

    .line 2618
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 20
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 2628
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2629
    .local v5, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v7

    .line 2630
    .local v7, "resultCode":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v7}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2631
    sparse-switch v7, :sswitch_data_146

    .line 2792
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2799
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v7    # "resultCode":I
    :goto_26
    return-void

    .line 2633
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "resultCode":I
    :sswitch_27
    const-string v12, "sms"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2634
    .local v9, "smsDestination":Ljava/lang/String;
    const-string v12, "vcode"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2635
    .local v8, "smsCode":Ljava/lang/String;
    const-string v12, "upsmschannel"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2636
    .local v10, "statusChannelId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2637
    .local v11, "success":Z
    const-string v12, "android.permission.SEND_SMS"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/baidu/sapi2/utils/SapiUtils;->checkRequestPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 2639
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v12}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v12

    iget-object v12, v12, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v12, v8, v9}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 2641
    :cond_5a
    if-eqz v11, :cond_115

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_115

    .line 2642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    new-instance v13, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v13}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {v12, v13}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v12}, Lcom/baidu/sapi2/a;->e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->d(Lcom/baidu/sapi2/a;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2644
    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 2645
    .local v3, "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v12, "BAIDUID"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    .local v2, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v12, "baidu.com"

    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 2648
    const-string v12, "/"

    invoke-virtual {v2, v12}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v12}, Lcom/baidu/sapi2/a;->e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 2651
    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 2652
    .local v6, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v12, "channel_id"

    invoke-virtual {v6, v12, v10}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const-string v12, "callback"

    const-string v13, "p"

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const-string v12, "apiver"

    const-string v13, "v3"

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    const-string v12, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v12}, Lcom/baidu/sapi2/a;->e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v13}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v14, "https://passport.baidu.com/channel/unicast"

    new-instance v15, Lcom/baidu/sapi2/a$18$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1, v10, v8}, Lcom/baidu/sapi2/a$18$1;-><init>(Lcom/baidu/sapi2/a$18;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14, v6, v15}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_fc} :catch_fe

    goto/16 :goto_26

    .line 2795
    .end local v2    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v3    # "cookieStore":Lorg/apache/http/impl/client/BasicCookieStore;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    .end local v7    # "resultCode":I
    .end local v8    # "smsCode":Ljava/lang/String;
    .end local v9    # "smsDestination":Ljava/lang/String;
    .end local v10    # "statusChannelId":Ljava/lang/String;
    .end local v11    # "success":Z
    :catch_fe
    move-exception v4

    .line 2796
    .local v4, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v13, -0xca

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2797
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_26

    .line 2781
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "resultCode":I
    .restart local v8    # "smsCode":Ljava/lang/String;
    .restart local v9    # "smsDestination":Ljava/lang/String;
    .restart local v10    # "statusChannelId":Ljava/lang/String;
    .restart local v11    # "success":Z
    :cond_115
    :try_start_115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v13, -0xca

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_26

    .line 2786
    .end local v8    # "smsCode":Ljava/lang/String;
    .end local v9    # "smsDestination":Ljava/lang/String;
    .end local v10    # "statusChannelId":Ljava/lang/String;
    .end local v11    # "success":Z
    :sswitch_12b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onCompleteUser(Lcom/baidu/sapi2/result/FillUserProfileResult;)V

    goto/16 :goto_26

    .line 2789
    :sswitch_138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onBdussExpired(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_143} :catch_fe

    goto/16 :goto_26

    .line 2631
    nop

    :sswitch_data_146
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_138
        0xee4a -> :sswitch_12b
    .end sparse-switch
.end method
