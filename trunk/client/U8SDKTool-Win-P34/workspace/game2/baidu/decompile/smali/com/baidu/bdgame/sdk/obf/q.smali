.class public Lcom/baidu/bdgame/sdk/obf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/q;->a:Lcom/baidu/bdgame/sdk/obf/o;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/q;)Lcom/baidu/bdgame/sdk/obf/o;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/q;->a:Lcom/baidu/bdgame/sdk/obf/o;

    return-object v0
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/bdgame/sdk/obf/o",
            "<TT;>;)",
            "Lcom/baidu/bdgame/sdk/obf/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/q;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/q;-><init>(Lcom/baidu/bdgame/sdk/obf/o;)V

    return-object v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/q$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/q$1;-><init>(Lcom/baidu/bdgame/sdk/obf/q;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/q;->a:Lcom/baidu/bdgame/sdk/obf/o;

    if-nez v0, :cond_5

    .line 38
    :goto_4
    return-void

    .line 28
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/q;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 33
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/q;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_4

    .line 34
    :catch_19
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method