.class Lcom/baidu/wallet/base/stastics/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/baidu/wallet/base/stastics/e;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/stastics/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/baidu/wallet/base/stastics/f;->f:Lcom/baidu/wallet/base/stastics/e;

    iput-object p2, p0, Lcom/baidu/wallet/base/stastics/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/wallet/base/stastics/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/wallet/base/stastics/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/wallet/base/stastics/f;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/baidu/wallet/base/stastics/f;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

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
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_2b
    .catchall {:try_start_f .. :try_end_16} :catchall_36

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_36

    :cond_17
    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/stastics/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/base/stastics/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/wallet/base/stastics/f;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/wallet/base/stastics/f;->d:Ljava/lang/String;

    iget-wide v6, p0, Lcom/baidu/wallet/base/stastics/f;->e:J

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/wallet/base/stastics/DataCore;->putEventWithFlush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v2, "wallet_stastics"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v0
.end method
