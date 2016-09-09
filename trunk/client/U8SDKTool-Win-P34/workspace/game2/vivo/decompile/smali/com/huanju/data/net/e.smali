.class public Lcom/huanju/data/net/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huanju/data/net/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huanju/data/net/e;->a:Landroid/content/Context;

    new-instance v0, Lcom/huanju/data/net/a;

    invoke-direct {v0, p1}, Lcom/huanju/data/net/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0}, Lcom/huanju/data/net/a;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0}, Lcom/huanju/data/net/a;->a()V

    return-void
.end method

.method public a(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 4

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    move-result-object v0

    sget-object v1, Lcom/huanju/data/net/AbstractNetTask$LaunchMode;->updateold:Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/huanju/data/net/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0, p1}, Lcom/huanju/data/net/a;->a(Lcom/huanju/data/net/AbstractNetTask;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0, p1}, Lcom/huanju/data/net/a;->a(Lcom/huanju/data/net/AbstractNetTask;)V

    goto :goto_18
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/data/net/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/net/e;->b:Lcom/huanju/data/net/a;

    invoke-virtual {v0}, Lcom/huanju/data/net/a;->b()V

    return-void
.end method
