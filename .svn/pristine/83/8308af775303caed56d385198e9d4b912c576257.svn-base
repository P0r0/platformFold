.class public Lcom/youju/statistics/c/k;
.super Lcom/youju/statistics/c/l;


# static fields
.field protected static final a:Ljava/lang/String;

.field private static d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;


# instance fields
.field private c:Ljava/lang/Object;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/c/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/c/k;->d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/l;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/k;->c:Ljava/lang/Object;

    new-instance v0, Lcom/youju/statistics/c/n;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/n;-><init>(Lcom/youju/statistics/c/k;)V

    iput-object v0, p0, Lcom/youju/statistics/c/k;->e:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/youju/statistics/c/k;->d()V

    return-void
.end method

.method static synthetic a(Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;)Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;
    .registers 1

    sput-object p0, Lcom/youju/statistics/c/k;->d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    return-object p0
.end method

.method static synthetic a(Lcom/youju/statistics/c/k;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/k;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Z
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/k;->d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private d()V
    .registers 7

    iget-object v1, p0, Lcom/youju/statistics/c/k;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bindIStatisticsService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/youju/statistics/c/k;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/youju/statistics/c/k;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3e
    .catchall {:try_start_3 .. :try_end_3c} :catchall_60

    :goto_3c
    :try_start_3c
    monitor-exit v1

    return-void

    :catch_3e
    move-exception v0

    sget-object v2, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindIStatisticsService"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_60

    throw v0
.end method

.method private e()V
    .registers 6

    iget-object v1, p0, Lcom/youju/statistics/c/k;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    const-string v2, "unbindIStatisticsService"

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/c/k;->d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    iget-object v0, p0, Lcom/youju/statistics/c/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/youju/statistics/c/k;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_16
    .catchall {:try_start_3 .. :try_end_14} :catchall_38

    :goto_14
    :try_start_14
    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    sget-object v2, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindIStatisticsService"

    invoke-static {v4}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_38

    throw v0
.end method


# virtual methods
.method protected a()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/youju/statistics/c/k;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_22

    :try_start_4
    invoke-direct {p0}, Lcom/youju/statistics/c/k;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/youju/statistics/c/k;->d()V

    sget-object v1, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    const-string v3, "getImprovementStateFromCustomerService() sIStatisticsInterface is null"

    invoke-static {v1, v3}, Lcom/youju/statistics/a/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    :goto_15
    return v0

    :cond_16
    sget-object v1, Lcom/youju/statistics/c/k;->d:Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    invoke-interface {v1}, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;->getUserImprovementState()Z

    move-result v1

    monitor-exit v2

    move v0, v1

    goto :goto_15

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_22

    :catch_22
    move-exception v1

    sget-object v2, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    const-string v3, "getImprovementStateFromCustomerService "

    invoke-static {v2, v3, v1}, Lcom/youju/statistics/a/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/youju/statistics/c/k;->e()V

    goto :goto_15
.end method
