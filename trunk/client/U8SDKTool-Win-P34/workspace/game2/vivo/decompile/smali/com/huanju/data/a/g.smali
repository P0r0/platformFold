.class public Lcom/huanju/data/a/g;
.super Ljava/lang/Object;


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
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    if-eqz v0, :cond_15

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_12

    goto :goto_1

    :catch_d
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_1

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    monitor-exit p0

    return-object v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_12

    goto :goto_1e
.end method

.method public declared-synchronized a(Lcom/huanju/data/a/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/a/e",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/huanju/data/a/e;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    goto :goto_10

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_27
    :try_start_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_24

    goto :goto_31
.end method

.method public declared-synchronized a(Lcom/huanju/data/a/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/a/g",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/huanju/data/a/g;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/huanju/data/a/g;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/huanju/data/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
