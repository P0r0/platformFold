.class public abstract Lcom/squareup/haha/guava/collect/ForwardingList;
.super Lcom/squareup/haha/guava/collect/ForwardingCollection;
.source "ForwardingList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    .local p2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 119
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingList;, "Lcom/squareup/haha/guava/collect/ForwardingList<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
