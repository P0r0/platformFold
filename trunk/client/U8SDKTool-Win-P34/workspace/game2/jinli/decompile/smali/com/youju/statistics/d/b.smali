.class public Lcom/youju/statistics/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/youju/statistics/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/d/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/youju/statistics/d/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/d/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/youju/statistics/d/b;
    .registers 3

    const-class v0, Lcom/youju/statistics/d/b;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/youju/statistics/d/f;->a()Lcom/youju/statistics/d/b;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/youju/statistics/c/r;->e()Lcom/youju/statistics/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youju/statistics/c/r;->o()V

    sget-object v1, Lcom/youju/statistics/d/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/youju/statistics/c/r;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Lcom/youju/statistics/d/d; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_2

    :catch_16
    move-exception v0

    sget-object v1, Lcom/youju/statistics/d/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCrash"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youju/statistics/d/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Z)V
    .registers 2

    sget-object v0, Lcom/youju/statistics/d/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    sget-object v0, Lcom/youju/statistics/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaughtException"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultHandler = null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/d/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Lcom/youju/statistics/a/n;->a(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/youju/statistics/d/b;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/youju/statistics/d/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/youju/statistics/d/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_34
    return-void

    :cond_35
    invoke-static {}, Lcom/youju/statistics/a/n;->f()V

    goto :goto_34
.end method
