.class final Lcom/squareup/haha/guava/collect/ComparatorOrdering;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/haha/guava/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    .line 35
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    .local p0, "this":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<TT;>;"
    if-ne p1, p0, :cond_4

    .line 43
    const/4 v1, 0x1

    .line 49
    :goto_3
    return v1

    .line 45
    :cond_4
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    .line 47
    .local v0, "that":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<*>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 49
    .end local v0    # "that":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<*>;"
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lcom/squareup/haha/guava/collect/ComparatorOrdering;, "Lcom/squareup/haha/guava/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
