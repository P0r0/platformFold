.class public Lcom/gionee/game/offlinesdk/listener/GameListenerManager;
.super Ljava/lang/Object;
.source "GameListenerManager.java"


# static fields
.field public static final FLOAT_WINDOWS_STATUS_CHANGED:I = 0x6

.field public static final INSTALL_PlUGIN_BEGIN:I = 0x1

.field public static final MANUAL_INSTALL_FAIL:I = 0x4

.field public static final MANUAL_INSTALL_SUCCESS:I = 0x5

.field public static final SILENT_INSTALL_FAIL:I = 0x2

.field public static final SILENT_INSTALL_SUCCESS:I = 0x3

.field private static sListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOnceListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStaticListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sListeners:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sStaticListeners:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/gionee/game/offlinesdk/listener/GameListener;ILandroid/util/SparseArray;)V
    .registers 5
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "listeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;>;"
    if-nez p0, :cond_3

    .line 70
    :cond_2
    :goto_2
    return-void

    .line 60
    :cond_3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    if-eqz v0, :cond_15

    .line 62
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public static declared-synchronized addListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    .registers 4
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "key"    # I

    .prologue
    .line 27
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sListeners:Landroid/util/SparseArray;

    invoke-static {p0, p1, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->add(Lcom/gionee/game/offlinesdk/listener/GameListener;ILandroid/util/SparseArray;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 28
    monitor-exit v1

    return-void

    .line 27
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized addListener(Lcom/gionee/game/offlinesdk/listener/GameListener;[I)V
    .registers 8
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "keys"    # [I

    .prologue
    .line 21
    const-class v5, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v5

    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_4
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_10

    aget v2, v0, v1

    .line 22
    .local v2, "key":I
    invoke-static {p0, v2}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->addListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 24
    .end local v2    # "key":I
    :cond_10
    monitor-exit v5

    return-void

    .line 21
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_12
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized addOnceListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    .registers 4
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "key"    # I

    .prologue
    .line 37
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    invoke-static {p0, p1, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->add(Lcom/gionee/game/offlinesdk/listener/GameListener;ILandroid/util/SparseArray;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 38
    monitor-exit v1

    return-void

    .line 37
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized addOnceListener(Lcom/gionee/game/offlinesdk/listener/GameListener;[I)V
    .registers 8
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "keys"    # [I

    .prologue
    .line 31
    const-class v5, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v5

    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_4
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_10

    aget v2, v0, v1

    .line 32
    .local v2, "key":I
    invoke-static {p0, v2}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->addOnceListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 34
    .end local v2    # "key":I
    :cond_10
    monitor-exit v5

    return-void

    .line 31
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_12
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized addStaticListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    .registers 4
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "key"    # I

    .prologue
    .line 47
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sStaticListeners:Landroid/util/SparseArray;

    invoke-static {p0, p1, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->add(Lcom/gionee/game/offlinesdk/listener/GameListener;ILandroid/util/SparseArray;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 48
    monitor-exit v1

    return-void

    .line 47
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized addStaticListener(Lcom/gionee/game/offlinesdk/listener/GameListener;[I)V
    .registers 8
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .param p1, "keys"    # [I

    .prologue
    .line 41
    const-class v5, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v5

    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_4
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_10

    aget v2, v0, v1

    .line 42
    .local v2, "key":I
    invoke-static {p0, v2}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->addStaticListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 44
    .end local v2    # "key":I
    :cond_10
    monitor-exit v5

    return-void

    .line 41
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_12
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized exit()V
    .registers 2

    .prologue
    .line 103
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sListeners:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->recycle(Landroid/util/SparseArray;)V

    .line 104
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->recycle(Landroid/util/SparseArray;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 105
    monitor-exit v1

    return-void

    .line 103
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onEvent(I)V
    .registers 5
    .param p0, "key"    # I

    .prologue
    .line 81
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v0, v2

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    .line 82
    monitor-exit v1

    return-void

    .line 81
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static varargs onEvent(ILjava/util/ArrayList;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "key"    # I
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "target":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    if-nez p1, :cond_3

    .line 100
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/game/offlinesdk/listener/GameListener;

    .line 98
    .local v1, "listener":Lcom/gionee/game/offlinesdk/listener/GameListener;
    invoke-interface {v1, p0, p2}, Lcom/gionee/game/offlinesdk/listener/GameListener;->onEvent(I[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public static varargs declared-synchronized onEvent(I[Ljava/lang/Object;)V
    .registers 4
    .param p0, "key"    # I
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 85
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p0, v0, p1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(ILjava/util/ArrayList;[Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p0, v0, p1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(ILjava/util/ArrayList;[Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sStaticListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p0, v0, p1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(ILjava/util/ArrayList;[Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 90
    monitor-exit v1

    return-void

    .line 85
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static recycle(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "listeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 109
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_13

    .line 110
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 111
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 113
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    :cond_13
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 114
    return-void
.end method

.method private static remove(Lcom/gionee/game/offlinesdk/listener/GameListener;Landroid/util/SparseArray;)V
    .registers 5
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gionee/game/offlinesdk/listener/GameListener;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "listeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 74
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_13

    .line 75
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 76
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 78
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gionee/game/offlinesdk/listener/GameListener;>;"
    :cond_13
    return-void
.end method

.method public static declared-synchronized removeListener(Lcom/gionee/game/offlinesdk/listener/GameListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/gionee/game/offlinesdk/listener/GameListener;

    .prologue
    .line 51
    const-class v1, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sListeners:Landroid/util/SparseArray;

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->remove(Lcom/gionee/game/offlinesdk/listener/GameListener;Landroid/util/SparseArray;)V

    .line 52
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sOnceListeners:Landroid/util/SparseArray;

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->remove(Lcom/gionee/game/offlinesdk/listener/GameListener;Landroid/util/SparseArray;)V

    .line 53
    sget-object v0, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->sStaticListeners:Landroid/util/SparseArray;

    invoke-static {p0, v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->remove(Lcom/gionee/game/offlinesdk/listener/GameListener;Landroid/util/SparseArray;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 54
    monitor-exit v1

    return-void

    .line 51
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
