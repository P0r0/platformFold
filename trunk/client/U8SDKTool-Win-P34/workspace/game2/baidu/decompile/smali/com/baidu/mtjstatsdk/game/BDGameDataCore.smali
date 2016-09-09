.class public Lcom/baidu/mtjstatsdk/game/BDGameDataCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/game/BDGameDataObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GameDataThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    .line 40
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;
    .registers 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    .line 50
    if-nez v0, :cond_22

    .line 51
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    .line 53
    if-nez v0, :cond_21

    .line 54
    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_21
    monitor-exit v1

    .line 60
    :cond_22
    return-object v0

    .line 57
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0
.end method

.method public static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;
    .registers 4

    .prologue
    .line 43
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    monitor-enter v1

    .line 44
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static instance()Lcom/baidu/mtjstatsdk/game/BDGameDataCore;
    .registers 2

    .prologue
    .line 19
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    if-nez v0, :cond_13

    .line 20
    const-class v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    monitor-enter v1

    .line 21
    :try_start_7
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    if-nez v0, :cond_12

    .line 22
    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    .line 24
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 27
    :cond_13
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    return-object v0

    .line 24
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method protected initGameSDK(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 64
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    :cond_8
    :goto_8
    return-void

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bq;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mtjstatsdk/bq;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method protected onPurchase(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-ltz p2, :cond_d

    if-gez p3, :cond_21

    .line 318
    :cond_d
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 319
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "onPurchase called failed, please check your parameters"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 340
    :cond_20
    :goto_20
    return-void

    .line 324
    :cond_21
    invoke-direct {p0, p4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v2

    .line 325
    if-nez v2, :cond_3b

    .line 326
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 327
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "Please set account Id first."

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_20

    .line 332
    :cond_3b
    iget-object v6, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/bs;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/bs;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method protected onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;)V
    .registers 21

    .prologue
    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 260
    :cond_c
    invoke-static/range {p7 .. p7}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 261
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "on charge request, the forward two parameters orderId and Iapid can not be nil"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 288
    :cond_22
    :goto_22
    return-void

    .line 265
    :cond_23
    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_2b

    if-gez p5, :cond_42

    .line 266
    :cond_2b
    invoke-static/range {p7 .. p7}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 267
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "on charge request, the center two parameters amount and virtualAmount can not be nil"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_22

    .line 272
    :cond_42
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v5

    .line 273
    if-nez v5, :cond_61

    .line 274
    invoke-static/range {p7 .. p7}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 275
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Please set account Id first."

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_22

    .line 280
    :cond_61
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mtjstatsdk/cd;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/baidu/mtjstatsdk/cd;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;Ljava/lang/String;DII)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22
.end method

.method protected onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    if-nez p1, :cond_19

    .line 292
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 293
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "on charge request, the forward two parameters orderId and Iapid can not be nil"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 314
    :cond_18
    :goto_18
    return-void

    .line 298
    :cond_19
    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v0

    .line 299
    if-nez v0, :cond_33

    .line 300
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 301
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "Please set account Id first."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_18

    .line 306
    :cond_33
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mtjstatsdk/br;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/mtjstatsdk/br;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method public onTaskEnd(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 395
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 396
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "on task failed, taskId can\'t be null"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 416
    :cond_1c
    :goto_1c
    return-void

    .line 401
    :cond_1d
    invoke-direct {p0, p4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v2

    .line 402
    if-nez v2, :cond_37

    .line 403
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 404
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "Please set account Id first."

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_1c

    .line 409
    :cond_37
    iget-object v6, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/bv;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/bv;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method

.method public onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 370
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 371
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "on task fail, taskId can\'t be null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 391
    :cond_1c
    :goto_1c
    return-void

    .line 376
    :cond_1d
    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v0

    .line 377
    if-nez v0, :cond_37

    .line 378
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 379
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "Please set account Id first."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_1c

    .line 384
    :cond_37
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mtjstatsdk/bu;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/mtjstatsdk/bu;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method

.method protected onUse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-gez p2, :cond_1f

    .line 344
    :cond_b
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 345
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "onUse called failed, please check your parameters"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 366
    :cond_1e
    :goto_1e
    return-void

    .line 350
    :cond_1f
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    move-result-object v0

    .line 351
    if-nez v0, :cond_39

    .line 352
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 353
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "Please set account Id first."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_1e

    .line 358
    :cond_39
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mtjstatsdk/bt;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/baidu/mtjstatsdk/bt;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method protected setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 89
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "The account that you have been set is null or empty, please check it."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 104
    :cond_1c
    :goto_1c
    return-void

    .line 96
    :cond_1d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bw;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/bw;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method

.method protected setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 114
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 115
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 116
    const-string v0, "statsdk"

    const-string v1, "The account that you have been set is null or empty."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_13
    :goto_13
    return-void

    .line 122
    :cond_14
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bx;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/bx;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method protected setAccountType(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 139
    if-gez p2, :cond_10

    .line 140
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    const-string v0, "statsdk"

    const-string v1, "account type that you set is not right"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_f
    :goto_f
    return-void

    .line 147
    :cond_10
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/by;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/by;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method protected setAge(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 215
    if-gez p2, :cond_10

    .line 216
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 217
    const-string v0, "statsdk"

    const-string v1, "Age that you set is not right"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_f
    :goto_f
    return-void

    .line 223
    :cond_10
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/cb;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/cb;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method protected setGender(Landroid/content/Context;ILjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 189
    if-eq p2, v3, :cond_1b

    if-eq p2, v1, :cond_1b

    .line 190
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 191
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "Gender that you set is not right"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    .line 205
    :cond_1a
    :goto_1a
    return-void

    .line 197
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/ca;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/ca;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a
.end method

.method protected setLevel(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 164
    if-ltz p2, :cond_6

    const/16 v0, 0x3e8

    if-le p2, v0, :cond_14

    .line 165
    :cond_6
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 166
    const-string v0, "statsdk"

    const-string v1, "Level range is 1 - 1000."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_13
    :goto_13
    return-void

    .line 172
    :cond_14
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bz;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/bz;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method protected setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 241
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 242
    const-string v0, "statsdk"

    const-string v1, "server that you set is null"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_13
    :goto_13
    return-void

    .line 248
    :cond_14
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/cc;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/mtjstatsdk/cc;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method
