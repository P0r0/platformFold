.class final Lcom/vivo/sdkplugin/Utils/a;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    monitor-enter v1

    :try_start_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v4}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;J)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->onFinish()V

    :goto_29
    monitor-exit v1

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/a;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_4a

    goto :goto_29

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v6, 0x64

    iget-object v5, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    mul-long/2addr v6, v8

    iget-object v5, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v8

    div-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->onTick(JI)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/a;->a:Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_29

    :cond_87
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_89
    .catchall {:try_start_4d .. :try_end_89} :catchall_4a

    goto :goto_29
.end method
