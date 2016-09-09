.class public abstract Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private b:J

.field private c:J

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/a;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/a;-><init>(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b:J

    iput-wide p3, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a:J

    iput-wide p1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J
    .registers 3

    iget-wide v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;J)V
    .registers 4

    iput-wide p1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c:J

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J
    .registers 3

    iget-wide v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;)J
    .registers 3

    iget-wide v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b:J

    return-wide v0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(JI)V
.end method

.method public final pause()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final resume()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final seek(I)V
    .registers 6

    monitor-enter p0

    rsub-int/lit8 v0, p1, 0x64

    int-to-long v0, v0

    :try_start_4
    iget-wide v2, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->b:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c:J

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start()Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->onFinish()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f

    move-object v0, p0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/vivo/sdkplugin/Utils/AdvancedCountdownTimer;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1f

    move-object v0, p0

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
