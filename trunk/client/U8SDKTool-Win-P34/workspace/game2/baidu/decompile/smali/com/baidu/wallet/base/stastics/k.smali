.class Lcom/baidu/wallet/base/stastics/k;
.super Ljava/lang/Thread;


# static fields
.field private static a:Lcom/baidu/wallet/base/stastics/k;


# instance fields
.field private b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/wallet/base/stastics/k;

    invoke-direct {v0}, Lcom/baidu/wallet/base/stastics/k;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/stastics/k;->a:Lcom/baidu/wallet/base/stastics/k;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->c:Z

    iput-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->d:Z

    return-void
.end method

.method public static a()Lcom/baidu/wallet/base/stastics/k;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/stastics/k;->a:Lcom/baidu/wallet/base/stastics/k;

    return-object v0
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->c:Z

    return-void
.end method

.method private declared-synchronized e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->d:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/baidu/wallet/base/stastics/k;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/baidu/wallet/base/stastics/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/wallet/base/stastics/k;->d()V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/stastics/k;->start()V

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->c:Z

    return v0
.end method

.method public declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/baidu/wallet/base/stastics/k;->d:Z

    if-nez v0, :cond_41

    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/stastics/DataCore;->loadStatData(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/stastics/DataCore;->loadExceptionData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/stastics/k;->e()V

    sget-object v1, Lcom/baidu/wallet/base/stastics/k;->a:Lcom/baidu/wallet/base/stastics/k;

    monitor-enter v1

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_24
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_21 .. :try_end_24} :catch_3f
    .catchall {:try_start_21 .. :try_end_24} :catchall_3c

    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3c

    invoke-static {}, Lcom/baidu/wallet/base/stastics/LogSender;->getInstance()Lcom/baidu/wallet/base/stastics/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/k;->b:Landroid/content/Context;

    const-string v2, "normal_log"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/LogSender;->onSend(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/stastics/LogSender;->getInstance()Lcom/baidu/wallet/base/stastics/LogSender;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/k;->b:Landroid/content/Context;

    const-string v2, "crash_log"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/LogSender;->onSend(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    :catch_3f
    move-exception v0

    goto :goto_24

    :cond_41
    return-void
.end method
