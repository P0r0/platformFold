.class Lcom/baidu/sapi2/SapiWebView$24;
.super Ljava/lang/Thread;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiWebView;->loadXiaomiSSOLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;)V
    .registers 3

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$24;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 2469
    const/16 v21, 0x0

    .line 2470
    .local v21, "userID":Ljava/lang/String;
    const/4 v15, 0x0

    .line 2472
    .local v15, "phoneNum":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->a:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_ee

    .line 2478
    .local v19, "results":Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    new-instance v3, Lcom/baidu/sapi2/SapiWebView$24$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/baidu/sapi2/SapiWebView$24$1;-><init>(Lcom/baidu/sapi2/SapiWebView$24;)V

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    .line 2490
    if-eqz v19, :cond_1b3

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b3

    .line 2492
    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiAppID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "/user/profile"

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v17

    .line 2500
    .local v17, "profileFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    :try_start_50
    new-instance v14, Lorg/json/JSONObject;

    invoke-interface/range {v17 .. v17}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2501
    .local v14, "object":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2502
    .local v18, "result":Ljava/lang/String;
    const-string v2, "ok"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 2503
    const-string v2, "data"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2504
    .local v11, "data":Lorg/json/JSONObject;
    const-string v2, "userId"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_76} :catch_142

    move-result-object v21

    .line 2519
    .end local v11    # "data":Lorg/json/JSONObject;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v18    # "result":Ljava/lang/String;
    :cond_77
    :goto_77
    new-instance v2, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v4}, Lcom/baidu/sapi2/SapiWebView;->d(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiAppID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "/user/phone"

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->callOpenApi(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v16

    .line 2527
    .local v16, "phoneNumFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    :try_start_a4
    new-instance v14, Lorg/json/JSONObject;

    invoke-interface/range {v16 .. v16}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2528
    .restart local v14    # "object":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2529
    .restart local v18    # "result":Ljava/lang/String;
    const-string v2, "ok"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 2530
    const-string v2, "data"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2531
    .restart local v11    # "data":Lorg/json/JSONObject;
    const-string v2, "phone"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ca} :catch_19f

    move-result-object v15

    .line 2545
    .end local v11    # "data":Lorg/json/JSONObject;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v18    # "result":Ljava/lang/String;
    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v15}, Lcom/baidu/sapi2/SapiAccountService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2547
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2554
    .end local v16    # "phoneNumFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    .end local v17    # "profileFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    .end local v19    # "results":Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .end local v20    # "url":Ljava/lang/String;
    :goto_ed
    return-void

    .line 2473
    :catch_ee
    move-exception v13

    .line 2474
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    goto :goto_ed

    .line 2505
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v17    # "profileFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    .restart local v18    # "result":Ljava/lang/String;
    .restart local v19    # "results":Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    :cond_fa
    :try_start_fa
    const-string v2, "error"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2506
    const-string v2, "description"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2507
    .local v12, "description":Ljava/lang/String;
    const-string v2, "code"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2508
    .local v10, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_141} :catch_142

    goto :goto_ed

    .line 2513
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "description":Ljava/lang/String;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v18    # "result":Ljava/lang/String;
    :catch_142
    move-exception v13

    .line 2514
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2516
    invoke-static {v13}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_77

    .line 2532
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v16    # "phoneNumFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    .restart local v18    # "result":Ljava/lang/String;
    :cond_156
    :try_start_156
    const-string v2, "error"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 2533
    const-string v2, "description"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2534
    .restart local v12    # "description":Ljava/lang/String;
    const-string v2, "code"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2535
    .restart local v10    # "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_19d} :catch_19f

    goto/16 :goto_ed

    .line 2540
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "description":Ljava/lang/String;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v18    # "result":Ljava/lang/String;
    :catch_19f
    move-exception v13

    .line 2541
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    .line 2543
    invoke-static {v13}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_cb

    .line 2550
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "phoneNumFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    .end local v17    # "profileFuture":Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;, "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<Ljava/lang/String;>;"
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView;->I(Lcom/baidu/sapi2/SapiWebView;)V

    .line 2551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiWebView$24;->b:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiWebView;->finish()V

    goto/16 :goto_ed
.end method
