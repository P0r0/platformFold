.class public Lcom/youju/statistics/c/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/youju/statistics/c/t;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private f:Lcom/youju/statistics/c/s;

.field private g:Lcom/youju/statistics/c/d;

.field private h:Lcom/youju/statistics/c/a;

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/c/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v2, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    iput-object v2, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    iput-object v2, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/youju/statistics/c/t;->j:Z

    iput-boolean v3, p0, Lcom/youju/statistics/c/t;->k:Z

    iput-object v2, p0, Lcom/youju/statistics/c/t;->l:Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/t;->d:Ljava/lang/String;

    return-void
.end method

.method private a(JLcom/youju/statistics/c/e;)I
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p3}, Lcom/youju/statistics/c/e;->e()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->e(J)I

    move-result v1

    if-ge v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method private a(Lcom/youju/statistics/c/d;J)I
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/youju/statistics/c/d;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/youju/statistics/c/d;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->e(J)I

    move-result v2

    add-int/2addr v1, v2

    :goto_16
    if-ge v1, v0, :cond_25

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Lcom/youju/statistics/c/d;->e()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->e(J)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_16

    :cond_25
    move v0, v1

    goto :goto_18
.end method

.method static synthetic a(Lcom/youju/statistics/c/t;Ljava/lang/String;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;)J
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "name = ?"

    iget-object v2, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    const-string v3, "activity"

    invoke-static {v2, v3, v1, v0}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/youju/statistics/c/d;JJ)Landroid/content/ContentValues;
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "last_quit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/d;J)I

    move-result v1

    const-string v2, "duration"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/c/t;
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/t;->b:Lcom/youju/statistics/c/t;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/youju/statistics/c/t;->b(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/youju/statistics/c/t;->b:Lcom/youju/statistics/c/t;

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/c/t;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/c/t;Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->f(Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/ActivityManager;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->d(Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b(Ljava/lang/String;)J
    .registers 6

    const-string v0, "session_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    const-string v3, "session"

    invoke-static {v2, v3, v0, v1}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(JLcom/youju/statistics/c/e;)Landroid/content/ContentValues;
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/youju/statistics/c/t;->a(JLcom/youju/statistics/c/e;)I

    move-result v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "duration"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/c/t;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/t;->b:Lcom/youju/statistics/c/t;

    if-nez v0, :cond_e

    new-instance v0, Lcom/youju/statistics/c/t;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/c/t;->b:Lcom/youju/statistics/c/t;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/app/ActivityManager;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->c(Landroid/app/ActivityManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Lcom/youju/statistics/c/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/youju/statistics/c/t;)Z
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->f()Z

    move-result v0

    return v0
.end method

.method private d(Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->e(Landroid/app/ActivityManager;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopPackageName"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_8
.end method

.method private d()V
    .registers 9

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v7, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v7

    :try_start_9
    iget-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRefreshDurationJob"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already quited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v7

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-boolean v0, p0, Lcom/youju/statistics/c/t;->k:Z

    if-eqz v0, :cond_36

    monitor-exit v7

    goto :goto_2c

    :catchall_33
    move-exception v0

    monitor-exit v7
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    const-string v1, "startRefreshDurationJob"

    invoke-static {v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/c/t;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/youju/statistics/c/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/youju/statistics/c/f;-><init>(Lcom/youju/statistics/c/t;Lcom/youju/statistics/c/c;)V

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/t;->l:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->k:Z

    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_36 .. :try_end_5b} :catchall_33

    goto :goto_2c
.end method

.method static synthetic d(Lcom/youju/statistics/c/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->e()V

    return-void
.end method

.method private d(J)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    if-nez v2, :cond_a

    monitor-exit v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3b

    invoke-virtual {v2}, Lcom/youju/statistics/c/s;->e()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->d(J)I

    move-result v1

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_9

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTwoResumeInHalfMin"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_9

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private e(Landroid/app/ActivityManager;)Landroid/content/ComponentName;
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivity"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tasks is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    :goto_35
    const/4 v0, 0x0

    goto :goto_16

    :catch_37
    move-exception v0

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivity"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method static synthetic e(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/d;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    return-object v0
.end method

.method private e()V
    .registers 4

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/youju/statistics/c/t;->k:Z

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/youju/statistics/c/t;->l:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    const-string v2, "quitRefreshDurationJob"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youju/statistics/c/t;->l:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/c/t;->l:Ljava/util/concurrent/Future;

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->k:Z

    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private e(J)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    if-nez v2, :cond_a

    monitor-exit v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3f

    invoke-virtual {v2}, Lcom/youju/statistics/c/s;->e()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->d(J)I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_9

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTwoResumeInOneMin"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_9

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method static synthetic f(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/s;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    return-object v0
.end method

.method private f(Landroid/app/ActivityManager;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->e(Landroid/app/ActivityManager;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivityName"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_8
.end method

.method private f()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_15

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/t;->b(Landroid/app/ActivityManager;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, v0}, Lcom/youju/statistics/c/t;->a(Landroid/app/ActivityManager;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v0

    goto :goto_14

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_14
.end method

.method static synthetic g(Lcom/youju/statistics/c/t;)Lcom/youju/statistics/c/a;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    return-object v0
.end method

.method static synthetic h(Lcom/youju/statistics/c/t;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    new-instance v0, Lcom/youju/statistics/c/s;

    invoke-direct {v0, p1, p2, p3}, Lcom/youju/statistics/c/s;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->d()V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a(Ljava/lang/String;JI)V
    .registers 9

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v0, p2, p3}, Lcom/youju/statistics/c/d;->a(J)V

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v0, p4}, Lcom/youju/statistics/c/d;->a(I)V

    monitor-exit v1

    :goto_21
    return-void

    :cond_22
    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConnitue"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "not same session ,session id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , id manager session id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v3}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    new-instance v0, Lcom/youju/statistics/c/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/youju/statistics/c/d;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v0, p4}, Lcom/youju/statistics/c/d;->a(I)V

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_65

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->d()V

    goto :goto_21

    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 14

    iget-object v2, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v1, "CurrentSessionInfo is null"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    invoke-virtual {v1}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSessionDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sessionid not same, session id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current session info id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void

    :cond_50
    :try_start_50
    invoke-virtual {v1}, Lcom/youju/statistics/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/t;->b(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/youju/statistics/c/t;->a(Lcom/youju/statistics/c/d;JJ)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v2, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    const-string v3, "session"

    invoke-static {v2, v3, v6, v7, v0}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V

    sget-object v2, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentSession"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastQuittime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "last_quit_time"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " lastDuration = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/youju/statistics/c/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ac} :catch_ad

    goto :goto_4f

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method public a(Ljava/lang/String;JZ)V
    .registers 7

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    new-instance v0, Lcom/youju/statistics/c/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/youju/statistics/c/d;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    if-eqz p4, :cond_13

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->d()V

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(J)Z
    .registers 8

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v2, "no current session info when judge new session"

    invoke-direct {v0, v2}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    invoke-virtual {v0}, Lcom/youju/statistics/c/d;->e()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Lcom/youju/statistics/a/n;->d(J)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public a(JJ)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/youju/statistics/c/t;->d(J)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/youju/statistics/c/t;->e(J)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_8

    :cond_11
    iget-object v2, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-nez v3, :cond_23

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v1, "no current session info when judge new session"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    invoke-virtual {v3}, Lcom/youju/statistics/c/d;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_32

    move v0, v1

    goto :goto_8

    :cond_32
    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->d(J)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p3

    if-ltz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public b()V
    .registers 3

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/youju/statistics/c/t;->j:Z

    invoke-direct {p0}, Lcom/youju/statistics/c/t;->e()V

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public b(J)V
    .registers 6

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/youju/statistics/c/d;->b(J)V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public b(Ljava/lang/String;J)V
    .registers 6

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/youju/statistics/c/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/youju/statistics/c/a;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public c(J)J
    .registers 12

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    if-nez v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v2, "current session info is null when get interval"

    invoke-direct {v0, v2}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    invoke-static {}, Lcom/youju/statistics/a/n;->j()J

    move-result-wide v0

    invoke-virtual {v4}, Lcom/youju/statistics/c/d;->d()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_26

    const-wide/16 v0, 0x0

    :goto_25
    return-wide v0

    :cond_26
    invoke-virtual {v4}, Lcom/youju/statistics/c/d;->d()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->e(J)I

    move-result v2

    int-to-long v2, v2

    cmp-long v5, v2, v0

    if-gez v5, :cond_6c

    sget-object v2, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntervalnano"

    invoke-static {v5}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "interval < defaultSessionInterval, LastSessionQuitNanoTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/youju/statistics/c/d;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getStartNanoTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youju/statistics/c/t;->g:Lcom/youju/statistics/c/d;

    invoke-virtual {v4}, Lcom/youju/statistics/c/d;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_6c
    move-wide v0, v2

    goto :goto_25
.end method

.method public c(Ljava/lang/String;J)V
    .registers 10

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    if-nez v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v2, "CurrentActivityInfo is null"

    invoke-direct {v0, v2}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/youju/statistics/c/t;->f:Lcom/youju/statistics/c/s;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    invoke-virtual {v0}, Lcom/youju/statistics/c/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActivityDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity not same, activity name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current activity info name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/c/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void

    :cond_50
    invoke-direct {p0, p2, p3, v0}, Lcom/youju/statistics/c/t;->b(JLcom/youju/statistics/c/e;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/t;->a(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    const-string v4, "activity"

    invoke-static {v1, v4, v2, v3, v0}, Lcom/youju/statistics/a/g;->a(Landroid/content/Context;Ljava/lang/String;JLandroid/content/ContentValues;)V

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActivityDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public d(Ljava/lang/String;J)V
    .registers 8

    iget-object v1, p0, Lcom/youju/statistics/c/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/youju/statistics/d/c;

    const-string v2, "CurrentPageInfo is null"

    invoke-direct {v0, v2}, Lcom/youju/statistics/d/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/youju/statistics/c/t;->h:Lcom/youju/statistics/c/a;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    invoke-virtual {v0}, Lcom/youju/statistics/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "page not same, page name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current page info name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void

    :cond_50
    iget-object v1, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/youju/statistics/a/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/a/f;

    move-result-object v1

    if-nez v1, :cond_77

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePageDuration"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no page in local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_77
    invoke-virtual {v1}, Lcom/youju/statistics/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    sget-object v0, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "page not same, page name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " local page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_b2
    invoke-direct {p0, p2, p3, v0}, Lcom/youju/statistics/c/t;->a(JLcom/youju/statistics/c/e;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/youju/statistics/c/a/f;->b(J)V

    iget-object v2, p0, Lcom/youju/statistics/c/t;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v2

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/youju/statistics/c/g;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/youju/statistics/c/t;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageDuration"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method
