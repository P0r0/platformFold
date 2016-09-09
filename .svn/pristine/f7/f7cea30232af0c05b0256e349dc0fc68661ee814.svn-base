.class public Lcom/baidu/mtjstatsdk/StatSDKService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    if-nez p0, :cond_24

    .line 274
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "statsdk"

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":context=null\uff0c please check it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 278
    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 21
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 22
    const/4 v1, 0x0

    .line 23
    array-length v2, v3

    if-lt v2, v0, :cond_3f

    .line 24
    :goto_e
    array-length v2, v3

    if-ge v0, v2, :cond_3f

    .line 25
    aget-object v2, v3, v0

    .line 26
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 28
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 29
    :goto_25
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_36

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_3a

    move-result-object v2

    goto :goto_25

    .line 32
    :cond_36
    const/4 v1, 0x1

    .line 24
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 33
    :catch_3a
    move-exception v2

    .line 34
    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/Throwable;)I

    goto :goto_37

    .line 40
    :cond_3f
    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 339
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->doDataAnalyze(Landroid/content/Context;)V

    .line 340
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkStartLoadCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static getCuid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    new-instance v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    .prologue
    .line 158
    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    :cond_8
    :goto_8
    return-void

    .line 161
    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    invoke-static {p0, p4}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/baidu/mtjstatsdk/ax;->a()Lcom/baidu/mtjstatsdk/ax;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mtjstatsdk/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13

    .prologue
    .line 246
    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 261
    :cond_8
    :goto_8
    return-void

    .line 249
    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_30

    .line 253
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onEventDuration: duration must be greater than zero"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    goto :goto_8

    .line 258
    :cond_30
    invoke-static {p0, p5}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/baidu/mtjstatsdk/ax;->a()Lcom/baidu/mtjstatsdk/ax;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/ax;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 222
    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 233
    :cond_8
    :goto_8
    return-void

    .line 225
    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 229
    invoke-static {p0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/baidu/mtjstatsdk/ax;->a()Lcom/baidu/mtjstatsdk/ax;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/ax;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 200
    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 211
    :cond_8
    :goto_8
    return-void

    .line 203
    :cond_9
    if-eqz p1, :cond_8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    invoke-static {p0, p3}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/baidu/mtjstatsdk/ax;->a()Lcom/baidu/mtjstatsdk/ax;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 110
    const-class v6, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v6

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    :try_start_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 111
    :cond_f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageEnd :parame=null || empty"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_36

    .line 120
    :cond_25
    :goto_25
    monitor-exit v6

    return-void

    .line 118
    :cond_27
    :try_start_27
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/bk;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_36

    goto :goto_25

    .line 110
    :catchall_36
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 84
    const-class v6, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v6

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    :try_start_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 85
    :cond_f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPageStart :parame=null || empty"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_39

    .line 96
    :cond_25
    :goto_25
    monitor-exit v6

    return-void

    .line 92
    :cond_27
    :try_start_27
    invoke-static {p0, p2}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/bk;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_39

    goto :goto_25

    .line 84
    :catchall_39
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 132
    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    :try_start_3
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v0

    if-nez v0, :cond_d

    .line 143
    :goto_b
    monitor-exit v1

    return-void

    .line 136
    :cond_d
    :try_start_d
    const-class v0, Landroid/app/Activity;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 137
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onPause(Context context)\u4e0d\u5728Activity.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Activity.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1f

    .line 132
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 142
    :cond_22
    :try_start_22
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/bk;->b(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_1f

    goto :goto_b
.end method

.method public static declared-synchronized onResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 53
    const-class v1, Lcom/baidu/mtjstatsdk/StatSDKService;

    monitor-enter v1

    :try_start_3
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    move-result v0

    if-nez v0, :cond_d

    .line 69
    :goto_b
    monitor-exit v1

    return-void

    .line 57
    :cond_d
    :try_start_d
    const-class v0, Landroid/app/Activity;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1f

    .line 53
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 64
    :cond_22
    :try_start_22
    invoke-static {p0, p1}, Lcom/baidu/mtjstatsdk/StatSDKService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/bk;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mtjstatsdk/bk;->a(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_1f

    goto :goto_b
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 303
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/DataCore;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 304
    return-void
.end method

.method public static setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 367
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/DataCore;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static setDebugOn(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 349
    if-nez p1, :cond_3

    .line 358
    :goto_2
    return-void

    .line 352
    :cond_3
    sget-object v0, Lcom/baidu/mtjstatsdk/cs;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v0, 0x2

    sput v0, Lcom/baidu/mtjstatsdk/cs;->a:I

    goto :goto_2
.end method

.method public static setLogSenderDelayed(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 317
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mtjstatsdk/DataCore;->setLogSenderDelayed(ILjava/lang/String;)V

    .line 318
    return-void
.end method
