.class Lcom/baidu/wallet/base/stastics/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/wallet/base/stastics/e;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/stastics/e;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/wallet/base/stastics/g;->d:Lcom/baidu/wallet/base/stastics/e;

    iput-wide p2, p0, Lcom/baidu/wallet/base/stastics/g;->a:J

    iput-object p4, p0, Lcom/baidu/wallet/base/stastics/g;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/wallet/base/stastics/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

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
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_5a
    .catchall {:try_start_f .. :try_end_16} :catchall_65

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_65

    :cond_17
    new-instance v0, Lcom/baidu/wallet/base/stastics/e$a;

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/g;->d:Lcom/baidu/wallet/base/stastics/e;

    invoke-direct {v0, v1}, Lcom/baidu/wallet/base/stastics/e$a;-><init>(Lcom/baidu/wallet/base/stastics/e;)V

    iget-wide v2, p0, Lcom/baidu/wallet/base/stastics/g;->a:J

    iput-wide v2, v0, Lcom/baidu/wallet/base/stastics/e$a;->c:J

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/e$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/g;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/e$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/wallet/base/stastics/g;->d:Lcom/baidu/wallet/base/stastics/e;

    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/wallet/base/stastics/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/g;->d:Lcom/baidu/wallet/base/stastics/e;

    iget-object v2, v2, Lcom/baidu/wallet/base/stastics/e;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wallet_stastics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put a keyword["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] into durationlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5a
    move-exception v0

    :try_start_5b
    const-string v2, "wallet_stastics"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catchall_65
    move-exception v0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_65

    throw v0
.end method
