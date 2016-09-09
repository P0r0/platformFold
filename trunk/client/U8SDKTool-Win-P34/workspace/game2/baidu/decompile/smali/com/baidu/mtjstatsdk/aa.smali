.class Lcom/baidu/mtjstatsdk/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mtjstatsdk/aa;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/mtjstatsdk/aa;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/aa;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/aa;->a:Lcom/baidu/mtjstatsdk/aa;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/aa;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/j;->c([B)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 106
    :goto_8
    return-object v0

    .line 103
    :catch_9
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/o;->a(Ljava/lang/Throwable;)I

    .line 106
    const-string v0, ""

    goto :goto_8
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 83
    if-eqz p2, :cond_17

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 84
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/aa;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    :cond_15
    iput-object p2, p0, Lcom/baidu/mtjstatsdk/aa;->b:Ljava/lang/String;

    .line 89
    :cond_17
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/aa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/baidu/mtjstatsdk/aa;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 116
    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 118
    sget-object v1, Lcom/baidu/mtjstatsdk/af;->c:Lcom/baidu/mtjstatsdk/af;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/mtjstatsdk/af;->a(Landroid/content/Context;JLjava/lang/String;)J

    .line 119
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    const/4 v2, 0x1

    .line 59
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    const/4 v1, 0x0

    .line 63
    :try_start_a
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_19

    move-result-object v0

    .line 68
    :goto_e
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 69
    :cond_16
    const-string v0, ""

    .line 73
    :goto_18
    return-object v0

    .line 64
    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_e

    .line 72
    :cond_1c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/aa;->b(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 36
    monitor-exit p0

    return-void

    .line 35
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
