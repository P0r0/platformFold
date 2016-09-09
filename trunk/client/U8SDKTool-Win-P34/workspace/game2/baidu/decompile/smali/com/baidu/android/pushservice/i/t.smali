.class Lcom/baidu/android/pushservice/i/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/i/s;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/i/s;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/t;->a:Lcom/baidu/android/pushservice/i/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/t;->a:Lcom/baidu/android/pushservice/i/s;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/s;->a(Lcom/baidu/android/pushservice/i/s;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    const-wide/16 v4, 0x5

    rem-long/2addr v2, v4

    long-to-int v2, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    if-nez v2, :cond_3f

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    :try_start_30
    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/t;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_45

    :goto_33
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/t;->a:Lcom/baidu/android/pushservice/i/s;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/s;->b(Lcom/baidu/android/pushservice/i/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/a/b;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3f
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/t;->a:Lcom/baidu/android/pushservice/i/s;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/s;->c()V

    goto :goto_8

    :catch_45
    move-exception v0

    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method
