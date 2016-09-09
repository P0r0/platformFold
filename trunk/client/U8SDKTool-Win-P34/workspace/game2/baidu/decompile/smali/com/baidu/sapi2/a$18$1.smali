.class Lcom/baidu/sapi2/a$18$1;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a$18;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/a$18;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a$18;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iput-object p3, p0, Lcom/baidu/sapi2/a$18$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/a$18$1;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v0, v0, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2777
    iget-object v0, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v0, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v1, v1, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2778
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v0, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFinish()V

    .line 2668
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v0, v0, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    invoke-virtual {v0}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onStart()V

    .line 2663
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 16
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 2672
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2673
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v8, -0xca

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2674
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 2772
    :goto_1a
    return-void

    .line 2677
    :cond_1b
    const-string v7, "("

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2678
    .local v1, "dataStart":I
    const-string v7, ")"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2679
    .local v0, "dataEnd":I
    if-ltz v1, :cond_139

    .line 2681
    add-int/lit8 v7, v1, 0x1

    :try_start_2b
    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2682
    .local v3, "jsonData":Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-virtual {v7, v3}, Lcom/baidu/sapi2/a;->b(Ljava/lang/String;)I

    move-result v5

    .line 2683
    .local v5, "resultCode":I
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v5}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2684
    packed-switch v5, :pswitch_data_150

    .line 2760
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_4c} :catch_4d

    goto :goto_1a

    .line 2763
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v5    # "resultCode":I
    :catch_4d
    move-exception v2

    .line 2764
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2765
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v8, -0xca

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2766
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto :goto_1a

    .line 2686
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "jsonData":Ljava/lang/String;
    .restart local v5    # "resultCode":I
    :pswitch_66
    :try_start_66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2687
    .local v4, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "appid"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    const-string v7, "tpl"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2689
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v7}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v7

    iget-object v7, v7, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 2690
    const-string v7, "clientid"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    :cond_a8
    const-string v7, "upsmschannel"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->a:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    const-string v7, "bduss"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->c:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    const-string v7, "vcode"

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->b:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-static {v7, v4, v8}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2696
    .local v6, "sig":Ljava/lang/String;
    const-string v7, "sig"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    new-instance v8, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    invoke-static {v7, v8}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    .line 2699
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v7}, Lcom/baidu/sapi2/a;->e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->d(Lcom/baidu/sapi2/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 2700
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v7}, Lcom/baidu/sapi2/a;->e(Lcom/baidu/sapi2/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v8}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v8

    iget-object v8, v8, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v10, v10, Lcom/baidu/sapi2/a$18;->d:Lcom/baidu/sapi2/a;

    invoke-static {v10}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/a;)Lcom/baidu/sapi2/a$a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/sapi2/a$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/v2/security/sapibindwidgetbind"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v10, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    new-instance v11, Lcom/baidu/sapi2/a$18$1$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lcom/baidu/sapi2/a$18$1$1;-><init>(Lcom/baidu/sapi2/a$18$1;Landroid/os/Looper;)V

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_137} :catch_4d

    goto/16 :goto_1a

    .line 2769
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v4    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultCode":I
    .end local v6    # "sig":Ljava/lang/String;
    :cond_139
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    const/16 v8, -0xca

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/result/FillUserProfileResult;->setResultCode(I)V

    .line 2770
    iget-object v7, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v7, v7, Lcom/baidu/sapi2/a$18;->a:Lcom/baidu/sapi2/callback/FillUserProfileCallback;

    iget-object v8, p0, Lcom/baidu/sapi2/a$18$1;->c:Lcom/baidu/sapi2/a$18;

    iget-object v8, v8, Lcom/baidu/sapi2/a$18;->b:Lcom/baidu/sapi2/result/FillUserProfileResult;

    invoke-virtual {v7, v8}, Lcom/baidu/sapi2/callback/FillUserProfileCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    goto/16 :goto_1a

    .line 2684
    nop

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_66
    .end packed-switch
.end method
