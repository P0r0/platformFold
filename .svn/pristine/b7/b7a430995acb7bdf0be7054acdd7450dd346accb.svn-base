.class public final Lcom/youju/statistics/c/r;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/youju/statistics/c/r;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private c:Lcom/youju/statistics/c/q;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/atomic/AtomicLong;

.field private i:Lcom/youju/statistics/c/o;

.field private m:Lcom/youju/statistics/c/d/e;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/youju/statistics/c/r;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    sput-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/youju/statistics/c/r;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youju/statistics/c/r;->a:Landroid/os/HandlerThread;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/r;->d:Ljava/util/concurrent/ExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/r;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/youju/statistics/c/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/youju/statistics/c/j;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/j;-><init>(Lcom/youju/statistics/c/r;)V

    iput-object v0, p0, Lcom/youju/statistics/c/r;->m:Lcom/youju/statistics/c/d/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youju/statistics/c/r;->n:Z

    iput-object p1, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->s()V

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->q()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/c/r;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;

    if-nez v0, :cond_e

    new-instance v0, Lcom/youju/statistics/c/r;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;
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

.method static synthetic a(Lcom/youju/statistics/c/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->w()V

    return-void
.end method

.method static synthetic b(Lcom/youju/statistics/c/r;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;JJ)V
    .registers 14

    new-instance v1, Lcom/youju/statistics/b/l;

    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/youju/statistics/b/l;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/youju/statistics/c/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->r()V

    return-void
.end method

.method static synthetic d(Lcom/youju/statistics/c/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->t()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-object p0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static e()Lcom/youju/statistics/c/r;
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;

    if-nez v0, :cond_c

    new-instance v0, Lcom/youju/statistics/d/d;

    const-string v1, "manager not init"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;

    return-object v0
.end method

.method static synthetic e(Lcom/youju/statistics/c/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->x()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/n;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-object p0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method static synthetic f(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/c/r;->l(Landroid/content/Context;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 10

    new-instance v1, Lcom/youju/statistics/b/g;

    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/youju/statistics/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic g(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/c/r;->k(Landroid/content/Context;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 10

    new-instance v1, Lcom/youju/statistics/b/b;

    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/youju/statistics/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic h(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/c/r;->m(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic i(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/c/r;->o(Landroid/content/Context;)V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/c/r;->n(Landroid/content/Context;)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/youju/statistics/a/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    const-string v0, "YouJuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youju/statistics/c/r;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static l(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/youju/statistics/a/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/youju/statistics/d/a;

    const-string v1, "appid is null"

    invoke-direct {v0, v1}, Lcom/youju/statistics/d/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    return-void
.end method

.method public static m()Ljava/lang/String;
    .registers 1

    const-string v0, "2.0.6.f"

    return-object v0
.end method

.method private static m(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/d/b;->a(Landroid/content/Context;)Lcom/youju/statistics/d/b;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private static n(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/youju/statistics/a/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/r;->l:Ljava/lang/String;

    sget-object v0, Lcom/youju/statistics/c/r;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/r;->l:Ljava/lang/String;

    return-void
.end method

.method private static o(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/youju/statistics/a/n;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic p()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/c/r;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    new-instance v1, Lcom/youju/statistics/c/b;

    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/youju/statistics/c/b;-><init>(Lcom/youju/statistics/c/r;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private r()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lcom/youju/statistics/c/g;->f()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/youju/statistics/c/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/r;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/youju/statistics/c/o;

    iget-object v1, p0, Lcom/youju/statistics/c/r;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youju/statistics/c/o;-><init>(Lcom/youju/statistics/c/r;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    return-void
.end method

.method private t()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    const-string v1, "app_event"

    iget-object v2, p0, Lcom/youju/statistics/c/r;->m:Lcom/youju/statistics/c/d/e;

    invoke-virtual {v0, v1, v2}, Lcom/youju/statistics/e/c;->a(Ljava/lang/String;Lcom/youju/statistics/c/d/e;)V

    return-void
.end method

.method private u()V
    .registers 3

    new-instance v0, Lcom/youju/statistics/b/i;

    sget-object v1, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;

    invoke-direct {v0, v1}, Lcom/youju/statistics/b/i;-><init>(Lcom/youju/statistics/c/r;)V

    iget-object v1, p0, Lcom/youju/statistics/c/r;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private v()Z
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/r;->c:Lcom/youju/statistics/c/q;

    invoke-virtual {v0}, Lcom/youju/statistics/c/q;->a()Z

    move-result v0

    return v0
.end method

.method private w()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    const/16 v1, 0x257

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->removeMessages(I)V

    return-void
.end method

.method private x()V
    .registers 3

    new-instance v0, Lcom/youju/statistics/b/p;

    iget-object v1, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youju/statistics/b/p;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/youju/statistics/c/g;->b(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/r;->g:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .registers 14

    new-instance v1, Lcom/youju/statistics/b/h;

    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/youju/statistics/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lcom/youju/statistics/c/a/h;

    invoke-direct {v2}, Lcom/youju/statistics/c/a/h;-><init>()V

    invoke-virtual {v2, p1}, Lcom/youju/statistics/c/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/youju/statistics/c/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/youju/statistics/c/a/h;->a(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/youju/statistics/c/a/h;->a(J)V

    new-instance v3, Lcom/youju/statistics/b/r;

    iget-object v4, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/youju/statistics/b/r;-><init>(Landroid/content/Context;Lcom/youju/statistics/c/a/h;J)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v3}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/youju/statistics/b/c;

    iget-object v3, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/youju/statistics/b/c;-><init>(Landroid/content/Context;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v0, v2}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/youju/statistics/c/r;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/r;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected b(J)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    new-instance v1, Lcom/youju/statistics/c/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/youju/statistics/c/h;-><init>(Lcom/youju/statistics/c/r;J)V

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/youju/statistics/c/r;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/r;->a(Z)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/youju/statistics/c/r;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/r;->f(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    new-instance v1, Lcom/youju/statistics/c/i;

    invoke-direct {v1, p0, p1}, Lcom/youju/statistics/c/i;-><init>(Lcom/youju/statistics/c/r;Z)V

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/youju/statistics/c/r;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/youju/statistics/c/r;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/r;->a(Z)V

    invoke-direct {p0}, Lcom/youju/statistics/c/r;->u()V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/r;->g(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    invoke-static {p1}, Lcom/youju/statistics/d/b;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 3

    sget-boolean v0, Lcom/youju/statistics/a/m;->h:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/youju/statistics/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/youju/statistics/c/q;

    iget-object v1, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youju/statistics/c/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youju/statistics/c/r;->c:Lcom/youju/statistics/c/q;

    :cond_13
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/youju/statistics/a/n;->f(Landroid/content/Context;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/youju/statistics/a/n;->e(Landroid/content/Context;)V

    return-void
.end method

.method public f()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->isUploadEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v1, "YouJuAgent"

    const-string v2, "upload switch is off"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return v0

    :cond_10
    iget-object v2, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/youju/statistics/a/j;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v1, "YouJuAgent"

    const-string v2, "network isn\'t valid!"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    sget-boolean v2, Lcom/youju/statistics/a/m;->h:Z

    if-nez v2, :cond_26

    move v0, v1

    goto :goto_f

    :cond_26
    invoke-virtual {p0}, Lcom/youju/statistics/c/r;->a()Z

    move-result v2

    if-nez v2, :cond_2e

    move v0, v1

    goto :goto_f

    :cond_2e
    invoke-direct {p0}, Lcom/youju/statistics/c/r;->v()Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v1

    goto :goto_f

    :cond_36
    const-string v1, "YouJuManager"

    const-string v2, "user improvement disabled, can not upload"

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public g()V
    .registers 3

    new-instance v0, Lcom/youju/statistics/b/a;

    iget-object v1, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youju/statistics/b/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/r;->i:Lcom/youju/statistics/c/o;

    const/16 v1, 0x257

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/youju/statistics/c/o;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public i()J
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/t;->a(Landroid/content/Context;)Lcom/youju/statistics/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/t;->b()V

    invoke-virtual {p0}, Lcom/youju/statistics/c/r;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/youju/statistics/c/r;->g()V

    :cond_12
    return-void
.end method

.method public o()V
    .registers 7

    sget-object v2, Lcom/youju/statistics/c/r;->b:Lcom/youju/statistics/c/r;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Lcom/youju/statistics/c/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/youju/statistics/c/r;->g:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youju/statistics/c/r;->a(Z)V

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/youju/statistics/c/r;->a(Ljava/lang/String;JJ)V

    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    monitor-exit v2

    goto :goto_1c

    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0
.end method
