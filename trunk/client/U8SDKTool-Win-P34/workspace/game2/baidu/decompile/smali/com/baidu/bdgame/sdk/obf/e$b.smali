.class Lcom/baidu/bdgame/sdk/obf/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/e$b$a;
    }
.end annotation


# static fields
.field private static final e:J = 0xbb8L


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lcom/baidu/bdgame/sdk/obf/e;

.field private d:J


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/e;)V
    .registers 6

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->b:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->c:Lcom/baidu/bdgame/sdk/obf/e;

    .line 96
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/a$a;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/a$a;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/g;)V

    .line 97
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$b;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/bdgame/sdk/obf/c$b;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/g;)V

    .line 101
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->d:J

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/e$b;)J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/e$b;J)J
    .registers 4

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/e$b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/e$b;)Lcom/baidu/bdgame/sdk/obf/e;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->c:Lcom/baidu/bdgame/sdk/obf/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/f;)V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/e$b$a;

    invoke-direct {v1, p0, p2}, Lcom/baidu/bdgame/sdk/obf/e$b$a;-><init>(Lcom/baidu/bdgame/sdk/obf/e$b;Lcom/baidu/bdgame/sdk/obf/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method a(Z)V
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/f;

    .line 113
    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/f;->a(Z)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 115
    :cond_19
    return-void
.end method
