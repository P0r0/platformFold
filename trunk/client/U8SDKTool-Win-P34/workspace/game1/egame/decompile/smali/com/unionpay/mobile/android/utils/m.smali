.class final Lcom/unionpay/mobile/android/utils/m;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/utils/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/utils/k;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/m;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_4} :catch_3b

    const-wide/16 v0, 0x3e8

    :try_start_6
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_38

    :goto_a
    iget-object v1, p0, Lcom/unionpay/mobile/android/utils/m;->a:Lcom/unionpay/mobile/android/utils/k;

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/unionpay/mobile/android/utils/k;->b()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/unionpay/mobile/android/utils/k;->b()Lorg/simalliance/openmobileapi/SEService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_1d
    const-string v0, "uppay"

    const-string v2, "se service connection time out"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/m;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->b(Lcom/unionpay/mobile/android/utils/k;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/m;->a:Lcom/unionpay/mobile/android/utils/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/k;->b(Lcom/unionpay/mobile/android/utils/k;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_56

    return-void

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0

    throw v0
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method
