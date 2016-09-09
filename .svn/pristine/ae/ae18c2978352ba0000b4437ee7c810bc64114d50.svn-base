.class Lcom/baidu/mtjstatsdk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mtjstatsdk/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/baidu/mtjstatsdk/w;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/w;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/w;->a:Lcom/baidu/mtjstatsdk/w;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/p;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_10

    .line 29
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->a:Lcom/baidu/mtjstatsdk/af;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;JLjava/lang/String;)J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 31
    :cond_10
    monitor-exit p0

    return-void

    .line 27
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
