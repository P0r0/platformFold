.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/GnCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sendOperatorLog(Landroid/content/Context;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$callback:Lcom/gionee/gsp/GnCallbackListener;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$gnBaseService:Lcom/gionee/gsp/service/GnBaseService;

.field private final synthetic val$mSLogInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/GnCallbackListener;Lcom/gionee/gsp/service/GnBaseService;Landroid/content/Context;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$gnBaseService:Lcom/gionee/gsp/service/GnBaseService;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$mSLogInfoList:Ljava/util/List;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 301
    new-instance v1, Lcom/gionee/gsp/data/GnBaseAd;

    invoke-direct {v1}, Lcom/gionee/gsp/data/GnBaseAd;-><init>()V

    .line 303
    .local v1, "gnBaseAd":Lcom/gionee/gsp/data/GnBaseAd;
    :try_start_5
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getCommonParameters(Landroid/content/Context;)Ljava/util/Map;
    invoke-static {v4, v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$2(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 304
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "taskTag"

    const-string v5, "sendOperatorLog"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v3, "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "logValue"

    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$mSLogInfoList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_3f
    .catchall {:try_start_5 .. :try_end_24} :catchall_62

    .line 318
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printLocalServiceLog(Lcom/gionee/gsp/data/GnBaseAd;)V
    invoke-static {v4, v1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/data/GnBaseAd;)V

    .line 320
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    const-string v5, "sendOperatorLog"

    iget-object v6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$gnBaseService:Lcom/gionee/gsp/service/GnBaseService;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isNeedCallback(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z
    invoke-static {v4, v5, v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$1(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 321
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    iget v5, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    iget-object v6, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 324
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    return-void

    .line 314
    :catch_3f
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_40
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$context:Landroid/content/Context;

    sget v5, Lcom/gionee/gsp/result/GnResultCode;->UNKNOWN_ERROR:I

    invoke-static {v4, v1, v5, v0}, Lcom/gionee/gsp/result/GnResultCode;->addResult(Landroid/content/Context;Lcom/gionee/gsp/data/GnBaseAd;ILjava/lang/Exception;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_62

    .line 318
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printLocalServiceLog(Lcom/gionee/gsp/data/GnBaseAd;)V
    invoke-static {v4, v1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/data/GnBaseAd;)V

    .line 320
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    const-string v5, "sendOperatorLog"

    iget-object v6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$gnBaseService:Lcom/gionee/gsp/service/GnBaseService;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isNeedCallback(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z
    invoke-static {v4, v5, v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$1(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 321
    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    iget v5, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    iget-object v6, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_3e

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_62
    move-exception v4

    .line 318
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printLocalServiceLog(Lcom/gionee/gsp/data/GnBaseAd;)V
    invoke-static {v5, v1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/data/GnBaseAd;)V

    .line 320
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    const-string v6, "sendOperatorLog"

    iget-object v7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$gnBaseService:Lcom/gionee/gsp/service/GnBaseService;

    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isNeedCallback(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z
    invoke-static {v5, v6, v7}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$1(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 321
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;->val$callback:Lcom/gionee/gsp/GnCallbackListener;

    iget v6, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    iget-object v7, v1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 323
    :cond_7d
    throw v4
.end method
