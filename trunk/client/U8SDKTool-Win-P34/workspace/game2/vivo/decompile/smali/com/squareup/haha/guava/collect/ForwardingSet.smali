.class public abstract Lcom/squareup/haha/guava/collect/ForwardingSet;
.super Lcom/squareup/haha/guava/collect/ForwardingCollection;
.source "ForwardingSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSet;, "Lcom/squareup/haha/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 48
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSet;, "Lcom/squareup/haha/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
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
    .line 59
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSet;, "Lcom/squareup/haha/guava/collect/ForwardingSet<TE;>;"
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lcom/squareup/haha/guava/collect/ForwardingSet;, "Lcom/squareup/haha/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
