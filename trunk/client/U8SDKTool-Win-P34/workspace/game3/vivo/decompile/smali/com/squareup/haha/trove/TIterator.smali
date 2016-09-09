.class abstract Lcom/squareup/haha/trove/TIterator;
.super Ljava/lang/Object;
.source "TIterator.java"


# instance fields
.field protected _expectedSize:I

.field private _hash:Lcom/squareup/haha/trove/THash;

.field protected _index:I


# direct methods
.method public constructor <init>(Lcom/squareup/haha/trove/THash;)V
    .registers 3
    .param p1, "hash"    # Lcom/squareup/haha/trove/THash;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    .line 46
    iget-object v0, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THash;->size()I

    move-result v0

    iput v0, p0, Lcom/squareup/haha/trove/TIterator;->_expectedSize:I

    .line 47
    iget-object v0, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THash;->capacity()I

    move-result v0

    iput v0, p0, Lcom/squareup/haha/trove/TIterator;->_index:I

    .line 48
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/squareup/haha/trove/TIterator;->nextIndex()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final moveToNextIndex()V
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/squareup/haha/trove/TIterator;->nextIndex()I

    move-result v0

    iput v0, p0, Lcom/squareup/haha/trove/TIterator;->_index:I

    if-gez v0, :cond_e

    .line 89
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 91
    :cond_e
    return-void
.end method

.method protected abstract nextIndex()I
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 67
    iget v0, p0, Lcom/squareup/haha/trove/TIterator;->_expectedSize:I

    iget-object v1, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v1}, Lcom/squareup/haha/trove/THash;->size()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 68
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 71
    :cond_11
    iget-object v0, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THash;->stopCompactingOnRemove()V

    .line 73
    :try_start_16
    iget-object v0, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    iget v1, p0, Lcom/squareup/haha/trove/TIterator;->_index:I

    invoke-virtual {v0, v1}, Lcom/squareup/haha/trove/THash;->removeAt(I)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_29

    .line 75
    iget-object v0, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v0, v2}, Lcom/squareup/haha/trove/THash;->startCompactingOnRemove(Z)V

    .line 78
    iget v0, p0, Lcom/squareup/haha/trove/TIterator;->_expectedSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/trove/TIterator;->_expectedSize:I

    .line 79
    return-void

    .line 75
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/squareup/haha/trove/TIterator;->_hash:Lcom/squareup/haha/trove/THash;

    invoke-virtual {v1, v2}, Lcom/squareup/haha/trove/THash;->startCompactingOnRemove(Z)V

    throw v0
.end method
