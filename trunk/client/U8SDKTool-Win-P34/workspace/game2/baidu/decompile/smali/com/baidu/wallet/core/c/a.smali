.class public final Lcom/baidu/wallet/core/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/c/a$c;,
        Lcom/baidu/wallet/core/c/a$b;,
        Lcom/baidu/wallet/core/c/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;

.field private static final b:Ljava/lang/String;

.field private static e:Lcom/baidu/wallet/core/c/a;


# instance fields
.field private c:J

.field private d:Ljava/util/Timer;

.field private final f:Ljava/util/HashMap;

.field private final g:Ljava/util/HashMap;

.field private h:Ljava/util/concurrent/BlockingQueue;

.field private final i:Ljava/util/concurrent/ThreadFactory;

.field private j:Lcom/baidu/wallet/core/c/a$a;

.field private k:Lcom/baidu/wallet/core/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/c/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/c/a;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/c/a;->e:Lcom/baidu/wallet/core/c/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/baidu/wallet/core/c/a;->c:J

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/baidu/wallet/core/c/b;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/c/b;-><init>(Lcom/baidu/wallet/core/c/a;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/baidu/wallet/core/c/a$a;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/baidu/wallet/core/c/a;->h:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/baidu/wallet/core/c/a;->i:Ljava/util/concurrent/ThreadFactory;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/wallet/core/c/a$a;-><init>(Lcom/baidu/wallet/core/c/a;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->j:Lcom/baidu/wallet/core/c/a$a;

    new-instance v0, Lcom/baidu/wallet/core/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/wallet/core/c/a$b;-><init>(Lcom/baidu/wallet/core/c/a;Lcom/baidu/wallet/core/c/b;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->k:Lcom/baidu/wallet/core/c/a$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/baidu/wallet/core/c/a$c;
    .registers 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a$c;

    iget-object v2, v0, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/baidu/wallet/core/c/a;
    .registers 4

    const-class v1, Lcom/baidu/wallet/core/c/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/baidu/wallet/core/c/a;

    invoke-direct {v0}, Lcom/baidu/wallet/core/c/a;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/c/a;->e:Lcom/baidu/wallet/core/c/a;

    sget-object v0, Lcom/baidu/wallet/core/c/a;->a:Ljava/util/HashMap;

    sget-object v2, Lcom/baidu/wallet/core/c/a;->e:Lcom/baidu/wallet/core/c/a;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sget-object v0, Lcom/baidu/wallet/core/c/a;->e:Lcom/baidu/wallet/core/c/a;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/wallet/core/c/a;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .registers 15

    const-wide v12, 0x7fffffffffffffffL

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/baidu/wallet/core/c/a;->c:J

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/c/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a$c;

    iget-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->f:J

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_5e

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/c/a;->c(Lcom/baidu/wallet/core/c/a$c;)V

    iget-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->c:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5e

    iget-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->c:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->f:J

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->f:J

    iget-wide v10, p0, Lcom/baidu/wallet/core/c/a;->c:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_36

    iget-wide v8, v0, Lcom/baidu/wallet/core/c/a$c;->f:J

    iput-wide v8, p0, Lcom/baidu/wallet/core/c/a;->c:J

    goto :goto_36

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :try_start_6e
    iget-wide v6, p0, Lcom/baidu/wallet/core/c/a;->c:J

    cmp-long v0, v6, v12

    if-gez v0, :cond_1d

    iget-wide v6, p0, Lcom/baidu/wallet/core/c/a;->c:J

    sub-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lcom/baidu/wallet/core/c/a;->a(J)V

    goto :goto_1d

    :cond_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_6e .. :try_end_7c} :catchall_6b

    return-void
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    :cond_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    new-instance v0, Lcom/baidu/wallet/core/c/c;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/c/c;-><init>(Lcom/baidu/wallet/core/c/a;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->d:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/c/a$c;)V
    .registers 6

    iget-wide v0, p1, Lcom/baidu/wallet/core/c/a$c;->f:J

    iget-wide v2, p0, Lcom/baidu/wallet/core/c/a;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    iget-wide v0, p1, Lcom/baidu/wallet/core/c/a$c;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/wallet/core/c/a;->a(J)V

    :cond_18
    return-void
.end method

.method private a(Lcom/baidu/wallet/core/c/a$c;J)V
    .registers 6

    new-instance v0, Lcom/baidu/wallet/core/c/d;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/baidu/wallet/core/c/d;-><init>(Lcom/baidu/wallet/core/c/a;JLcom/baidu/wallet/core/c/a$c;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->j:Lcom/baidu/wallet/core/c/a$a;

    invoke-virtual {v1, v0}, Lcom/baidu/wallet/core/c/a$a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/c/a;Lcom/baidu/wallet/core/c/a$c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->d(Lcom/baidu/wallet/core/c/a$c;)V

    return-void
.end method

.method private a(Lcom/baidu/wallet/core/c/a$c;Ljava/util/ArrayList;)Z
    .registers 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a$c;

    iget-object v0, v0, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static synthetic b(Lcom/baidu/wallet/core/c/a;)Lcom/baidu/wallet/core/c/a$a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->j:Lcom/baidu/wallet/core/c/a$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/baidu/wallet/core/c/a$c;)V
    .registers 6

    iget-boolean v0, p1, Lcom/baidu/wallet/core/c/a$c;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->k:Lcom/baidu/wallet/core/c/a$b;

    iget-object v1, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a$b;->a(Ljava/lang/Runnable;)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/baidu/wallet/core/c/a;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_16

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_3a
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_16
.end method

.method private b(Lcom/baidu/wallet/core/c/a$c;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_b
    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/c/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/baidu/wallet/core/c/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/baidu/wallet/core/c/a$c;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-direct {p0, v3}, Lcom/baidu/wallet/core/c/a;->b(Lcom/baidu/wallet/core/c/a$c;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$c;Ljava/lang/String;)Z

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_7

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    goto :goto_7
.end method

.method private c(Lcom/baidu/wallet/core/c/a$c;)V
    .registers 6

    iget-wide v0, p1, Lcom/baidu/wallet/core/c/a$c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget-wide v0, p1, Lcom/baidu/wallet/core/c/a$c;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$c;J)V

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->d(Lcom/baidu/wallet/core/c/a$c;)V

    goto :goto_12
.end method

.method static synthetic c(Lcom/baidu/wallet/core/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/c/a;->a()V

    return-void
.end method

.method private d(Lcom/baidu/wallet/core/c/a$c;)V
    .registers 6

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/baidu/wallet/core/c/a$c;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v2, p1, Lcom/baidu/wallet/core/c/a$c;->d:J

    :cond_a
    iget-boolean v0, p1, Lcom/baidu/wallet/core/c/a$c;->e:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->k:Lcom/baidu/wallet/core/c/a$b;

    iget-object v1, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a$b;->execute(Ljava/lang/Runnable;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/baidu/wallet/core/c/a;->j:Lcom/baidu/wallet/core/c/a$a;

    iget-object v1, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/c/a$a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/c/a$c;

    iget-object v4, v0, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/c/a;->b(Lcom/baidu/wallet/core/c/a$c;)V

    iget-object v0, v0, Lcom/baidu/wallet/core/c/a$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    return-void
.end method

.method public a(Lcom/baidu/wallet/core/c/a$c;Ljava/lang/String;)Z
    .registers 11

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/baidu/wallet/core/c/a$c;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/baidu/wallet/core/c/a;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_d
    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/c/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$c;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_4c

    iget-wide v2, p1, Lcom/baidu/wallet/core/c/a$c;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_42

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->c(Lcom/baidu/wallet/core/c/a$c;)V

    :cond_24
    :goto_24
    iget-wide v2, p1, Lcom/baidu/wallet/core/c/a$c;->c:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/baidu/wallet/core/c/a$c;->d:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/baidu/wallet/core/c/a$c;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/baidu/wallet/core/c/a$c;->f:J

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->a(Lcom/baidu/wallet/core/c/a$c;)V

    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_9

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    :try_start_42
    iget-wide v2, p1, Lcom/baidu/wallet/core/c/a$c;->d:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_24

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/c/a;->c(Lcom/baidu/wallet/core/c/a$c;)V

    goto :goto_24

    :cond_4c
    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/c/a;->b(Lcom/baidu/wallet/core/c/a$c;Ljava/lang/String;)Z
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_3f

    goto :goto_3c
.end method
