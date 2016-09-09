.class public abstract Lcom/squareup/haha/guava/collect/AbstractIterator;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/AbstractIterator$1;,
        Lcom/squareup/haha/guava/collect/AbstractIterator$State;
    }
.end annotation

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
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state$7fb44498:I


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIterator;, "Lcom/squareup/haha/guava/collect/AbstractIterator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    sget v3, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->FAILED$7fb44498:I

    if-eq v0, v3, :cond_2d

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkState(Z)V

    .line 131
    sget-object v0, Lcom/squareup/haha/guava/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    iget v3, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_32

    .line 1142
    sget v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->FAILED$7fb44498:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    .line 1143
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 1144
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    sget v3, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->DONE$7fb44498:I

    if-eq v0, v3, :cond_2c

    .line 1145
    sget v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->READY$7fb44498:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    move v2, v1

    .line 1146
    :cond_2c
    :goto_2c
    :pswitch_2c
    return v2

    :cond_2d
    move v0, v2

    .line 130
    goto :goto_9

    :pswitch_2f
    move v2, v1

    .line 135
    goto :goto_2c

    .line 131
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractIterator;, "Lcom/squareup/haha/guava/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 154
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 156
    :cond_c
    sget v1, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->NOT_READY$7fb44498:I

    iput v1, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    .line 157
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 158
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 159
    return-object v0
.end method
