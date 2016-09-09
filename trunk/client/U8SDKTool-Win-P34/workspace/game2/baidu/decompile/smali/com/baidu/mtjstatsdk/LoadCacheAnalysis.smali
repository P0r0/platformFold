.class public Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    .line 32
    new-instance v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->d:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 120
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    .line 121
    if-nez v0, :cond_14

    .line 122
    new-instance v0, Lcom/baidu/mtjstatsdk/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/mtjstatsdk/bf;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_14
    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 177
    const-class v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/baidu/mtjstatsdk/bf;->a:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 178
    monitor-exit v1

    return-void

    .line 177
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 89
    if-nez v0, :cond_c

    .line 116
    :cond_b
    :goto_b
    return v1

    .line 93
    :cond_c
    const/4 v2, 0x0

    .line 95
    const v3, 0x7fffffff

    :try_start_10
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_3f

    move-result-object v0

    .line 100
    :goto_14
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_b

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 105
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_20

    .line 110
    const-string v3, "com.baidu.bplus.service.BPlusService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 111
    const/4 v0, 0x1

    :goto_3d
    move v1, v0

    .line 116
    goto :goto_b

    .line 96
    :catch_3f
    move-exception v0

    move-object v0, v2

    goto :goto_14

    :cond_42
    move v0, v1

    goto :goto_3d
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/bf;->b:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->d:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    return-object v0
.end method


# virtual methods
.method public checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 146
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    .line 135
    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/bf;->b:Z

    if-nez v1, :cond_2

    .line 136
    iget-object v1, v0, Lcom/baidu/mtjstatsdk/bf;->d:Lcom/baidu/mtjstatsdk/be;

    monitor-enter v1

    .line 138
    :try_start_15
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/bf;->d:Lcom/baidu/mtjstatsdk/be;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    .line 144
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v1

    goto :goto_2

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    .line 139
    :catch_1f
    move-exception v0

    .line 140
    :try_start_20
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 141
    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_1c

    goto :goto_1a
.end method

.method public declared-synchronized checkStartLoadCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 149
    monitor-enter p0

    if-nez p1, :cond_5

    .line 164
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 153
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    .line 156
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/baidu/mtjstatsdk/bf;->a:Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_24

    if-nez v1, :cond_3

    .line 158
    :try_start_16
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Ljava/lang/String;)V

    .line 159
    iget-object v0, v0, Lcom/baidu/mtjstatsdk/bf;->d:Lcom/baidu/mtjstatsdk/be;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/be;->start()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f
    .catchall {:try_start_16 .. :try_end_1e} :catchall_24

    goto :goto_3

    .line 160
    :catch_1f
    move-exception v0

    .line 161
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_3

    .line 149
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doDataAnalyze(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 39
    if-nez p1, :cond_3

    .line 83
    :cond_2
    :goto_2
    return-void

    .line 52
    :cond_3
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 53
    :cond_f
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataAnalyzeThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Landroid/os/HandlerThread;

    .line 54
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2c

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Landroid/os/Handler;

    .line 62
    :cond_2c
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bd;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mtjstatsdk/bd;-><init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public initLoadCacheParams(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 185
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/bf;->a:Z

    .line 186
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    iput-boolean v1, v0, Lcom/baidu/mtjstatsdk/bf;->b:Z

    .line 187
    return-void
.end method

.method public declared-synchronized isFinished(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/bf;->b:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStart(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    if-nez v0, :cond_c

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    sget-object v0, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/bf;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/bf;->a:Z
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_a

    .line 168
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
