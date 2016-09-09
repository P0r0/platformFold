.class public final Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;
.super Ljava/lang/Object;
.source "TObjectIdentityHashingStrategy.java"

# interfaces
.implements Lcom/squareup/haha/trove/TObjectHashingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/haha/trove/TObjectHashingStrategy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    .local p0, "this":Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;, "Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeHashCode(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;, "Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy;, "Lcom/squareup/haha/trove/TObjectIdentityHashingStrategy<TT;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
