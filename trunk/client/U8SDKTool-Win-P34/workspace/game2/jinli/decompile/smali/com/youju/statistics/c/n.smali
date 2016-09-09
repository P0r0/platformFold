.class Lcom/youju/statistics/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/youju/statistics/c/k;


# direct methods
.method constructor <init>(Lcom/youju/statistics/c/k;)V
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/n;->a:Lcom/youju/statistics/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/youju/statistics/c/n;->a:Lcom/youju/statistics/c/k;

    invoke-static {v0}, Lcom/youju/statistics/c/k;->a(Lcom/youju/statistics/c/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/youju/statistics/c/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "customer service bind success!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/c/k;->a(Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;)Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    monitor-exit v1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/n;->a:Lcom/youju/statistics/c/k;

    invoke-static {v0}, Lcom/youju/statistics/c/k;->a(Lcom/youju/statistics/c/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0}, Lcom/youju/statistics/c/k;->a(Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;)Lcom/gionee/gncustomerservice/aidl/server/IStatisticsInterface;

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0
.end method
