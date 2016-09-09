.class Lcom/baidu/bdgame/sdk/obf/dq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dq;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dq;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dq$b;->a:Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dq$b;->b:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dq$b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dq$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 88
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/at;->a()Lcom/baidu/bdgame/sdk/obf/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/at;->e()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dq$b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/hj;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hj;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dq$b$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dq$b$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dq$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->b(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 102
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dq$b;->a()V

    .line 85
    return-void
.end method
