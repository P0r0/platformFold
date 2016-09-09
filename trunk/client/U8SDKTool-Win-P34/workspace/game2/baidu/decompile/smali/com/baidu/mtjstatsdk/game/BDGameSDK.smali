.class public Lcom/baidu/mtjstatsdk/game/BDGameSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 2

    .prologue
    .line 314
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 319
    :goto_4
    return-void

    .line 318
    :cond_5
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->doDataAnalyze(Landroid/content/Context;)V

    goto :goto_4
.end method

.method public static initGame(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    if-eqz p0, :cond_8

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a:Landroid/content/Context;

    .line 35
    :cond_8
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    new-instance v1, Lcom/baidu/mtjstatsdk/ci;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/ci;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/DataCore;->setGameSDKListener(Lcom/baidu/mtjstatsdk/GameSDKListener;)V

    .line 43
    return-void
.end method

.method public static onPurchase(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 234
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a()V

    .line 235
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onPurchase(Ljava/lang/String;IILjava/lang/String;)V

    .line 236
    return-void
.end method

.method public static onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;)V
    .registers 17

    .prologue
    .line 205
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a()V

    .line 206
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public static onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 218
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 310
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskEnd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public static onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 290
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a()V

    .line 291
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskEnd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public static onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 270
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a()V

    .line 271
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onTaskStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public static onUse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 250
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->a()V

    .line 251
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->onUse(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    return-void
.end method

.method public static setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 73
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 88
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static setAccountType(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 103
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAccountType(Landroid/content/Context;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public static setAge(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 151
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setAge(Landroid/content/Context;ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setGender(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 136
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setGender(Landroid/content/Context;ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public static setLevel(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 117
    if-gez p1, :cond_13

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "setLevel\u63a5\u53e3\u53c2\u6570\uff0clevel\u7684\u503c\u5fc5\u987b\u662f0-100\u4e4b\u95f4\u7684\u6570\u5b57"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    .line 122
    :goto_12
    return-void

    .line 121
    :cond_13
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setLevel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_12
.end method

.method public static setOn(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 53
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    .line 54
    invoke-static {}, Lcom/baidu/mtjstatsdk/bp;->a()Lcom/baidu/mtjstatsdk/bp;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/mtjstatsdk/bp;->openExceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setExceptionTurn(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    :cond_17
    return-void
.end method

.method public static setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
