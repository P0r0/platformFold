.class abstract Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;
.super Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3
    .param p1, "size"    # I
    .param p2, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;-><init>()V

    .line 69
    invoke-static {p2, p1}, Lcom/squareup/haha/guava/base/Ascii;->checkPositionIndex(II)I

    .line 70
    iput p1, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->size:I

    .line 71
    iput p2, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 76
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    iget v1, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 94
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    if-lez v0, :cond_6

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
            "()TE;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 84
    :cond_c
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 89
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 100
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 107
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;, "Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
