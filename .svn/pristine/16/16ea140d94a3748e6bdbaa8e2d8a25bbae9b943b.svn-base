.class public abstract Lcom/squareup/haha/trove/TLongHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TLongHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongHashingStrategy;


# instance fields
.field protected _hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

.field protected transient _set:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TLongHash;

    .line 113
    .local v0, "h":Lcom/squareup/haha/trove/TLongHash;
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 114
    return-object v0
.end method

.method public final computeHashCode(J)I
    .registers 6
    .param p1, "val"    # J

    .prologue
    .line 259
    .line 2078
    const/16 v0, 0x20

    shr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    .line 259
    return v0
.end method

.method public final contains(J)Z
    .registers 12
    .param p1, "val"    # J

    .prologue
    const/4 v8, 0x2

    .line 138
    .line 1177
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 1178
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 1179
    array-length v3, v1

    .line 1180
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v4, v0

    .line 1181
    rem-int v0, v4, v3

    .line 1183
    aget-byte v5, v1, v0

    if-eqz v5, :cond_37

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_20

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-eqz v5, :cond_37

    .line 1186
    :cond_20
    add-int/lit8 v5, v3, -0x2

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 1189
    :cond_25
    sub-int/2addr v0, v4

    .line 1190
    if-gez v0, :cond_29

    .line 1191
    add-int/2addr v0, v3

    .line 1193
    :cond_29
    aget-byte v5, v1, v0

    if-eqz v5, :cond_37

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_25

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-nez v5, :cond_25

    .line 1197
    :cond_37
    aget-byte v1, v1, v0

    if-nez v1, :cond_3c

    const/4 v0, -0x1

    .line 138
    :cond_3c
    if-ltz v0, :cond_40

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public final forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z
    .registers 10
    .param p1, "procedure"    # Lcom/squareup/haha/trove/TLongProcedure;

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 150
    .local v3, "states":[B
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 151
    .local v2, "set":[J
    array-length v0, v2

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_7
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_18

    .line 152
    aget-byte v5, v3, v0

    if-ne v5, v4, :cond_19

    aget-wide v6, v2, v0

    invoke-interface {p1, v6, v7}, Lcom/squareup/haha/trove/TLongProcedure;->execute(J)Z

    move-result v5

    if-nez v5, :cond_19

    .line 153
    const/4 v4, 0x0

    .line 156
    :cond_18
    return v4

    :cond_19
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_7
.end method

.method protected final insertionIndex(J)I
    .registers 16
    .param p1, "val"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 209
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 210
    .local v6, "states":[B
    iget-object v5, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 211
    .local v5, "set":[J
    array-length v3, v6

    .line 212
    .local v3, "length":I
    iget-object v7, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v7, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v7

    const v8, 0x7fffffff

    and-int v1, v7, v8

    .line 213
    .local v1, "hash":I
    rem-int v2, v1, v3

    .line 215
    .local v2, "index":I
    aget-byte v7, v6, v2

    if-nez v7, :cond_1a

    move v0, v2

    .line 246
    :cond_19
    :goto_19
    return v0

    .line 217
    :cond_1a
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_28

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-nez v7, :cond_28

    .line 218
    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_19

    .line 221
    :cond_28
    add-int/lit8 v7, v3, -0x2

    rem-int v7, v1, v7

    add-int/lit8 v4, v7, 0x1

    .line 225
    .local v4, "probe":I
    :cond_2e
    sub-int/2addr v2, v4

    .line 226
    if-gez v2, :cond_32

    .line 227
    add-int/2addr v2, v3

    .line 229
    :cond_32
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_3c

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-nez v7, :cond_2e

    .line 234
    :cond_3c
    aget-byte v7, v6, v2

    if-ne v7, v11, :cond_5c

    .line 235
    move v0, v2

    .line 236
    .local v0, "firstRemoved":I
    :cond_41
    :goto_41
    aget-byte v7, v6, v2

    if-eqz v7, :cond_54

    aget-byte v7, v6, v2

    if-eq v7, v11, :cond_4f

    aget-wide v8, v5, v2

    cmp-long v7, v8, p1

    if-eqz v7, :cond_54

    .line 238
    :cond_4f
    sub-int/2addr v2, v4

    .line 239
    if-gez v2, :cond_41

    .line 240
    add-int/2addr v2, v3

    goto :goto_41

    .line 243
    :cond_54
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_19

    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_19

    .line 246
    .end local v0    # "firstRemoved":I
    :cond_5c
    aget-byte v7, v6, v2

    if-ne v7, v10, :cond_64

    neg-int v7, v2

    add-int/lit8 v0, v7, -0x1

    goto :goto_19

    :cond_64
    move v0, v2

    goto :goto_19
.end method

.method protected final removeAt(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 167
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->removeAt(I)V

    .line 168
    return-void
.end method

.method protected final setUp(I)I
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->setUp(I)I

    move-result v0

    .line 127
    .local v0, "capacity":I
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 128
    return v0
.end method
