.class Lcom/huanju/data/net/a;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/huanju/data/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/a/g",
            "<",
            "Lcom/huanju/data/net/AbstractNetTask;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/huanju/data/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/a/g",
            "<",
            "Lcom/huanju/data/net/AbstractNetTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/huanju/data/a/g;

    invoke-direct {v0}, Lcom/huanju/data/a/g;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    new-instance v0, Lcom/huanju/data/a/g;

    invoke-direct {v0}, Lcom/huanju/data/a/g;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/net/a;->d:Lcom/huanju/data/a/g;

    iput-object p1, p0, Lcom/huanju/data/net/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/data/net/a;->b:Z

    iget-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    invoke-virtual {v0}, Lcom/huanju/data/a/g;->c()V

    return-void
.end method

.method public a(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    invoke-virtual {v0, p1}, Lcom/huanju/data/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    new-instance v1, Lcom/huanju/data/net/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/huanju/data/net/j;-><init>(Lcom/huanju/data/net/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/g;->a(Lcom/huanju/data/a/e;)V

    iget-object v0, p0, Lcom/huanju/data/net/a;->d:Lcom/huanju/data/a/g;

    new-instance v1, Lcom/huanju/data/net/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/huanju/data/net/i;-><init>(Lcom/huanju/data/net/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/g;->a(Lcom/huanju/data/a/e;)V

    goto :goto_c
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    iget-object v1, p0, Lcom/huanju/data/net/a;->d:Lcom/huanju/data/a/g;

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/g;->a(Lcom/huanju/data/a/g;)V

    return-void
.end method

.method public run()V
    .registers 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/huanju/data/net/a;->b:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/huanju/data/net/a;->c:Lcom/huanju/data/a/g;

    invoke-virtual {v0}, Lcom/huanju/data/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/net/AbstractNetTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huanju/data/net/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/data/net/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/huanju/data/net/a;->d:Lcom/huanju/data/a/g;

    invoke-virtual {v1, v0}, Lcom/huanju/data/a/g;->a(Ljava/lang/Object;)V

    :cond_1b
    invoke-virtual {v0}, Lcom/huanju/data/net/AbstractNetTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huanju/data/net/a;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huanju/data/net/AbstractNetTask;->execute()V

    goto :goto_0

    :cond_26
    return-void
.end method
