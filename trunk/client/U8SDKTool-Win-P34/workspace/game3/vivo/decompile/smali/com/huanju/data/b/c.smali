.class public abstract Lcom/huanju/data/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/net/f;


# instance fields
.field private a:Lcom/huanju/data/net/e;

.field private b:Lcom/huanju/data/net/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/c;->a:Lcom/huanju/data/net/e;

    new-instance v0, Lcom/huanju/data/net/g;

    invoke-direct {v0}, Lcom/huanju/data/net/g;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/c;->b:Lcom/huanju/data/net/d;

    return-void
.end method

.method private a(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 5

    new-instance v0, Lcom/huanju/data/b/a;

    invoke-direct {v0, p0, p1}, Lcom/huanju/data/b/a;-><init>(Lcom/huanju/data/b/c;Lcom/huanju/data/net/AbstractNetTask;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/b/c;->a:Lcom/huanju/data/net/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/b/c;->a:Lcom/huanju/data/net/e;

    invoke-virtual {v0, p1}, Lcom/huanju/data/net/e;->a(Lcom/huanju/data/net/AbstractNetTask;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/huanju/data/net/AbstractNetTask;
.end method

.method public a(Lcom/huanju/data/net/d;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/b/c;->b:Lcom/huanju/data/net/d;

    return-void
.end method

.method public a(Lcom/huanju/data/net/e;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/b/c;->a:Lcom/huanju/data/net/e;

    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/huanju/data/b/c;->a()Lcom/huanju/data/net/AbstractNetTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huanju/data/net/AbstractNetTask;->setListenter(Lcom/huanju/data/net/f;)V

    iget-object v1, p0, Lcom/huanju/data/b/c;->a:Lcom/huanju/data/net/e;

    if-nez v1, :cond_f

    invoke-direct {p0, v0}, Lcom/huanju/data/b/c;->a(Lcom/huanju/data/net/AbstractNetTask;)V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0, v0}, Lcom/huanju/data/b/c;->b(Lcom/huanju/data/net/AbstractNetTask;)V

    goto :goto_e
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/b/c;->b:Lcom/huanju/data/net/d;

    invoke-interface {v0}, Lcom/huanju/data/net/d;->a()Z

    move-result v0

    return v0
.end method
