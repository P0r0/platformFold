.class Lcom/baidu/mtjstatsdk/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/mtjstatsdk/ax;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 70
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/az;->f:Lcom/baidu/mtjstatsdk/ax;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/az;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/az;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/az;->c:J

    iput-object p6, p0, Lcom/baidu/mtjstatsdk/az;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/mtjstatsdk/az;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 73
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/az;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/baidu/mtjstatsdk/bc;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/az;->f:Lcom/baidu/mtjstatsdk/ax;

    invoke-direct {v0, v1}, Lcom/baidu/mtjstatsdk/bc;-><init>(Lcom/baidu/mtjstatsdk/ax;)V

    .line 77
    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/az;->c:J

    iput-wide v2, v0, Lcom/baidu/mtjstatsdk/bc;->c:J

    .line 78
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/az;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/bc;->a:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/az;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/bc;->b:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/az;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/az;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/az;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mtjstatsdk/ax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/az;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 82
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/az;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 83
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventStat: eventId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/az;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] with label["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mtjstatsdk/az;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is duplicated, older is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/cw;->b([Ljava/lang/Object;)I

    .line 88
    :cond_6f
    iget-object v2, p0, Lcom/baidu/mtjstatsdk/az;->f:Lcom/baidu/mtjstatsdk/ax;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/az;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 90
    const-string v0, "statsdk"

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

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_9c
    return-void
.end method
