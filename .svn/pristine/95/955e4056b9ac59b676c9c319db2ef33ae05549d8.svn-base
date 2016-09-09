.class Lcom/squareup/haha/guava/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryIterator;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEvictableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakExpirableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEvictableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongExpirableEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;,
        Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static UNSET:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final transient entryFactory:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private keyStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient segmentMask:I

.field private transient segmentShift:I

.field final transient segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lcom/squareup/haha/guava/base/Ticker;

.field final valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/haha/guava/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    const-class v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    .line 578
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->UNSET:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 868
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$2;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$2;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method static connectEvictables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1961
    .local p0, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1962
    invoke-interface {p1, p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1963
    return-void
.end method

.method static connectExpirables(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1929
    .local p0, "previous":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1930
    invoke-interface {p1, p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1931
    return-void
.end method

.method private hash(Ljava/lang/Object;)I
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1851
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v1, p1}, Lcom/squareup/haha/guava/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4813
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v1, v0

    .line 4814
    ushr-int/lit8 v2, v1, 0xa

    xor-int/2addr v1, v2

    .line 4815
    shl-int/lit8 v2, v1, 0x3

    add-int/2addr v1, v2

    .line 4816
    ushr-int/lit8 v2, v1, 0x6

    xor-int/2addr v1, v2

    .line 4817
    shl-int/lit8 v2, v1, 0x2

    shl-int/lit8 v3, v1, 0xe

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 4818
    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    .line 1852
    return v1
.end method

.method static isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)Z
    .registers 8
    .param p1, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1924
    .local p0, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static nullEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 865
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static nullifyEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 5865
    .local p0, "nulled":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    .line 1968
    .local v0, "nullEntry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1969
    invoke-interface {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1970
    return-void
.end method

.method static nullifyExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 4865
    .local p0, "nulled":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$NullEntry;

    .line 1936
    .local v0, "nullEntry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1937
    invoke-interface {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1938
    return-void
.end method

.method static unset()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 614
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->UNSET:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 10

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 3559
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    .local v0, "arr$":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_93

    aget-object v3, v0, v1

    .line 6819
    .local v3, "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v4, :cond_87

    .line 6820
    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 6822
    :try_start_10
    iget-object v7, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6823
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v4, v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v6, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v4, v6, :cond_3a

    move v6, v5

    .line 6824
    :goto_1b
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_3a

    .line 6825
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_27
    if-eqz v4, :cond_36

    .line 6827
    invoke-interface {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 6828
    sget-object v8, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-virtual {v3, v4, v8}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 6825
    invoke-interface {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    goto :goto_27

    .line 6824
    :cond_36
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1b

    :cond_3a
    move v4, v5

    .line 6833
    :goto_3b
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_48

    .line 6834
    const/4 v6, 0x0

    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 6833
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 7226
    :cond_48
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 7235
    :cond_50
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-nez v4, :cond_50

    .line 7229
    :cond_58
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 7239
    :cond_60
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-nez v4, :cond_60

    .line 6837
    :cond_68
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 6838
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 6839
    iget-object v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6841
    iget v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 6842
    const/4 v4, 0x0

    iput v4, v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_81
    .catchall {:try_start_10 .. :try_end_81} :catchall_8b

    .line 6844
    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 8069
    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3559
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 6844
    :catchall_8b
    move-exception v4

    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 9069
    invoke-virtual {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 6845
    throw v4

    .line 3562
    .end local v3    # "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :cond_93
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3451
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 3452
    const/4 v1, 0x0

    .line 3455
    :goto_3
    return v1

    .line 3454
    :cond_4
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3455
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 20
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3460
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    if-nez p1, :cond_5

    .line 3461
    const/16 v16, 0x0

    .line 3494
    :goto_4
    return v16

    .line 3469
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    .line 3470
    .local v11, "segments":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const-wide/16 v8, -0x1

    .line 3471
    .local v8, "last":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v4, v0, :cond_9a

    .line 3472
    const-wide/16 v12, 0x0

    .line 3473
    .local v12, "sum":J
    move-object v2, v11

    .local v2, "arr$":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    array-length v7, v11

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_17
    if-ge v5, v7, :cond_91

    aget-object v10, v2, v5

    .line 3476
    .local v10, "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget v0, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    move/from16 v16, v0

    .line 3478
    iget-object v14, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3479
    .local v14, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_22
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_83

    .line 3480
    invoke-virtual {v14, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .local v3, "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_30
    if-eqz v3, :cond_80

    .line 6026
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_51

    .line 6027
    invoke-virtual {v10}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 6028
    const/4 v15, 0x0

    .line 3482
    .local v15, "v":Ljava/lang/Object;, "TV;"
    :cond_3c
    :goto_3c
    if-eqz v15, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7b

    .line 3483
    const/16 v16, 0x1

    goto :goto_4

    .line 6030
    .end local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_51
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v15

    .line 6031
    if-nez v15, :cond_60

    .line 6032
    invoke-virtual {v10}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 6033
    const/4 v15, 0x0

    goto :goto_3c

    .line 6036
    :cond_60
    iget-object v0, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v16

    if-eqz v16, :cond_3c

    iget-object v0, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 6037
    invoke-virtual {v10}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    .line 6038
    const/4 v15, 0x0

    goto :goto_3c

    .line 3480
    .restart local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_7b
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    goto :goto_30

    .line 3479
    .end local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 3487
    .end local v3    # "e":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_83
    iget v0, v10, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 3473
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 3489
    .end local v6    # "j":I
    .end local v10    # "segment":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .end local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :cond_91
    cmp-long v16, v12, v8

    if-eqz v16, :cond_9a

    .line 3492
    move-wide v8, v12

    .line 3471
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 3494
    .end local v2    # "arr$":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v12    # "sum":J
    :cond_9a
    const/16 v16, 0x0

    goto/16 :goto_4
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3584
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    .line 3585
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_5
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method final expires()Z
    .registers 7

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    .line 4274
    iget-wide v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    move v2, v1

    .line 270
    :goto_b
    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0

    :cond_15
    move v2, v0

    .line 4274
    goto :goto_b
.end method

.method final expiresAfterAccess()Z
    .registers 5

    .prologue
    .line 278
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3430
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 3431
    const/4 v1, 0x0

    .line 3434
    :goto_3
    return-object v1

    .line 3433
    :cond_4
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3434
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public isEmpty()Z
    .registers 11

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 3395
    const-wide/16 v2, 0x0

    .line 3396
    .local v2, "sum":J
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    .line 3397
    .local v1, "segments":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v5, v1

    if-ge v0, v5, :cond_1b

    .line 3398
    aget-object v5, v1, v0

    iget v5, v5, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v5, :cond_12

    .line 3415
    :cond_11
    :goto_11
    return v4

    .line 3401
    :cond_12
    aget-object v5, v1, v0

    iget v5, v5, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3397
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3404
    :cond_1b
    cmp-long v5, v2, v8

    if-eqz v5, :cond_36

    .line 3405
    const/4 v0, 0x0

    :goto_20
    array-length v5, v1

    if-ge v0, v5, :cond_32

    .line 3406
    aget-object v5, v1, v0

    iget v5, v5, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-nez v5, :cond_11

    .line 3409
    aget-object v5, v1, v0

    iget v5, v5, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 3405
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3411
    :cond_32
    cmp-long v5, v2, v8

    if-nez v5, :cond_11

    .line 3415
    :cond_36
    const/4 v4, 0x1

    goto :goto_11
.end method

.method final isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1916
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "entry":Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->ticker:Lcom/squareup/haha/guava/base/Ticker;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/base/Ticker;->read()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3568
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    .line 3569
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_5

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_4
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_5
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3499
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3502
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3515
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3516
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3518
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3507
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3510
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3522
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    if-nez p1, :cond_4

    .line 3523
    const/4 v1, 0x0

    .line 3526
    :goto_3
    return-object v1

    .line 3525
    :cond_4
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3526
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3531
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 3532
    :cond_4
    const/4 v1, 0x0

    .line 3535
    :goto_5
    return v1

    .line 3534
    :cond_6
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3535
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3551
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3552
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3554
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3540
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    invoke-static {p3}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3542
    if-nez p2, :cond_a

    .line 3543
    const/4 v1, 0x0

    .line 3546
    :goto_9
    return v1

    .line 3545
    :cond_a
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3546
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method final segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 7

    .prologue
    .line 3420
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segments:[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    .line 3421
    .local v1, "segments":[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;, "[Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 3422
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v4, v1

    if-ge v0, v4, :cond_11

    .line 3423
    aget-object v4, v1, v0

    iget v4, v4, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3422
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3425
    :cond_11
    invoke-static {v2, v3}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method final usesKeyReferences()Z
    .registers 3

    .prologue
    .line 282
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final usesValueReferences()Z
    .registers 3

    .prologue
    .line 286
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3576
    .local p0, "this":Lcom/squareup/haha/guava/collect/MapMakerInternalMap;, "Lcom/squareup/haha/guava/collect/MapMakerInternalMap<TK;TV;>;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    .line 3577
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_5
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Values;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method
