.class Lcom/baidu/mtjstatsdk/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mtjstatsdk/an;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:J

.field private static j:J

.field private static k:Ljava/lang/String;

.field private static l:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0x18

    .line 30
    sput v1, Lcom/baidu/mtjstatsdk/an;->b:I

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mtjstatsdk/an;->c:I

    .line 32
    const/4 v0, 0x5

    sput v0, Lcom/baidu/mtjstatsdk/an;->d:I

    .line 33
    sput v1, Lcom/baidu/mtjstatsdk/an;->e:I

    .line 34
    const/16 v0, 0x1e

    sput v0, Lcom/baidu/mtjstatsdk/an;->f:I

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mtjstatsdk/an;->g:I

    .line 36
    sput v1, Lcom/baidu/mtjstatsdk/an;->h:I

    .line 38
    sput-wide v2, Lcom/baidu/mtjstatsdk/an;->i:J

    .line 39
    sput-wide v2, Lcom/baidu/mtjstatsdk/an;->j:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/mtjstatsdk/an;
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->a:Lcom/baidu/mtjstatsdk/an;

    if-nez v0, :cond_16

    .line 46
    const-class v1, Lcom/baidu/mtjstatsdk/an;

    monitor-enter v1

    .line 47
    :try_start_7
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->a:Lcom/baidu/mtjstatsdk/an;

    if-nez v0, :cond_15

    .line 48
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/an;->b(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/baidu/mtjstatsdk/an;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/an;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/an;->a:Lcom/baidu/mtjstatsdk/an;

    .line 51
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 54
    :cond_16
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->a:Lcom/baidu/mtjstatsdk/an;

    return-object v0

    .line 51
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private b(J)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 428
    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_d

    move-wide p1, v0

    :cond_d
    return-wide p1
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 216
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 217
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    .line 219
    :cond_c
    const-string v0, "BPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteConfig configContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_26
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 223
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mtjstatsdk/an;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    .line 226
    :cond_3d
    const-string v0, "BPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteConfig configContentJSON="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_57} :catch_ba

    .line 232
    :goto_57
    :try_start_57
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_65

    .line 233
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->c:I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_65} :catch_bf

    .line 240
    :cond_65
    :goto_65
    :try_start_65
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_73

    .line 241
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->h:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_c4

    .line 248
    :cond_73
    :goto_73
    :try_start_73
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_81

    .line 249
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->d:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_c9

    .line 256
    :cond_81
    :goto_81
    :try_start_81
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_8f

    .line 257
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->e:I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_ce

    .line 264
    :cond_8f
    :goto_8f
    :try_start_8f
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_9d

    .line 265
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "cf"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->b:I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_d3

    .line 272
    :cond_9d
    :goto_9d
    :try_start_9d
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_ab

    .line 273
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->f:I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ab} :catch_d8

    .line 280
    :cond_ab
    :goto_ab
    :try_start_ab
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    if-eqz v0, :cond_b9

    .line 281
    sget-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    const-string v1, "ac"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->g:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b9} :catch_dd

    .line 286
    :cond_b9
    :goto_b9
    return-void

    .line 227
    :catch_ba
    move-exception v0

    .line 228
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_57

    .line 235
    :catch_bf
    move-exception v0

    .line 236
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_65

    .line 243
    :catch_c4
    move-exception v0

    .line 244
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_73

    .line 251
    :catch_c9
    move-exception v0

    .line 252
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_81

    .line 259
    :catch_ce
    move-exception v0

    .line 260
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_8f

    .line 267
    :catch_d3
    move-exception v0

    .line 268
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_9d

    .line 275
    :catch_d8
    move-exception v0

    .line 276
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_ab

    .line 283
    :catch_dd
    move-exception v0

    .line 284
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_b9
.end method


# virtual methods
.method public a(Lcom/baidu/mtjstatsdk/ad;)J
    .registers 4

    .prologue
    .line 349
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :try_start_6
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 353
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/baidu/mtjstatsdk/ad;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1e} :catch_20

    move-result-wide v0

    .line 366
    :goto_1f
    return-wide v0

    .line 360
    :catch_20
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 364
    :cond_24
    iget-wide v0, p1, Lcom/baidu/mtjstatsdk/ad;->e:J

    .line 365
    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J

    move-result-wide v0

    goto :goto_1f
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 289
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :try_start_6
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 293
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 297
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3d} :catch_3f

    move-result-object v0

    .line 304
    :goto_3e
    return-object v0

    .line 301
    :catch_3f
    move-exception v0

    .line 302
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 304
    :cond_43
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 388
    sput-wide p1, Lcom/baidu/mtjstatsdk/an;->j:J

    .line 390
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    :try_start_8
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 394
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    :goto_15
    const-string v1, "LAST_SEND"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 400
    const-string v1, "backups/system/.config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    :goto_24
    return-void

    .line 396
    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2a} :catch_2b

    goto :goto_15

    .line 401
    :catch_2b
    move-exception v0

    .line 402
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public a(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 327
    sput-wide p2, Lcom/baidu/mtjstatsdk/an;->i:J

    .line 330
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :try_start_8
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 334
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 338
    :goto_15
    const-string v1, "u"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v1, "backups/system/.config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    :goto_37
    return-void

    .line 336
    :cond_38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_15

    .line 341
    :catch_3e
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    .prologue
    .line 156
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    :try_start_6
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    :goto_13
    const-string v1, "c"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v1, "s"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v1, "a"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "l"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v1, "cf"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "at"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "ac"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    if-eqz p10, :cond_56

    const-string v1, "0"

    invoke-virtual {p9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_56
    const-string v1, "u"

    invoke-virtual {v0, v1, p11, p12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    sput-object v0, Lcom/baidu/mtjstatsdk/an;->l:Lorg/json/JSONObject;

    .line 179
    const-string v1, "backups/system/.config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->c:I

    .line 184
    :cond_73
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 185
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->b:I

    .line 188
    :cond_7f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 189
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->h:I

    .line 192
    :cond_8b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 193
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->d:I

    .line 196
    :cond_97
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 197
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->e:I

    .line 200
    :cond_a3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 201
    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->f:I

    .line 204
    :cond_af
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 205
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->g:I

    .line 211
    :cond_bb
    :goto_bb
    return-void

    .line 162
    :cond_bc
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c1} :catch_c3

    goto/16 :goto_13

    .line 208
    :catch_c3
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_bb
.end method

.method public a(Lcom/baidu/mtjstatsdk/ad;J)V
    .registers 8

    .prologue
    .line 370
    iput-wide p2, p1, Lcom/baidu/mtjstatsdk/ad;->e:J

    .line 372
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :try_start_8
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    :goto_15
    invoke-virtual {p1}, Lcom/baidu/mtjstatsdk/ad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 381
    const-string v1, "backups/system/.config"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    :goto_26
    return-void

    .line 378
    :cond_27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2c} :catch_2d

    goto :goto_15

    .line 382
    :catch_2d
    move-exception v0

    .line 383
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 72
    sget v0, Lcom/baidu/mtjstatsdk/an;->c:I

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()I
    .registers 3

    .prologue
    .line 85
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :try_start_6
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v0, "cf"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mtjstatsdk/an;->b:I
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1b} :catch_24

    .line 98
    :cond_1b
    :goto_1b
    sget v0, Lcom/baidu/mtjstatsdk/an;->b:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 94
    :catch_24
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public c()I
    .registers 2

    .prologue
    .line 107
    sget v0, Lcom/baidu/mtjstatsdk/an;->h:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public c(Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 308
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    :try_start_6
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 312
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v0, "u"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1c} :catch_1e

    move-result-wide v0

    .line 323
    :goto_1d
    return-wide v0

    .line 318
    :catch_1e
    move-exception v0

    .line 319
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 322
    :cond_22
    sget-wide v0, Lcom/baidu/mtjstatsdk/an;->i:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mtjstatsdk/an;->i:J

    .line 323
    sget-wide v0, Lcom/baidu/mtjstatsdk/an;->i:J

    goto :goto_1d
.end method

.method public d()I
    .registers 2

    .prologue
    .line 116
    sget v0, Lcom/baidu/mtjstatsdk/an;->d:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 125
    sget v0, Lcom/baidu/mtjstatsdk/an;->e:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 134
    sget v0, Lcom/baidu/mtjstatsdk/an;->g:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 143
    sget v0, Lcom/baidu/mtjstatsdk/an;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 407
    const-string v0, "backups/system/.config"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :try_start_6
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 411
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 413
    const-string v0, "LAST_SEND"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1c} :catch_1e

    move-result-wide v0

    .line 423
    :goto_1d
    return-wide v0

    .line 418
    :catch_1e
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 422
    :cond_22
    sget-wide v0, Lcom/baidu/mtjstatsdk/an;->j:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/mtjstatsdk/an;->b(J)J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mtjstatsdk/an;->j:J

    .line 423
    sget-wide v0, Lcom/baidu/mtjstatsdk/an;->j:J

    goto :goto_1d
.end method

.method public i()Z
    .registers 10

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 433
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/an;->h()J

    move-result-wide v2

    .line 434
    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/an;->c()I

    move-result v4

    int-to-long v4, v4

    .line 435
    const-string v6, "BPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canSend now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";;lastSendTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";;sendLogTimeInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_40

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method
