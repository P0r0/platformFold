.class public Lcom/baidu/mtjstatsdk/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bplus/IBPStretegyController;


# static fields
.field public static instance:Lcom/baidu/mtjstatsdk/am;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lcom/baidu/mtjstatsdk/am;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/am;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/am;->instance:Lcom/baidu/mtjstatsdk/am;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 50
    const-string v0, "BPlus"

    const-string v1, "collectAPWithStretegy 1"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->a:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;)J

    move-result-wide v2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 54
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->d()I

    move-result v1

    int-to-long v6, v1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": last time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; time interval: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 58
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_50

    sub-long v2, v4, v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_5f

    .line 59
    :cond_50
    const-string v1, "BPlus"

    const-string v2, "collectAPWithStretegy 2"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/x;->a(Landroid/content/Context;)V

    .line 62
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->a:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;J)V

    .line 64
    :cond_5f
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    :try_start_6
    const-string v1, "he"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_12} :catch_42

    move-result v1

    .line 257
    add-int/2addr v0, v1

    move v1, v0

    .line 265
    :goto_15
    const-string v0, "BPlus"

    const-string v3, "APP_CHANGE"

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, Lcom/baidu/mtjstatsdk/af;->d:Lcom/baidu/mtjstatsdk/af;

    const/16 v3, 0x2000

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 267
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    const-string v5, "BPlus"

    invoke-static {v5, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    .line 258
    :catch_42
    move-exception v1

    .line 259
    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    move v1, v0

    goto :goto_15

    .line 273
    :cond_48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5c

    .line 275
    :try_start_4e
    const-string v0, "app_change"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5a} :catch_89

    move-result v0

    .line 278
    add-int/2addr v1, v0

    .line 284
    :cond_5c
    :goto_5c
    const-string v0, "BPlus"

    const-string v3, "APP_TRACE"

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v0, Lcom/baidu/mtjstatsdk/af;->c:Lcom/baidu/mtjstatsdk/af;

    const/16 v3, 0x3000

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 286
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    const-string v5, "BPlus"

    invoke-static {v5, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_74

    .line 279
    :catch_89
    move-exception v0

    .line 280
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 292
    :cond_8e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a2

    .line 294
    :try_start_94
    const-string v0, "app_trace"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_a0} :catch_cf

    move-result v0

    .line 297
    add-int/2addr v1, v0

    .line 303
    :cond_a2
    :goto_a2
    const-string v0, "BPlus"

    const-string v3, "APP_LIST"

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/baidu/mtjstatsdk/af;->b:Lcom/baidu/mtjstatsdk/af;

    const/16 v3, 0x5000

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 305
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    const-string v5, "BPlus"

    invoke-static {v5, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_ba

    .line 298
    :catch_cf
    move-exception v0

    .line 299
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_a2

    .line 311
    :cond_d4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_e8

    .line 313
    :try_start_da
    const-string v0, "app_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_e6} :catch_117

    move-result v0

    .line 316
    add-int/2addr v1, v0

    .line 322
    :cond_e8
    :goto_e8
    const-string v0, "BPlus"

    const-string v3, "AP_LIST"

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const v0, 0x2d000

    sub-int/2addr v0, v1

    .line 324
    sget-object v3, Lcom/baidu/mtjstatsdk/af;->a:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v3, p1, v0}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 325
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    const-string v5, "BPlus"

    invoke-static {v5, v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_102

    .line 317
    :catch_117
    move-exception v0

    .line 318
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_e8

    .line 331
    :cond_11c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_130

    .line 333
    :try_start_122
    const-string v0, "ap_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_12e
    .catch Lorg/json/JSONException; {:try_start_122 .. :try_end_12e} :catch_164

    move-result v0

    .line 336
    add-int/2addr v1, v0

    .line 342
    :cond_130
    :goto_130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log in bytes is almost :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 344
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 345
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 349
    :try_start_153
    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    invoke-static {}, Lcom/baidu/mtjstatsdk/g;->a()Lcom/baidu/mtjstatsdk/g;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mtjstatsdk/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_163} :catch_169

    .line 354
    :goto_163
    return-void

    .line 337
    :catch_164
    move-exception v0

    .line 338
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_130

    .line 351
    :catch_169
    move-exception v0

    .line 352
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_163
.end method

.method private b(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 73
    const-string v0, "BPlus"

    const-string v1, "collectAPPChangeWithStretegy 1"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->d:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;)J

    move-result-wide v2

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->f()I

    move-result v1

    int-to-long v6, v1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": last time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; time interval: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 82
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_50

    sub-long v2, v4, v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_5f

    .line 83
    :cond_50
    const-string v1, "BPlus"

    const-string v2, "collectAPPChangeWithStretegy 2"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/x;->b(Landroid/content/Context;)V

    .line 86
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->d:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;J)V

    .line 88
    :cond_5f
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 97
    const-string v0, "BPlus"

    const-string v1, "collectAPPListWithStretegy 1"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->b:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;)J

    move-result-wide v2

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 102
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->e()I

    move-result v1

    int-to-long v6, v1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": last time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; time interval: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 106
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_50

    sub-long v2, v4, v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_5f

    .line 107
    :cond_50
    const-string v1, "BPlus"

    const-string v2, "collectAPPListWithStretegy 2"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/x;->c(Landroid/content/Context;)V

    .line 110
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->b:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;J)V

    .line 112
    :cond_5f
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 121
    const-string v0, "BPlus"

    const-string v1, "collectAPPTraceWithStretegy 1"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->c:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;)J

    move-result-wide v2

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 126
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->g()I

    move-result v1

    int-to-long v6, v1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ": last time: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "; time interval: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;)I

    .line 130
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_50

    sub-long v2, v4, v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_5f

    .line 131
    :cond_50
    const-string v1, "BPlus"

    const-string v2, "collectAPPTraceWithStretegy 2"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/x;->d(Landroid/content/Context;)V

    .line 134
    sget-object v1, Lcom/baidu/mtjstatsdk/ad;->c:Lcom/baidu/mtjstatsdk/ad;

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/mtjstatsdk/an;->a(Lcom/baidu/mtjstatsdk/ad;J)V

    .line 136
    :cond_5f
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 210
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mtjstatsdk/an;->a(J)V

    .line 212
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/ab;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    const-string v0, "BPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->f(Landroid/content/Context;)Z

    move-result v0

    .line 216
    :goto_2b
    if-eqz v0, :cond_35

    .line 217
    invoke-direct {p0, p1, v1}, Lcom/baidu/mtjstatsdk/am;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->f(Landroid/content/Context;)Z

    move-result v0

    goto :goto_2b

    .line 220
    :cond_35
    return-void
.end method

.method private f(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 223
    const/4 v0, 0x1

    .line 225
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->a:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;)Z

    move-result v1

    .line 226
    if-nez v1, :cond_a

    .line 246
    :cond_9
    :goto_9
    return v0

    .line 230
    :cond_a
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->b:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;)Z

    move-result v1

    .line 231
    if-eqz v1, :cond_9

    .line 235
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->c:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;)Z

    move-result v1

    .line 236
    if-eqz v1, :cond_9

    .line 240
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->d:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;)Z

    move-result v1

    .line 241
    if-eqz v1, :cond_9

    .line 245
    const/4 v0, 0x0

    .line 246
    goto :goto_9
.end method

.method public static getIntentBPlusServiceKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 375
    const-string v0, "SDK_BPLUS_SERVICE"

    return-object v0
.end method

.method public static getIntentProductLyKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 379
    const-string v0, "SDK_PRODUCT_LY"

    return-object v0
.end method

.method public static setBPlusService(Z)V
    .registers 1

    .prologue
    .line 367
    sput-boolean p0, Lcom/baidu/mtjstatsdk/n;->a:Z

    .line 368
    return-void
.end method

.method public static setProductLv(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 371
    sput-object p0, Lcom/baidu/mtjstatsdk/n;->b:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public static setRelease(Z)V
    .registers 2

    .prologue
    .line 359
    if-eqz p0, :cond_6

    .line 360
    const/4 v0, 0x7

    sput v0, Lcom/baidu/mtjstatsdk/k;->a:I

    .line 364
    :goto_5
    return-void

    .line 362
    :cond_6
    const/4 v0, 0x2

    sput v0, Lcom/baidu/mtjstatsdk/k;->a:I

    goto :goto_5
.end method


# virtual methods
.method public getConfigInteveral(Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 206
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastUpdateTime(Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 191
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/an;->c(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMd5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveRemoteConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 28

    .prologue
    .line 185
    invoke-static/range {p1 .. p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 187
    return-void
.end method

.method public setLastUpdateTime(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 196
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;J)V

    .line 197
    return-void
.end method

.method public startDataAnynalyze(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/16 v5, 0x2710

    .line 140
    const-string v0, "BPlus"

    const-string v1, "startDataAnynalyzed start"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/an;->a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->a()Z

    move-result v1

    .line 144
    const-string v2, "BPlus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is data collect closed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez v1, :cond_75

    .line 147
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->a:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v5}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 148
    if-nez v1, :cond_36

    .line 149
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->a(Landroid/content/Context;)V

    .line 152
    :cond_36
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->d:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v5}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 153
    if-nez v1, :cond_45

    sget-boolean v1, Lcom/baidu/mtjstatsdk/n;->a:Z

    if-eqz v1, :cond_45

    .line 154
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->b(Landroid/content/Context;)V

    .line 157
    :cond_45
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->b:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v5}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 158
    if-nez v1, :cond_50

    .line 159
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->c(Landroid/content/Context;)V

    .line 162
    :cond_50
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->c:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v5}, Lcom/baidu/mtjstatsdk/af;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 163
    if-nez v1, :cond_5f

    sget-boolean v1, Lcom/baidu/mtjstatsdk/n;->a:Z

    if-eqz v1, :cond_5f

    .line 164
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->d(Landroid/content/Context;)V

    .line 167
    :cond_5f
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/p;->h(Landroid/content/Context;)Z

    move-result v1

    .line 168
    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/an;->i()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 169
    const-string v0, "BPlus"

    const-string v1, "sendLog"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/am;->e(Landroid/content/Context;)V

    .line 178
    :cond_75
    :goto_75
    const-string v0, "BPlus"

    const-string v1, "startDataAnynalyzed finished"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 171
    :cond_7d
    if-nez v1, :cond_87

    .line 172
    const-string v0, "BPlus"

    const-string v1, "isWifiAvailable = false, will not sendLog"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 174
    :cond_87
    const-string v0, "BPlus"

    const-string v1, "can not sendLog due to time stratergy"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method
