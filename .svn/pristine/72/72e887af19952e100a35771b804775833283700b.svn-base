.class Lcom/baidu/mtjstatsdk/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mtjstatsdk/bg;


# direct methods
.method constructor <init>(Lcom/baidu/mtjstatsdk/bg;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 74
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 77
    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache start"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/DataCore;->putExceptionToCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache end"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 81
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 82
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;Ljava/util/Timer;)Ljava/util/Timer;

    .line 84
    :cond_32
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {}, Lcom/baidu/mtjstatsdk/co;->values()[Lcom/baidu/mtjstatsdk/co;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadSendStrategy(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;Lcom/baidu/mtjstatsdk/co;)Lcom/baidu/mtjstatsdk/co;

    .line 85
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadSendStrategyTime(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;I)I

    .line 86
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadOnlyWifiChannel(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/bg;->a(Lcom/baidu/mtjstatsdk/bg;Z)Z

    .line 88
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/bg;->b(Lcom/baidu/mtjstatsdk/bg;)Lcom/baidu/mtjstatsdk/co;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/co;->c:Lcom/baidu/mtjstatsdk/co;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/co;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 89
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/bg;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/baidu/mtjstatsdk/bg;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/mtjstatsdk/bi;

    invoke-direct {v2, p0}, Lcom/baidu/mtjstatsdk/bi;-><init>(Lcom/baidu/mtjstatsdk/bh;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void

    .line 90
    :cond_9a
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/bg;->b(Lcom/baidu/mtjstatsdk/bg;)Lcom/baidu/mtjstatsdk/co;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/co;->b:Lcom/baidu/mtjstatsdk/co;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/co;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 96
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bh;->c:Lcom/baidu/mtjstatsdk/bg;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mtjstatsdk/bg;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7c
.end method
