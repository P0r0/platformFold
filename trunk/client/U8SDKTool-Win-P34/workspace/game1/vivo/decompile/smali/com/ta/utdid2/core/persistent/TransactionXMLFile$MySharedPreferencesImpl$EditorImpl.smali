.class public final Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)V
    .registers 3

    .prologue
    .line 238
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method


# virtual methods
.method public final clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 2

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 287
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-object p0

    .line 288
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final commit()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    .line 298
    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->access$100()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 299
    :try_start_8
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_15

    move v2, v1

    .line 300
    :cond_15
    if-eqz v2, :cond_c3

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$200(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    .line 306
    :goto_2d
    monitor-enter p0
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_72

    .line 307
    :try_start_2e
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v0, :cond_3e

    .line 308
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 312
    :cond_3e
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_48
    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 315
    if-ne v0, p0, :cond_75

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :goto_69
    if-eqz v2, :cond_48

    .line 322
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_2e .. :try_end_6e} :catchall_6f

    goto :goto_48

    .line 327
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit p0

    throw v0
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_72

    .line 332
    :catchall_72
    move-exception v0

    monitor-exit v5

    throw v0

    .line 318
    :cond_75
    :try_start_75
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # getter for: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->mMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$300(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 326
    :cond_7f
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 327
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_6f

    .line 328
    :try_start_85
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    # invokes: Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->writeFileLocked()Z
    invoke-static {v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->access$400(Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;)Z

    move-result v6

    .line 329
    if-eqz v6, :cond_93

    .line 330
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->setHasChange(Z)V

    .line 332
    :cond_93
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_72

    .line 334
    if-eqz v2, :cond_c2

    .line 335
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_9d
    if-ltz v2, :cond_c2

    .line 336
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 337
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_aa
    :goto_aa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;

    .line 338
    if-eqz v0, :cond_aa

    .line 339
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->this$0:Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    invoke-interface {v0, v7, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Ljava/lang/String;)V

    goto :goto_aa

    .line 335
    :cond_be
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9d

    .line 346
    :cond_c2
    return v6

    :cond_c3
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_2d
.end method

.method public final putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 5

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p0

    .line 274
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 5

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p0

    .line 267
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 5

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p0

    .line 253
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 6

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    return-object p0

    .line 260
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 4

    .prologue
    .line 243
    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    return-object p0

    .line 246
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .registers 3

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    return-object p0

    .line 281
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
