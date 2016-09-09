.class public Lcom/baidu/mtjstatsdk/game/BDGameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/cj;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/cn;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/baidu/mtjstatsdk/cf;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c:I

    .line 34
    iput v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->f:I

    .line 40
    iput v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->g:I

    .line 49
    iput-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    .line 50
    iput-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/cj;
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a()V

    .line 64
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cj;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    if-nez v0, :cond_1e

    .line 74
    monitor-enter p0

    .line 75
    :try_start_5
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    if-nez v0, :cond_1d

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_1d

    .line 78
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/cf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    :cond_1d
    monitor-exit p0

    .line 83
    :cond_1e
    return-void

    .line 81
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mtjstatsdk/cj;)V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a()V

    .line 59
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mtjstatsdk/cn;)V
    .registers 4

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b()V

    .line 87
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_63

    .line 328
    :try_start_4
    const-string v0, "chg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 329
    const-string v0, "chg"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    :cond_16
    const-string v0, "pch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 333
    const-string v0, "pch"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    :cond_28
    const-string v0, "use"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 337
    const-string v0, "use"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    :cond_3a
    const-string v0, "lev"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 342
    const-string v0, "lev"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    :cond_4c
    const-string v0, "tsk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 347
    const-string v0, "tsk"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    :cond_5e
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    invoke-interface {v0, p1}, Lcom/baidu/mtjstatsdk/cf;->a(Lorg/json/JSONObject;)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_63} :catch_64

    .line 357
    :cond_63
    :goto_63
    return-void

    .line 352
    :catch_64
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_63
.end method

.method private b()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    if-nez v0, :cond_1e

    .line 102
    monitor-enter p0

    .line 103
    :try_start_5
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    if-nez v0, :cond_1d

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    .line 105
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_1d

    .line 106
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/cf;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    :cond_1d
    monitor-exit p0

    .line 111
    :cond_1e
    return-void

    .line 109
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a()V

    .line 69
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/cn;
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b()V

    .line 92
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cn;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_11

    .line 280
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_11

    .line 282
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/baidu/mtjstatsdk/cf;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 285
    :cond_11
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 304
    :cond_4
    :goto_4
    return-void

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    .line 294
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cj;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cj;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 298
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16

    .line 301
    :cond_30
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/cf;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_4
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b()V

    .line 97
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 323
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    .line 313
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 314
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/cn;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cn;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 317
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_16

    .line 320
    :cond_30
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mtjstatsdk/cf;->b(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_4
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;
    .registers 2

    .prologue
    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 383
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->fromJSON(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_e} :catch_10

    move-result-object v0

    .line 389
    :goto_f
    return-object v0

    .line 384
    :catch_10
    move-exception v0

    .line 385
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 389
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/baidu/mtjstatsdk/game/BDGameInfo;
    .registers 9

    .prologue
    .line 394
    :try_start_0
    const-string v0, "d"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    const-string v0, "n"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 397
    const-string v0, "g"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 398
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 400
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 401
    const-string v0, "v"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 403
    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;-><init>()V

    .line 404
    iput-object v1, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    .line 405
    iput-object v2, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b:Ljava/lang/String;

    .line 406
    iput v3, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c:I

    .line 407
    iput v4, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->f:I

    .line 408
    iput v5, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->g:I

    .line 409
    iput v6, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    .line 410
    iput-object v7, v0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 417
    :goto_3d
    return-object v0

    .line 413
    :catch_3e
    move-exception v0

    .line 414
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 417
    const/4 v0, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public onChargeRequest(Ljava/lang/String;Ljava/lang/String;DII)V
    .registers 18

    .prologue
    .line 185
    new-instance v1, Lcom/baidu/mtjstatsdk/cj;

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    iget v9, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mtjstatsdk/cj;-><init>(Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;I)V

    .line 188
    invoke-direct {p0, p1, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Ljava/lang/String;Lcom/baidu/mtjstatsdk/cj;)V

    .line 190
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d()V

    .line 191
    return-void
.end method

.method public onChargeSuccess(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/cj;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_2a

    .line 196
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cj;->b()V

    .line 199
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d()V

    .line 201
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_2a

    .line 204
    :try_start_15
    const-string v2, "chg"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cj;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    invoke-direct {p0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2a} :catch_2b

    .line 211
    :cond_2a
    :goto_2a
    return-void

    .line 206
    :catch_2b
    move-exception v0

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2a
.end method

.method public onLevelUp(IZ)V
    .registers 8

    .prologue
    .line 138
    if-ltz p1, :cond_30

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_30

    .line 139
    iput p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    .line 141
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 143
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_30

    .line 146
    :try_start_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 147
    new-instance v2, Lcom/baidu/mtjstatsdk/cm;

    iget v3, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/baidu/mtjstatsdk/cm;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/cm;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    const-string v2, "lev"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    if-eqz p2, :cond_30

    .line 151
    invoke-direct {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_30} :catch_31

    .line 158
    :cond_30
    :goto_30
    return-void

    .line 153
    :catch_31
    move-exception v0

    .line 154
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_30
.end method

.method public onPurchase(Ljava/lang/String;II)V
    .registers 12

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_26

    .line 217
    :try_start_6
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 218
    new-instance v0, Lcom/baidu/mtjstatsdk/ck;

    iget-object v4, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/ck;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/ck;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 219
    const-string v0, "pch"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-direct {p0, v6}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_26} :catch_27

    .line 225
    :cond_26
    :goto_26
    return-void

    .line 221
    :catch_27
    move-exception v0

    .line 222
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_26
.end method

.method public onTaskEnd(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/cn;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_2a

    .line 261
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p2, p3}, Lcom/baidu/mtjstatsdk/cn;->a(ZLjava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e()V

    .line 266
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_2a

    .line 269
    :try_start_15
    const-string v2, "tsk"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cn;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    invoke-direct {p0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2a} :catch_2b

    .line 276
    :cond_2a
    :goto_2a
    return-void

    .line 271
    :catch_2b
    move-exception v0

    .line 272
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2a
.end method

.method public onTaskStart(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 242
    new-instance v0, Lcom/baidu/mtjstatsdk/cn;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    invoke-direct {v0, p1, v1, v2}, Lcom/baidu/mtjstatsdk/cn;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Ljava/lang/String;Lcom/baidu/mtjstatsdk/cn;)V

    .line 245
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e()V

    .line 247
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_2a

    .line 250
    :try_start_15
    const-string v2, "tsk"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cn;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-direct {p0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_2a} :catch_2b

    .line 256
    :cond_2a
    :goto_2a
    return-void

    .line 252
    :catch_2b
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2a
.end method

.method public onUse(Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_23

    .line 231
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 232
    new-instance v2, Lcom/baidu/mtjstatsdk/cl;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    iget v4, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/baidu/mtjstatsdk/cl;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v2}, Lcom/baidu/mtjstatsdk/cl;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    const-string v2, "use"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    invoke-direct {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a(Lorg/json/JSONObject;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_23} :catch_24

    .line 239
    :cond_23
    :goto_23
    return-void

    .line 235
    :catch_24
    move-exception v0

    .line 236
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_23
.end method

.method public setAccountAge(I)V
    .registers 3

    .prologue
    .line 130
    if-ltz p1, :cond_b

    const/16 v0, 0x64

    if-gt p1, v0, :cond_b

    .line 131
    iput p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c:I

    .line 133
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 135
    :cond_b
    return-void
.end method

.method public setAccountGender(I)V
    .registers 3

    .prologue
    .line 169
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 170
    :cond_6
    iput p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->f:I

    .line 172
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 174
    :cond_b
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 115
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 119
    :cond_b
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 122
    if-eqz p1, :cond_7

    .line 123
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 127
    :cond_7
    return-void
.end method

.method public setAccountServer(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 162
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 166
    :cond_b
    return-void
.end method

.method public setAccountType(I)V
    .registers 2

    .prologue
    .line 177
    if-ltz p1, :cond_7

    .line 178
    iput p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->g:I

    .line 180
    invoke-direct {p0}, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c()V

    .line 182
    :cond_7
    return-void
.end method

.method public setCallback(Lcom/baidu/mtjstatsdk/cf;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->j:Lcom/baidu/mtjstatsdk/cf;

    .line 55
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 361
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 363
    const-string v1, "d"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "n"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v1, "a"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    const-string v1, "g"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    const-string v1, "t"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    const-string v1, "l"

    iget v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string v1, "v"

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/game/BDGameInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_36} :catch_37

    .line 377
    :goto_36
    return-object v0

    .line 373
    :catch_37
    move-exception v0

    .line 374
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 377
    const/4 v0, 0x0

    goto :goto_36
.end method
