.class public Lcom/baidu/bdgame/sdk/obf/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ek$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/es;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ek$3;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ek$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ek;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->d:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ek;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ek;->c:Lcom/baidu/bdgame/sdk/obf/es;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->c:Lcom/baidu/bdgame/sdk/obf/es;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    const-string v4, "bdp_null_orderinfo"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    .line 84
    :cond_21
    :goto_21
    return-void

    .line 62
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->c:Lcom/baidu/bdgame/sdk/obf/es;

    if-eqz v0, :cond_21

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->c:Lcom/baidu/bdgame/sdk/obf/es;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ek;->a:Landroid/app/Activity;

    const-string v3, "bdp_payment_process_paying"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/es;->b(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ek$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ek$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ek;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ek$1;->start()V

    goto :goto_21
.end method

.method public static a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/ek$a;)V
    .registers 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ek$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ek$2;-><init>(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/ek$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/es",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ek;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 40
    if-eqz p2, :cond_1e

    .line 41
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    .line 49
    :cond_1e
    :goto_1e
    monitor-exit v1

    return-void

    .line 46
    :cond_20
    :try_start_20
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/es;)V

    .line 47
    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->a()V
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_29

    goto :goto_1e

    .line 39
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ek;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek;->c:Lcom/baidu/bdgame/sdk/obf/es;

    return-object v0
.end method
