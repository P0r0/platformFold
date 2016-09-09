.class abstract Lcom/baidu/bdgame/sdk/obf/ng$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private a:J

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/ng;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ng;)V
    .registers 4

    .prologue
    .line 355
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ng$a;->c:Lcom/baidu/bdgame/sdk/obf/ng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ng$a;->a:J

    .line 357
    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .prologue
    .line 360
    const-wide/16 v0, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/ng$a;->a:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 361
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 362
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ng$a$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ng$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ng$a;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    :goto_1d
    return-void

    .line 370
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ng$a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1d
.end method
