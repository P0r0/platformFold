.class final Lcom/squareup/leakcanary/ShortestPathFinder;
.super Ljava/lang/Object;
.source "ShortestPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I


# instance fields
.field private canIgnoreStrings:Z

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final toVisitIfNoPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitIfNoPathSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$squareup$haha$perflib$RootType()[I
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/squareup/haha/perflib/RootType;->values()[Lcom/squareup/haha/perflib/RootType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_d8

    :goto_16
    :try_start_16
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->DEBUGGER:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_d5

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->FINALIZING:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_d2

    :goto_29
    :try_start_29
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_cf

    :goto_32
    :try_start_32
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INVALID_TYPE:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_cc

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_c9

    :goto_45
    :try_start_45
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->JAVA_STATIC:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_c7

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_c5

    :goto_59
    :try_start_59
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_c3

    :goto_63
    :try_start_63
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_c1

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_bf

    :goto_77
    :try_start_77
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_bd

    :goto_81
    :try_start_81
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8a} :catch_bb

    :goto_8a
    :try_start_8a
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_94} :catch_b9

    :goto_94
    :try_start_94
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9d} :catch_b7

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a6} :catch_b5

    :goto_a6
    :try_start_a6
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_af} :catch_b3

    :goto_af
    sput-object v0, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I

    goto/16 :goto_4

    :catch_b3
    move-exception v1

    goto :goto_af

    :catch_b5
    move-exception v1

    goto :goto_a6

    :catch_b7
    move-exception v1

    goto :goto_9d

    :catch_b9
    move-exception v1

    goto :goto_94

    :catch_bb
    move-exception v1

    goto :goto_8a

    :catch_bd
    move-exception v1

    goto :goto_81

    :catch_bf
    move-exception v1

    goto :goto_77

    :catch_c1
    move-exception v1

    goto :goto_6d

    :catch_c3
    move-exception v1

    goto :goto_63

    :catch_c5
    move-exception v1

    goto :goto_59

    :catch_c7
    move-exception v1

    goto :goto_4f

    :catch_c9
    move-exception v1

    goto/16 :goto_45

    :catch_cc
    move-exception v1

    goto/16 :goto_3b

    :catch_cf
    move-exception v1

    goto/16 :goto_32

    :catch_d2
    move-exception v1

    goto/16 :goto_29

    :catch_d5
    move-exception v1

    goto/16 :goto_1f

    :catch_d8
    move-exception v1

    goto/16 :goto_16
.end method

.method constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .registers 3
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    .line 40
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    .line 41
    return-void
.end method

.method private checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z
    .registers 4
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private clearState()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 86
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 87
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 88
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 89
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 90
    return-void
.end method

.method private enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V
    .registers 8
    .param p1, "visitNow"    # Z
    .param p2, "parent"    # Lcom/squareup/leakcanary/LeakNode;
    .param p3, "child"    # Lcom/squareup/haha/perflib/Instance;
    .param p4, "referenceName"    # Ljava/lang/String;
    .param p5, "referenceType"    # Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .prologue
    .line 242
    if-nez p3, :cond_3

    .line 269
    :cond_2
    :goto_2
    return-void

    .line 245
    :cond_3
    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveWrapper(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    if-nez p1, :cond_21

    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    :cond_21
    iget-boolean v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    if-eqz v1, :cond_2b

    invoke-direct {p0, p3}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :cond_2b
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v0, p3, p2, p4, p5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 261
    .local v0, "childNode":Lcom/squareup/leakcanary/LeakNode;
    if-eqz p1, :cond_45

    .line 262
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    :cond_45
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .registers 13
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_a
    :pswitch_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 131
    return-void

    .line 93
    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/RootObj;

    .line 94
    .local v3, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-static {}, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType()[I

    move-result-object v0

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_70

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown root type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_41
    invoke-static {v3}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v7

    .line 97
    .local v7, "thread":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v7}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "threadName":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->threadNames:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 99
    .local v6, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 100
    :cond_5b
    if-nez v6, :cond_65

    move v1, v9

    :goto_5e
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_a

    :cond_65
    const/4 v1, 0x0

    goto :goto_5e

    .end local v6    # "alwaysIgnore":Ljava/lang/Boolean;
    .end local v7    # "thread":Lcom/squareup/haha/perflib/Instance;
    .end local v8    # "threadName":Ljava/lang/String;
    :pswitch_67
    move-object v0, p0

    move v1, v9

    move-object v4, v2

    move-object v5, v2

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_a

    .line 94
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_67
        :pswitch_67
        :pswitch_a
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_a
        :pswitch_41
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method

.method private isString(Lcom/squareup/haha/perflib/Instance;)Z
    .registers 4
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .registers 12
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 230
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v6, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 231
    .local v6, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v7

    .line 232
    .local v7, "arrayType":Lcom/squareup/haha/perflib/Type;
    sget-object v0, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v7, v0, :cond_14

    .line 233
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v9

    .line 234
    .local v9, "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_11
    array-length v0, v9

    if-lt v8, v0, :cond_15

    .line 239
    .end local v8    # "i":I
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_14
    return-void

    .line 235
    .restart local v8    # "i":I
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_15
    aget-object v3, v9, v8

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 236
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_11
.end method

.method private visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .registers 20
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 181
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance;

    .line 182
    .local v11, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    const/4 v14, 0x0

    .line 183
    .local v14, "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    .line 184
    .local v15, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    const/4 v9, 0x0

    .line 185
    .local v9, "alwaysIgnoreClassHierarchy":Ljava/lang/Boolean;
    :goto_c
    if-nez v15, :cond_17

    .line 199
    if-eqz v9, :cond_53

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 227
    :cond_16
    return-void

    .line 186
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->classNames:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 187
    .local v8, "alwaysIgnoreClass":Ljava/lang/Boolean;
    if-eqz v8, :cond_32

    if-eqz v9, :cond_31

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_32

    .line 188
    :cond_31
    move-object v9, v8

    .line 190
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->fieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 191
    .local v10, "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v10, :cond_4e

    .line 192
    if-nez v14, :cond_4b

    .line 193
    new-instance v14, Ljava/util/LinkedHashMap;

    .end local v14    # "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 195
    .restart local v14    # "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4b
    invoke-interface {v14, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    :cond_4e
    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    goto :goto_c

    .line 202
    .end local v8    # "alwaysIgnoreClass":Ljava/lang/Boolean;
    .end local v10    # "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_53
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5b
    :goto_5b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 203
    .local v13, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v12

    .line 204
    .local v12, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_5b

    .line 207
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 208
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v2, 0x1

    .line 209
    .local v2, "visit":Z
    const/16 v16, 0x0

    .line 210
    .local v16, "visitIfNoPath":Z
    if-eqz v9, :cond_81

    .line 211
    const/4 v2, 0x0

    .line 212
    const/16 v16, 0x1

    .line 214
    :cond_81
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "fieldName":Ljava/lang/String;
    if-eqz v14, :cond_98

    .line 216
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 217
    .local v7, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v7, :cond_98

    .line 218
    const/4 v2, 0x0

    .line 219
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a6

    const/16 v16, 0x0

    .line 222
    .end local v7    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_98
    :goto_98
    if-nez v2, :cond_9c

    if-eqz v16, :cond_5b

    .line 225
    :cond_9c
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_5b

    .line 219
    .restart local v7    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_a6
    const/16 v16, 0x1

    goto :goto_98
.end method

.method private visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V
    .registers 15
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 151
    iget-object v7, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v7, Lcom/squareup/haha/perflib/ClassObj;

    .line 152
    .local v7, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 153
    .local v10, "ignoredStaticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v7}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1e
    :goto_1e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 178
    return-void

    .line 153
    :cond_25
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 154
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/haha/perflib/Field;

    .line 155
    .local v9, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    sget-object v1, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_1e

    .line 158
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "fieldName":Ljava/lang/String;
    const-string v0, "$staticOverhead"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 162
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 163
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v11, 0x1

    .line 164
    .local v11, "visit":Z
    if-eqz v10, :cond_65

    .line 165
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 166
    .local v6, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v6, :cond_65

    .line 167
    const/4 v11, 0x0

    .line 168
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_65

    .line 169
    const/4 v1, 0x0

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 173
    .end local v6    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_65
    if-eqz v11, :cond_1e

    .line 176
    const/4 v1, 0x1

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_1e
.end method

.method private visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V
    .registers 14
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 138
    iget-object v11, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v11, Lcom/squareup/haha/perflib/RootObj;

    .line 139
    .local v11, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v3

    .line 140
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v0

    sget-object v4, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    if-ne v0, v4, :cond_24

    .line 141
    invoke-static {v11}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v10

    .line 142
    .local v10, "holder":Lcom/squareup/haha/perflib/Instance;
    new-instance v2, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v2, v10, v8, v8, v8}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 143
    .local v2, "parent":Lcom/squareup/leakcanary/LeakNode;
    const-string v4, "<Java Local>"

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 148
    .end local v2    # "parent":Lcom/squareup/leakcanary/LeakNode;
    .end local v10    # "holder":Lcom/squareup/haha/perflib/Instance;
    :goto_23
    return-void

    :cond_24
    move-object v4, p0

    move v5, v1

    move-object v6, p1

    move-object v7, v3

    move-object v9, v8

    .line 146
    invoke-direct/range {v4 .. v9}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_23
.end method


# virtual methods
.method findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    .registers 9
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/leakcanary/ShortestPathFinder;->clearState()V

    .line 45
    invoke-direct {p0, p2}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "excludingKnownLeaks":Z
    const/4 v1, 0x0

    .line 49
    .local v1, "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_11
    :goto_11
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 81
    :goto_21
    new-instance v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    invoke-direct {v3, v1, v0}, Lcom/squareup/leakcanary/ShortestPathFinder$Result;-><init>(Lcom/squareup/leakcanary/LeakNode;Z)V

    return-object v3

    .line 45
    .end local v0    # "excludingKnownLeaks":Z
    .end local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_27
    const/4 v3, 0x1

    goto :goto_a

    .line 51
    .restart local v0    # "excludingKnownLeaks":Z
    .restart local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_29
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 52
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 58
    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_39
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    if-ne v3, p2, :cond_49

    .line 59
    move-object v1, v2

    .line 60
    goto :goto_21

    .line 55
    .end local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    :cond_3f
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 56
    .restart local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    const/4 v0, 0x1

    goto :goto_39

    .line 62
    :cond_49
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 65
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v3, :cond_59

    .line 66
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_11

    .line 68
    :cond_59
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v3, :cond_63

    .line 69
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_11

    .line 71
    :cond_63
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassInstance;

    if-eqz v3, :cond_6d

    .line 72
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_11

    .line 75
    :cond_6d
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ArrayInstance;

    if-nez v3, :cond_8a

    .line 76
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected type for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_8a
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_11
.end method
