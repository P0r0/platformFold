.class public abstract Lcom/youju/statistics/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/youju/statistics/b/n;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/youju/statistics/b/n;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7
    .catchall {:try_start_0 .. :try_end_3} :catchall_f

    invoke-direct {p0}, Lcom/youju/statistics/b/n;->c()V

    :goto_6
    return-void

    :catch_7
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    invoke-direct {p0}, Lcom/youju/statistics/b/n;->c()V

    goto :goto_6

    :catchall_f
    move-exception v0

    invoke-direct {p0}, Lcom/youju/statistics/b/n;->c()V

    throw v0
.end method
