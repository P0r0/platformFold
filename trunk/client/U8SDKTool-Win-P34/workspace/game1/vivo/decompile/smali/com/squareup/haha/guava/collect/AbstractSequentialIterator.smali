.class public abstract Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "AbstractSequentialIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private nextOrNull:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method protected abstract computeNext$7713a341()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 66
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;, "Lcom/squareup/haha/guava/collect/AbstractSequentialIterator<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;, "Lcom/squareup/haha/guava/collect/AbstractSequentialIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 72
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 75
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_15

    .line 77
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->computeNext$7713a341()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    return-object v0

    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->computeNext$7713a341()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    throw v0
.end method
