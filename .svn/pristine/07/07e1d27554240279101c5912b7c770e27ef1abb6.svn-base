.class Lcom/baidu/wallet/base/stastics/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/stastics/p;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/stastics/p;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/stastics/q;->a:Lcom/baidu/wallet/base/stastics/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/base/stastics/k;->a()Lcom/baidu/wallet/base/stastics/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/stastics/k;->c()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/baidu/wallet/base/stastics/k;->a()Lcom/baidu/wallet/base/stastics/k;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    invoke-static {}, Lcom/baidu/wallet/base/stastics/k;->a()Lcom/baidu/wallet/base/stastics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_18
    .catchall {:try_start_f .. :try_end_16} :catchall_32

    :goto_16
    :try_start_16
    monitor-exit v1

    :cond_17
    return-void

    :catch_18
    move-exception v0

    const-string v2, "SessionAnalysis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw v0
.end method
