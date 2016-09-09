.class Lcom/baidu/mtjstatsdk/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/baidu/mtjstatsdk/ax;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/ba;->f:Lcom/baidu/mtjstatsdk/ax;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/ba;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/ba;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mtjstatsdk/ba;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/baidu/mtjstatsdk/ba;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ba;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ba;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/ax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/baidu/mtjstatsdk/bc;

    .line 105
    if-nez v4, :cond_60

    .line 106
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventStat: eventId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with label["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not started or alread done."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    .line 129
    :cond_5f
    :goto_5f
    return-void

    .line 112
    :cond_60
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->c:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mtjstatsdk/bc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->d:Ljava/lang/String;

    iget-object v2, v4, Lcom/baidu/mtjstatsdk/bc;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 113
    :cond_74
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 114
    const-string v0, "statsdk"

    const-string v1, "EventStat: Wrong Case, eventId/label pair not match"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 118
    :cond_84
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/ba;->e:J

    iget-wide v6, v4, Lcom/baidu/mtjstatsdk/bc;->c:J

    sub-long v6, v0, v6

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_a7

    .line 121
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 122
    const-string v0, "statsdk"

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 125
    :cond_a7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ba;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->d:Ljava/lang/String;

    iget-wide v4, v4, Lcom/baidu/mtjstatsdk/bc;->c:J

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/ba;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5f
.end method
