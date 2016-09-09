.class public abstract Lcom/baidu/bdgame/sdk/obf/es;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->a:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->b:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:I

    .line 30
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/es$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/es$1;-><init>(Lcom/baidu/bdgame/sdk/obf/es;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method protected abstract a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kk;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 86
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/es;->a()V

    .line 93
    :goto_d
    return-void

    .line 88
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 89
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kk;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    .line 104
    :goto_d
    return-void

    .line 99
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 100
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 74
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/es;->a(Ljava/lang/String;)V

    .line 81
    :goto_d
    return-void

    .line 76
    :cond_e
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 77
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 78
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d
.end method
