.class public abstract Lcom/huanju/data/content/raw/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/net/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huanju/data/net/f;"
    }
.end annotation


# instance fields
.field protected mResponseParser:Lcom/huanju/data/content/raw/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huanju/data/content/raw/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTaskManager:Lcom/huanju/data/net/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/content/raw/a;->mTaskManager:Lcom/huanju/data/net/e;

    iput-object v0, p0, Lcom/huanju/data/content/raw/a;->mResponseParser:Lcom/huanju/data/content/raw/b;

    return-void
.end method

.method private startBySelf(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 5

    new-instance v0, Lcom/huanju/data/content/raw/c;

    invoke-direct {v0, p0, p1}, Lcom/huanju/data/content/raw/c;-><init>(Lcom/huanju/data/content/raw/a;Lcom/huanju/data/net/AbstractNetTask;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startByTaskManager(Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/content/raw/a;->mTaskManager:Lcom/huanju/data/net/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/content/raw/a;->mTaskManager:Lcom/huanju/data/net/e;

    invoke-virtual {v0, p1}, Lcom/huanju/data/net/e;->a(Lcom/huanju/data/net/AbstractNetTask;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected abstract createNetTask()Lcom/huanju/data/net/AbstractNetTask;
.end method

.method protected abstract createParser()Lcom/huanju/data/content/raw/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huanju/data/content/raw/b",
            "<TT;>;"
        }
    .end annotation
.end method

.method public process()V
    .registers 3

    invoke-virtual {p0}, Lcom/huanju/data/content/raw/a;->createParser()Lcom/huanju/data/content/raw/b;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/a;->mResponseParser:Lcom/huanju/data/content/raw/b;

    invoke-virtual {p0}, Lcom/huanju/data/content/raw/a;->createNetTask()Lcom/huanju/data/net/AbstractNetTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huanju/data/net/AbstractNetTask;->setListenter(Lcom/huanju/data/net/f;)V

    iget-object v1, p0, Lcom/huanju/data/content/raw/a;->mTaskManager:Lcom/huanju/data/net/e;

    if-nez v1, :cond_15

    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/a;->startBySelf(Lcom/huanju/data/net/AbstractNetTask;)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, v0}, Lcom/huanju/data/content/raw/a;->startByTaskManager(Lcom/huanju/data/net/AbstractNetTask;)V

    goto :goto_14
.end method

.method public setNetTaskManager(Lcom/huanju/data/net/e;)V
    .registers 2

    iput-object p1, p0, Lcom/huanju/data/content/raw/a;->mTaskManager:Lcom/huanju/data/net/e;

    return-void
.end method
