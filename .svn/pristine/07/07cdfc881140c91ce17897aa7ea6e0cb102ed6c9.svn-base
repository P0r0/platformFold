.class public final Lcom/squareup/haha/guava/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;,
        Lcom/squareup/haha/guava/collect/Multisets$EntrySet;,
        Lcom/squareup/haha/guava/collect/Multisets$ElementSet;,
        Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;,
        Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1063
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$5;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/Multisets$5;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 834
    const/4 v3, 0x0

    .line 844
    :goto_7
    return v3

    .line 836
    :cond_8
    instance-of v3, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v3, :cond_2f

    move-object v2, p1

    .line 2060
    check-cast v2, Lcom/squareup/haha/guava/collect/Multiset;

    .line 838
    .local v2, "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 839
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_17

    .line 842
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<+TE;>;"
    :cond_2f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/squareup/haha/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 844
    :cond_36
    const/4 v3, 0x1

    goto :goto_7
.end method

.method static equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 803
    if-ne p1, p0, :cond_5

    .line 825
    :cond_4
    :goto_4
    return v3

    .line 806
    :cond_5
    instance-of v5, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v5, :cond_4e

    move-object v2, p1

    .line 807
    check-cast v2, Lcom/squareup/haha/guava/collect/Multiset;

    .line 814
    .local v2, "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v6

    if-ne v5, v6, :cond_28

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_2a

    :cond_28
    move v3, v4

    .line 816
    goto :goto_4

    .line 818
    :cond_2a
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 819
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_32

    move v3, v4

    .line 820
    goto :goto_4

    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    :cond_4e
    move v3, v4

    .line 825
    goto :goto_4
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/squareup/haha/guava/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/squareup/haha/guava/collect/Multiset;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v1, :cond_13

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .end local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 855
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_a
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_13
    move-object v0, p1

    .line 852
    goto :goto_a
.end method

.method static retainAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .end local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 867
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_d
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_16
    move-object v0, p1

    .line 864
    goto :goto_d
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;I)I
    .registers 6
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 874
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 876
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 878
    .local v1, "oldCount":I
    sub-int v0, p2, v1

    .line 879
    .local v0, "delta":I
    if-lez v0, :cond_11

    .line 880
    invoke-interface {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 885
    :cond_10
    :goto_10
    return v1

    .line 881
    :cond_11
    if-gez v0, :cond_10

    .line 882
    neg-int v2, v0

    invoke-interface {p0, p1, v2}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_10
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;II)Z
    .registers 5
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "self":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 894
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 896
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 897
    invoke-interface {p0, p1, p3}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static sizeImpl(Lcom/squareup/haha/guava/collect/Multiset;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1049
    .local p0, "multiset":Lcom/squareup/haha/guava/collect/Multiset;, "Lcom/squareup/haha/guava/collect/Multiset<*>;"
    const-wide/16 v2, 0x0

    .line 1050
    .local v2, "size":J
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1051
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1052
    goto :goto_a

    .line 1053
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<*>;"
    :cond_1d
    invoke-static {v2, v3}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method
