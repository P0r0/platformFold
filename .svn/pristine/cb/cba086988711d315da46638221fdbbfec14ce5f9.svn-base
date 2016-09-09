.class public Lcom/squareup/haha/guava/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# instance fields
.field final separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/base/Ascii;)V
    .registers 3
    .param p1, "prototype"    # Lcom/squareup/haha/guava/base/Ascii;

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    iget-object v0, p1, Lcom/squareup/haha/guava/base/Ascii;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Ascii;->separator:Ljava/lang/String;

    .line 2089
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/base/Ascii;B)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/haha/guava/base/Ascii;

    .prologue
    .line 3066
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/Ascii;-><init>(Lcom/squareup/haha/guava/base/Ascii;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Ascii;->separator:Ljava/lang/String;

    .line 2085
    return-void
.end method

.method static badPositionIndex(IILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4362
    if-gez p0, :cond_16

    .line 4363
    const-string v0, "%s (%s) must not be negative"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4367
    :goto_15
    return-object v0

    .line 4364
    :cond_16
    if-gez p1, :cond_2d

    .line 4365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4367
    :cond_2d
    const-string v0, "%s (%s) must not be greater than size (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public static checkArgument(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .prologue
    .line 4110
    if-nez p0, :cond_8

    .line 4111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4113
    :cond_8
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 4147
    if-nez p0, :cond_c

    .line 4148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4150
    :cond_c
    return-void
.end method

.method public static checkElementIndex(II)I
    .registers 9
    .param p0, "index"    # I
    .param p1, "size"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4295
    const-string v0, "index"

    .line 4312
    if-ltz p0, :cond_9

    if-lt p0, p1, :cond_50

    .line 4313
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 4319
    if-gez p0, :cond_21

    .line 4320
    const-string v2, "%s (%s) must not be negative"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4313
    :goto_1d
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4321
    :cond_21
    if-gez p1, :cond_38

    .line 4322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4324
    :cond_38
    const-string v2, "%s (%s) must be less than size (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 4295
    :cond_50
    return p0
.end method

.method public static checkNonnegative(ILjava/lang/String;)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5038
    if-gez p0, :cond_1f

    .line 5039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be negative but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5041
    :cond_1f
    return p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 4212
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 4213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4215
    :cond_8
    return-object p0
.end method

.method public static checkPositionIndex(II)I
    .registers 4
    .param p0, "index"    # I
    .param p1, "size"    # I

    .prologue
    .line 4339
    const-string v0, "index"

    .line 4355
    if-ltz p0, :cond_6

    if-le p0, p1, :cond_10

    .line 4356
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4339
    :cond_10
    return p0
.end method

.method public static checkPositionIndexes(III)V
    .registers 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "size"    # I

    .prologue
    .line 4385
    if-ltz p0, :cond_6

    if-lt p1, p0, :cond_6

    if-le p1, p2, :cond_39

    .line 4386
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 4391
    if-ltz p0, :cond_c

    if-le p0, p2, :cond_16

    .line 4392
    :cond_c
    const-string v0, "start index"

    invoke-static {p0, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4386
    :goto_12
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4394
    :cond_16
    if-ltz p1, :cond_1a

    if-le p1, p2, :cond_21

    .line 4395
    :cond_1a
    const-string v0, "end index"

    invoke-static {p1, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 4398
    :cond_21
    const-string v0, "end index (%s) must not be less than start index (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/squareup/haha/guava/base/Ascii;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 4388
    :cond_39
    return-void
.end method

.method public static checkRemove(Z)V
    .registers 3
    .param p0, "canRemove"    # Z

    .prologue
    .line 5049
    const-string v0, "no calls to next() since the last call to remove()"

    .line 5175
    if-nez p0, :cond_e

    .line 5176
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5050
    :cond_e
    return-void
.end method

.method public static checkState(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .prologue
    .line 4160
    if-nez p0, :cond_8

    .line 4161
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 4163
    :cond_8
    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 4057
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8354
    if-ne p0, p1, :cond_5

    .line 8368
    :cond_4
    :goto_4
    return v1

    .line 8357
    :cond_5
    instance-of v3, p1, Ljava/util/Set;

    if-eqz v3, :cond_24

    move-object v0, p1

    .line 8358
    check-cast v0, Ljava/util/Set;

    .line 8361
    .local v0, "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_c
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1c

    invoke-interface {p0, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_21

    move-result v3

    if-nez v3, :cond_4

    :cond_1c
    move v1, v2

    goto :goto_4

    .line 8363
    :catch_1e
    move-exception v1

    move v1, v2

    goto :goto_4

    .line 8365
    :catch_21
    move-exception v1

    move v1, v2

    goto :goto_4

    .end local v0    # "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_24
    move v1, v2

    .line 8368
    goto :goto_4
.end method

.method static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 4413
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4417
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 4418
    .local v4, "templateStart":I
    const/4 v1, 0x0

    .line 4419
    .local v1, "i":I
    :goto_13
    array-length v5, p1

    if-ge v1, v5, :cond_31

    .line 4420
    const-string v5, "%s"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 4421
    .local v3, "placeholderStart":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_31

    .line 4424
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4425
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4426
    add-int/lit8 v4, v3, 0x2

    move v1, v2

    .line 4427
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_13

    .line 4428
    .end local v3    # "placeholderStart":I
    :cond_31
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4431
    array-length v5, p1

    if-ge v1, v5, :cond_5e

    .line 4432
    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4433
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 4434
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_48
    array-length v5, p1

    if-ge v1, v5, :cond_59

    .line 4435
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_48

    .line 4438
    :cond_59
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4441
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 5775
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 9105
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashCodeImpl(Ljava/util/Set;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 8340
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v0, 0x0

    .line 8341
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8342
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v0, v3

    .line 8344
    xor-int/lit8 v3, v0, -0x1

    xor-int/lit8 v0, v3, -0x1

    .line 8346
    goto :goto_5

    .line 8342
    :cond_1b
    const/4 v3, 0x0

    goto :goto_15

    .line 8347
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1d
    return v0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 7084
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6147
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Lcom/squareup/haha/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 6148
    return-object v0
.end method

.method public static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 8547
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8548
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v0, :cond_d

    .line 8549
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .end local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 8558
    .restart local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_d
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_24

    .line 8559
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    .line 8561
    :goto_23
    return v0

    :cond_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/squareup/haha/guava/base/Ascii;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_23
.end method

.method public static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 8539
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 8540
    .local v0, "changed":Z
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8541
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 8543
    :cond_11
    return v0
.end method

.method public static removeIfFromRandomAccessList(Ljava/util/List;Lcom/squareup/haha/guava/base/Predicate;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Lcom/squareup/haha/guava/base/Predicate;, "Lcom/squareup/haha/guava/base/Predicate<-TT;>;"
    const/4 v3, 0x1

    .line 5187
    const/4 v1, 0x0

    .line 5188
    .local v1, "from":I
    const/4 v2, 0x0

    .line 5190
    .local v2, "to":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_40

    .line 5191
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 5192
    .local v0, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 5193
    if-le v1, v2, :cond_18

    .line 5195
    :try_start_15
    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_18} :catch_1d

    .line 5201
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 5190
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5197
    :catch_1d
    move-exception v4

    .line 5222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_24
    if-le v4, v1, :cond_36

    .line 5223
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 5224
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5222
    :cond_33
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 5228
    :cond_36
    add-int/lit8 v4, v1, -0x1

    :goto_38
    if-lt v4, v2, :cond_4d

    .line 5229
    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5228
    add-int/lit8 v4, v4, -0x1

    goto :goto_38

    .line 5206
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5207
    if-eq v1, v2, :cond_4e

    :cond_4d
    :goto_4d
    return v3

    :cond_4e
    const/4 v3, 0x0

    goto :goto_4d
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7752
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList;

    if-eqz v0, :cond_b

    .line 7753
    check-cast p0, Lcom/squareup/haha/guava/collect/ImmutableList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList;->reverse()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    .line 7759
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_a
    return-object v0

    .line 7754
    :cond_b
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;

    if-eqz v0, :cond_14

    .line 7755
    check-cast p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;

    .line 7771
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    goto :goto_a

    .line 7756
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_14
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1e

    .line 7757
    new-instance v0, Lcom/squareup/haha/guava/collect/Lists$RandomAccessReverseList;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Lists$RandomAccessReverseList;-><init>(Ljava/util/List;)V

    goto :goto_a

    .line 7759
    :cond_1e
    new-instance v0, Lcom/squareup/haha/guava/collect/Lists$ReverseList;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    goto :goto_a
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2108
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2109
    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2110
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Ascii;->separator:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2111
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/base/Ascii;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_14

    .line 2114
    :cond_2b
    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 2152
    .local p2, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/base/Ascii;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2156
    return-object p1

    .line 2153
    :catch_4
    move-exception v0

    .line 2154
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public join(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2183
    .local p1, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/base/Ascii;->join(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2193
    .local p1, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/squareup/haha/guava/base/Ascii;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "part"    # Ljava/lang/Object;

    .prologue
    .line 2433
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "part":Ljava/lang/Object;
    :goto_9
    return-object p1

    .restart local p1    # "part":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method public useForNull$5f7c8ce0(Ljava/lang/String;)Lcom/squareup/haha/guava/base/Ascii;
    .registers 3
    .param p1, "nullText"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 2218
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    new-instance v0, Lcom/squareup/haha/guava/base/Joiner$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/squareup/haha/guava/base/Joiner$1;-><init>(Lcom/squareup/haha/guava/base/Ascii;Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/squareup/haha/guava/base/Joiner$MapJoiner;
    .registers 4
    .param p1, "keyValueSeparator"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 2278
    new-instance v0, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/haha/guava/base/Joiner$MapJoiner;-><init>(Lcom/squareup/haha/guava/base/Ascii;Ljava/lang/String;B)V

    return-object v0
.end method
