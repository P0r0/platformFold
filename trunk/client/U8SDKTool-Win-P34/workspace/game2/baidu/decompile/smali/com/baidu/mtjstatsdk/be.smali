.class Lcom/baidu/mtjstatsdk/be;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 202
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/be;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 205
    if-eqz p2, :cond_d

    invoke-virtual {p1, p3}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->isStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    :cond_d
    :goto_d
    return-void

    .line 207
    :cond_e
    iput-object p3, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    .line 209
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 210
    const-string v0, "**************load caceh**start********"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 214
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 216
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/DataCore;->loadWifiData(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadStatData(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->loadLastSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/baidu/mtjstatsdk/bg;->a()Lcom/baidu/mtjstatsdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->a:Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->a(Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;Ljava/lang/String;)V

    .line 233
    monitor-enter p0

    .line 235
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_3d .. :try_end_40} :catch_65
    .catchall {:try_start_3d .. :try_end_40} :catchall_74

    .line 241
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_74

    .line 243
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**************load caceh**end********appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    .line 246
    :cond_61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/be;->c:Landroid/content/Context;

    .line 247
    return-void

    .line 236
    :catch_65
    move-exception v0

    .line 237
    :try_start_66
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/be;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 238
    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 241
    :catchall_74
    move-exception v0

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_74

    throw v0
.end method
