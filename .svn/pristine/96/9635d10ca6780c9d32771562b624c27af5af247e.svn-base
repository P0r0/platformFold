.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 2220
    const-string v16, ""

    .line 2221
    .local v16, "updateInfo":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2224
    .local v8, "exception":Ljava/lang/Exception;
    :try_start_3
    sget-object v18, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    .line 2225
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2226
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    const/4 v10, 0x0

    .line 2227
    .local v10, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_34

    .line 2235
    :goto_14
    invoke-static {v10}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 2236
    new-instance v18, Lcom/gionee/gsp/GnException;

    const-string v19, "\u65e0\u6cd5\u8bfbassets\u53d6\u914d\u7f6e\u6587\u4ef6"

    invoke-direct/range {v18 .. v19}, Lcom/gionee/gsp/GnException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_22
    .catch Lcom/gionee/gsp/GnException; {:try_start_3 .. :try_end_22} :catch_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_171
    .catchall {:try_start_3 .. :try_end_22} :catchall_1ab

    .line 2268
    .end local v10    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :catch_22
    move-exception v5

    .line 2269
    .local v5, "e":Lcom/gionee/gsp/GnException;
    move-object v8, v5

    .line 2270
    :try_start_24
    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_1ab

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->isCancel()Z

    move-result v18

    if-eqz v18, :cond_152

    .line 2300
    .end local v5    # "e":Lcom/gionee/gsp/GnException;
    :cond_33
    :goto_33
    return-void

    .line 2228
    .restart local v10    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :cond_34
    :try_start_34
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2229
    .local v6, "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 2230
    .local v15, "temp":Lcom/gionee/gsp/data/GnComponentConfigData;
    const-string v18, "com.gionee.gsp"

    iget-object v0, v15, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2231
    move-object v10, v15

    .line 2232
    goto :goto_14

    .line 2238
    .end local v6    # "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .end local v15    # "temp":Lcom/gionee/gsp/data/GnComponentConfigData;
    :cond_4e
    const/4 v11, 0x0

    .line 2239
    .local v11, "gnHttpRespons":Lcom/gionee/gsp/util/GnHttpRespons;
    iget-object v14, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->product:Ljava/lang/String;

    .line 2241
    .local v14, "product":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    .line 2242
    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2241
    invoke-static/range {v18 .. v19}, Lcom/gionee/gsp/util/GnCommonUtil;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2243
    .local v17, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;

    move-object/from16 v18, v0

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getCommonParameters(Landroid/content/Context;)Ljava/util/Map;
    invoke-static/range {v18 .. v19}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$2(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v13

    .line 2244
    .local v13, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "taskTag"

    const-string v19, "checkUpgrade.do"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    const-string v18, "product"

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    const-string v18, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->rom:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a5

    .line 2250
    const-string v18, "rom"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :cond_a5
    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->model:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_bc

    .line 2253
    const-string v18, "model"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getModel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    :cond_bc
    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->platform:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d3

    .line 2256
    const-string v18, "platform"

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getPlatform()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    :cond_d3
    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->md5:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_ee

    .line 2259
    const-string v18, "md5"

    iget-object v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->md5:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    :cond_ee
    iget-boolean v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    move/from16 v18, v0

    if-eqz v18, :cond_105

    .line 2262
    const-string v18, "test"

    iget-boolean v0, v10, Lcom/gionee/gsp/data/GnComponentConfigData;->test:Z

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;

    move-object/from16 v18, v0

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static/range {v18 .. v18}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/gionee/gsp/util/GnHttpRequester;->sendGet(Landroid/content/Context;Ljava/util/Map;)Lcom/gionee/gsp/util/GnHttpRespons;

    move-result-object v11

    .line 2266
    iget-object v0, v11, Lcom/gionee/gsp/util/GnHttpRespons;->content:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_127
    .catch Lcom/gionee/gsp/GnException; {:try_start_34 .. :try_end_127} :catch_22
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_127} :catch_171
    .catchall {:try_start_34 .. :try_end_127} :catchall_1ab

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->isCancel()Z

    move-result v18

    if-nez v18, :cond_33

    .line 2280
    move-object v3, v8

    .line 2281
    .local v3, "callbackException":Ljava/lang/Object;
    move-object/from16 v4, v16

    .line 2282
    .local v4, "callbackUpdateInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    new-instance v19, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_33

    .line 2280
    .end local v3    # "callbackException":Ljava/lang/Object;
    .end local v4    # "callbackUpdateInfo":Ljava/lang/String;
    .end local v10    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v11    # "gnHttpRespons":Lcom/gionee/gsp/util/GnHttpRespons;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    .end local v13    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "product":Ljava/lang/String;
    .end local v17    # "version":Ljava/lang/String;
    .restart local v5    # "e":Lcom/gionee/gsp/GnException;
    :cond_152
    move-object v3, v8

    .line 2281
    .local v3, "callbackException":Ljava/lang/Exception;
    move-object/from16 v4, v16

    .line 2282
    .restart local v4    # "callbackUpdateInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    new-instance v19, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_33

    .line 2271
    .end local v3    # "callbackException":Ljava/lang/Exception;
    .end local v4    # "callbackUpdateInfo":Ljava/lang/String;
    .end local v5    # "e":Lcom/gionee/gsp/GnException;
    :catch_171
    move-exception v5

    .line 2272
    .local v5, "e":Ljava/lang/Exception;
    :try_start_172
    invoke-static {v5}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    .line 2273
    const-string v7, "\u7f51\u7edc\u5f02\u5e38\uff0c\u65e0\u6cd5\u8fde\u63a5\u4e0b\u8f7d\u670d\u52a1\u5668"

    .line 2274
    .local v7, "errorMessage":Ljava/lang/String;
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_17c
    .catchall {:try_start_172 .. :try_end_17c} :catchall_1ab

    .line 2277
    .end local v8    # "exception":Ljava/lang/Exception;
    .local v9, "exception":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->isCancel()Z

    move-result v18

    if-eqz v18, :cond_18b

    move-object v8, v9

    .line 2278
    .end local v9    # "exception":Ljava/lang/Exception;
    .restart local v8    # "exception":Ljava/lang/Exception;
    goto/16 :goto_33

    .line 2280
    .end local v8    # "exception":Ljava/lang/Exception;
    .restart local v9    # "exception":Ljava/lang/Exception;
    :cond_18b
    move-object v3, v9

    .line 2281
    .restart local v3    # "callbackException":Ljava/lang/Exception;
    move-object/from16 v4, v16

    .line 2282
    .restart local v4    # "callbackUpdateInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v18, v0

    new-instance v19, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v8, v9

    .end local v9    # "exception":Ljava/lang/Exception;
    .restart local v8    # "exception":Ljava/lang/Exception;
    goto/16 :goto_33

    .line 2275
    .end local v3    # "callbackException":Ljava/lang/Exception;
    .end local v4    # "callbackUpdateInfo":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :catchall_1ab
    move-exception v18

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->isCancel()Z

    move-result v19

    if-nez v19, :cond_33

    .line 2280
    move-object v3, v8

    .line 2281
    .restart local v3    # "callbackException":Ljava/lang/Exception;
    move-object/from16 v4, v16

    .line 2282
    .restart local v4    # "callbackUpdateInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v20, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2299
    throw v18
.end method
