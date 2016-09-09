.class Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;
.super Ljava/lang/Object;
.source "OMSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/db/OMSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelHolder"
.end annotation


# instance fields
.field final mTableMappings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class;",
            "Lmobisocial/omlib/db/util/TableMapping;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/omlib/db/OMSQLiteHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlib/db/OMSQLiteHelper;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/db/OMSQLiteHelper;

    .prologue
    .line 321
    iput-object p1, p0, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->this$0:Lmobisocial/omlib/db/OMSQLiteHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->mTableMappings:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;)",
            "Lmobisocial/omlib/db/util/TableMapping;"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "objectType":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    move-object/from16 v18, p1

    .line 327
    .local v18, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->mTableMappings:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/util/TableMapping;

    .line 328
    .local v2, "table":Lmobisocial/omlib/db/util/TableMapping;
    if-eqz v2, :cond_17

    move-object/from16 v19, v2

    .line 393
    :goto_16
    return-object v19

    .line 330
    :cond_17
    const-class v19, Lmobisocial/omlib/db/util/Table;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    check-cast v17, Lmobisocial/omlib/db/util/Table;

    .line 331
    .local v17, "t":Lmobisocial/omlib/db/util/Table;
    :goto_1f
    if-nez v17, :cond_39

    .line 332
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    .line 333
    const-class v19, Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 334
    const/16 v19, 0x0

    goto :goto_16

    .line 336
    :cond_30
    const-class v19, Lmobisocial/omlib/db/util/Table;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    .end local v17    # "t":Lmobisocial/omlib/db/util/Table;
    check-cast v17, Lmobisocial/omlib/db/util/Table;

    .restart local v17    # "t":Lmobisocial/omlib/db/util/Table;
    goto :goto_1f

    .line 339
    :cond_39
    invoke-interface/range {v17 .. v17}, Lmobisocial/omlib/db/util/Table;->name()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "tableName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_47

    .line 341
    invoke-interface/range {v17 .. v17}, Lmobisocial/omlib/db/util/Table;->value()Ljava/lang/String;

    move-result-object v3

    .line 343
    :cond_47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_70

    .line 344
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Class "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " + not a @Table."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 346
    :cond_70
    const/4 v5, 0x0

    .local v5, "pk":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .local v7, "sk":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .local v9, "skqi":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 347
    .local v11, "mt":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .local v6, "pkn":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "skn":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "skqin":Ljava/lang/String;
    const/4 v12, 0x0

    .line 348
    .local v12, "mtn":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 349
    .local v15, "fields":[Ljava/lang/reflect/Field;
    new-instance v4, Ljava/util/HashMap;

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 350
    .local v4, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    array-length v0, v15

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_8b
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_110

    aget-object v14, v15, v19

    .line 351
    .local v14, "f":Ljava/lang/reflect/Field;
    const-class v21, Lmobisocial/omlib/db/util/Column;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lmobisocial/omlib/db/util/Column;

    .line 352
    .local v13, "col":Lmobisocial/omlib/db/util/Column;
    if-eqz v13, :cond_10c

    .line 353
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->name()Ljava/lang/String;

    move-result-object v16

    .line 354
    .local v16, "name":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b7

    .line 355
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->value()Ljava/lang/String;

    move-result-object v16

    .line 356
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b7

    .line 357
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v16

    .line 360
    :cond_b7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->primaryKey()Z

    move-result v21

    if-eqz v21, :cond_d3

    .line 362
    if-eqz v5, :cond_d0

    .line 363
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Can only have one primary key"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 365
    :cond_d0
    move-object v5, v14

    .line 366
    move-object/from16 v6, v16

    .line 368
    :cond_d3
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->secondaryKey()Z

    move-result v21

    if-eqz v21, :cond_e6

    .line 369
    if-eqz v7, :cond_e3

    .line 370
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Can only have one secondary key"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 372
    :cond_e3
    move-object v7, v14

    .line 373
    move-object/from16 v8, v16

    .line 375
    :cond_e6
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->secondaryKeyQuickIndex()Z

    move-result v21

    if-eqz v21, :cond_f9

    .line 376
    if-eqz v9, :cond_f6

    .line 377
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Can only have one secondary key"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 379
    :cond_f6
    move-object v9, v14

    .line 380
    move-object/from16 v10, v16

    .line 382
    :cond_f9
    invoke-interface {v13}, Lmobisocial/omlib/db/util/Column;->modificationTimestamp()Z

    move-result v21

    if-eqz v21, :cond_10c

    .line 383
    if-eqz v11, :cond_109

    .line 384
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Can only have one modification timestamp"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 386
    :cond_109
    move-object v11, v14

    .line 387
    move-object/from16 v12, v16

    .line 350
    .end local v16    # "name":Ljava/lang/String;
    :cond_10c
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8b

    .line 391
    .end local v13    # "col":Lmobisocial/omlib/db/util/Column;
    .end local v14    # "f":Ljava/lang/reflect/Field;
    :cond_110
    new-instance v2, Lmobisocial/omlib/db/util/TableMapping;

    .end local v2    # "table":Lmobisocial/omlib/db/util/TableMapping;
    invoke-direct/range {v2 .. v12}, Lmobisocial/omlib/db/util/TableMapping;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 392
    .restart local v2    # "table":Lmobisocial/omlib/db/util/TableMapping;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->mTableMappings:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v2

    .line 393
    goto/16 :goto_16
.end method

.method public toContentValues(Lmobisocial/omlib/db/util/OMBase;Z)Landroid/content/ContentValues;
    .registers 14
    .param p1, "object"    # Lmobisocial/omlib/db/util/OMBase;
    .param p2, "withNulls"    # Z

    .prologue
    .line 397
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 398
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0, v8}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v8

    iget-object v1, v8, Lmobisocial/omlib/db/util/TableMapping;->columnMapping:Ljava/util/Map;

    .line 399
    .local v1, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_17
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 400
    .local v0, "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 401
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 402
    .local v6, "t":Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 404
    .local v5, "key":Ljava/lang/String;
    :try_start_33
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 405
    .local v7, "val":Ljava/lang/Object;
    if-nez v7, :cond_5d

    .line 406
    if-eqz p2, :cond_17

    .line 407
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    goto :goto_17

    .line 424
    .end local v7    # "val":Ljava/lang/Object;
    :catch_3f
    move-exception v3

    .line 425
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad mapping for table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 409
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_5d
    :try_start_5d
    const-class v9, Ljava/lang/Long;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6d

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 410
    :cond_6d
    check-cast v7, Ljava/lang/Long;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_17

    .line 411
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_73
    const-class v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 412
    check-cast v7, Ljava/lang/String;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 413
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_81
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_91

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 414
    :cond_91
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_17

    .line 415
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_97
    const-class v9, [B

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 416
    check-cast v7, [B

    .end local v7    # "val":Ljava/lang/Object;
    check-cast v7, [B

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_17

    .line 417
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_a8
    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 418
    :cond_b8
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_17

    .line 419
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_bf
    const-class v9, Ljava/lang/Double;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_cf

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 420
    :cond_cf
    check-cast v7, Ljava/lang/Double;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_17

    .line 422
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_d6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not assignable to any valid data types"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_f3} :catch_3f

    .line 428
    .end local v0    # "column":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Class;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_f3
    return-object v2
.end method
