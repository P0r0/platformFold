.class public Lcom/baidu/bdgame/sdk/obf/km;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ml;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/km;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/km;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/km;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dq;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dq;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/km;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/km$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/km$1;-><init>(Lcom/baidu/bdgame/sdk/obf/km;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 42
    return-void
.end method
