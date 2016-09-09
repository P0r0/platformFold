.class Lcom/baidu/mtjstatsdk/bb;
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
    .line 135
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bb;->f:Lcom/baidu/mtjstatsdk/ax;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bb;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/bb;->c:J

    iput-object p6, p0, Lcom/baidu/mtjstatsdk/bb;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/mtjstatsdk/bb;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 138
    invoke-static {}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->instance()Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bb;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/LoadCacheAnalysis;->checkLoadCacheFinished(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/bb;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_23

    .line 141
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 142
    const-string v0, "statsdk"

    const-string v1, "EventStat: Wrong Case, Duration must be positive"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_22
    :goto_22
    return-void

    .line 145
    :cond_23
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bb;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bb;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/mtjstatsdk/bb;->c:J

    iget-object v8, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bb;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_22
.end method
