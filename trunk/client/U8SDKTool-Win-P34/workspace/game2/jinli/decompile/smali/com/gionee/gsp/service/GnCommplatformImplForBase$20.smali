.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->createOrder(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

.field private final synthetic val$rsaPrivate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$rsaPrivate:Ljava/lang/String;

    .line 2475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 2478
    const/16 v24, 0x0

    .line 2479
    .local v24, "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    const/16 v22, 0x0

    .line 2480
    .local v22, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    invoke-virtual {v2}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->getCreateOrderForStandalone()Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    move-result-object v26

    .line 2482
    .local v26, "order":Lcom/gionee/gsp/standalone/CreateOrderForStandalone;
    :try_start_c
    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getSubmitTime()Ljava/lang/String;

    move-result-object v11

    .line 2483
    .local v11, "submitTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$rsaPrivate:Ljava/lang/String;

    .line 2484
    sget-object v4, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->getOutOrderNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->getSubject()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 2485
    invoke-virtual/range {v26 .. v26}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->getTotalFee()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->getTotalFee()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2486
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 2483
    invoke-static/range {v2 .. v18}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getOrderByNoAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2488
    .local v19, "createOrderResult":Ljava/lang/String;
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v27, "orderJO":Lorg/json/JSONObject;
    const-string v2, "200010000"

    const-string v3, "status"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2491
    new-instance v25, Lcom/gionee/gsp/GnOrderInfo;

    invoke-virtual/range {v26 .. v26}, Lcom/gionee/gsp/standalone/CreateOrderForStandalone;->getOutOrderNo()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v11}, Lcom/gionee/gsp/GnOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Lcom/gionee/gsp/GnException; {:try_start_c .. :try_end_60} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_60} :catch_9a
    .catchall {:try_start_c .. :try_end_60} :catchall_c7

    .line 2514
    .end local v24    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    .local v25, "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    invoke-static/range {v22 .. v22}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onError(Ljava/lang/Exception;)V

    move-object/from16 v24, v25

    .line 2520
    .end local v11    # "submitTime":Ljava/lang/String;
    .end local v19    # "createOrderResult":Ljava/lang/String;
    .end local v25    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    .end local v27    # "orderJO":Lorg/json/JSONObject;
    .restart local v24    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    :goto_71
    return-void

    .line 2493
    .restart local v11    # "submitTime":Ljava/lang/String;
    .restart local v19    # "createOrderResult":Ljava/lang/String;
    .restart local v27    # "orderJO":Lorg/json/JSONObject;
    :cond_72
    :try_start_72
    new-instance v2, Lcom/gionee/gsp/GnException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catch Lcom/gionee/gsp/GnException; {:try_start_72 .. :try_end_7a} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_9a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_c7

    .line 2495
    .end local v11    # "submitTime":Ljava/lang/String;
    .end local v19    # "createOrderResult":Ljava/lang/String;
    .end local v27    # "orderJO":Lorg/json/JSONObject;
    :catch_7a
    move-exception v20

    .line 2496
    .local v20, "e":Lcom/gionee/gsp/GnException;
    :try_start_7b
    invoke-virtual/range {v20 .. v20}, Lcom/gionee/gsp/GnException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_c7

    .line 2497
    move-object/from16 v22, v20

    .line 2514
    invoke-static/range {v22 .. v22}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onError(Ljava/lang/Exception;)V

    goto :goto_71

    .line 2518
    :cond_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onComplete(Lcom/gionee/gsp/GnOrderInfo;)V

    goto :goto_71

    .line 2498
    .end local v20    # "e":Lcom/gionee/gsp/GnException;
    :catch_9a
    move-exception v20

    .line 2499
    .local v20, "e":Ljava/lang/Exception;
    :try_start_9b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 2511
    const-string v21, "\u7f51\u7edc\u5f02\u5e38"

    .line 2512
    .local v21, "errorMessage":Ljava/lang/String;
    new-instance v23, Ljava/lang/Exception;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_c7

    .line 2514
    .end local v22    # "exception":Ljava/lang/Exception;
    .local v23, "exception":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onError(Ljava/lang/Exception;)V

    move-object/from16 v22, v23

    .line 2516
    .end local v23    # "exception":Ljava/lang/Exception;
    .restart local v22    # "exception":Ljava/lang/Exception;
    goto :goto_71

    .line 2518
    .end local v22    # "exception":Ljava/lang/Exception;
    .restart local v23    # "exception":Ljava/lang/Exception;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onComplete(Lcom/gionee/gsp/GnOrderInfo;)V

    move-object/from16 v22, v23

    .end local v23    # "exception":Ljava/lang/Exception;
    .restart local v22    # "exception":Ljava/lang/Exception;
    goto :goto_71

    .line 2513
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "errorMessage":Ljava/lang/String;
    :catchall_c7
    move-exception v2

    .line 2514
    invoke-static/range {v22 .. v22}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 2515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onError(Ljava/lang/Exception;)V

    goto :goto_71

    .line 2518
    :cond_d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onComplete(Lcom/gionee/gsp/GnOrderInfo;)V

    .line 2519
    throw v2

    .line 2518
    .end local v24    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    .restart local v11    # "submitTime":Ljava/lang/String;
    .restart local v19    # "createOrderResult":Ljava/lang/String;
    .restart local v25    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    .restart local v27    # "orderJO":Lorg/json/JSONObject;
    :cond_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;->val$gnCreateOrderListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;->onComplete(Lcom/gionee/gsp/GnOrderInfo;)V

    move-object/from16 v24, v25

    .end local v25    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    .restart local v24    # "gnOrderInfo":Lcom/gionee/gsp/GnOrderInfo;
    goto :goto_71
.end method
