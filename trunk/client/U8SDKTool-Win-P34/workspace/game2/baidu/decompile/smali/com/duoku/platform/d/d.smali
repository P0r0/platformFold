.class public Lcom/duoku/platform/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/d/d$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/d/d;->a:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 349
    iget-object v0, p0, Lcom/duoku/platform/d/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/d$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/d$a;

    move-result-object v0

    .line 354
    :try_start_7
    invoke-virtual {v0}, Lcom/duoku/platform/d/d$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 355
    const-string v1, "tasks"

    .line 356
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 357
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "task_tag"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "task_extra"

    aput-object v4, v2, v3

    .line 358
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 355
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_27} :catch_8b
    .catchall {:try_start_7 .. :try_end_27} :catchall_7b

    move-result-object v1

    .line 359
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2b} :catch_6a
    .catchall {:try_start_28 .. :try_end_2b} :catchall_89

    move-result v2

    .line 360
    if-nez v2, :cond_3b

    .line 382
    if-eqz v1, :cond_39

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    move-object v0, v8

    .line 387
    :cond_3a
    :goto_3a
    return-object v0

    .line 364
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    :goto_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_43} :catch_6a
    .catchall {:try_start_3b .. :try_end_43} :catchall_89

    move-result v2

    if-nez v2, :cond_52

    .line 382
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    .line 367
    :cond_52
    const/4 v2, 0x0

    :try_start_53
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 368
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 369
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 371
    new-instance v6, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;-><init>(JILjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_69} :catch_6a
    .catchall {:try_start_53 .. :try_end_69} :catchall_89

    goto :goto_40

    .line 376
    :catch_6a
    move-exception v0

    .line 378
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_89

    .line 382
    if-eqz v1, :cond_79

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_79

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    move-object v0, v8

    .line 387
    goto :goto_3a

    .line 381
    :catchall_7b
    move-exception v0

    move-object v1, v8

    .line 382
    :goto_7d
    if-eqz v1, :cond_88

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_88

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_88
    throw v0

    .line 381
    :catchall_89
    move-exception v0

    goto :goto_7d

    .line 376
    :catch_8b
    move-exception v0

    move-object v1, v8

    goto :goto_6b
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 328
    iget-object v0, p0, Lcom/duoku/platform/d/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/d$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/d$a;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/duoku/platform/d/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    :try_start_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 333
    const-string v2, "task_tag"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v2, "task_extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v2, "tasks"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_23} :catch_24

    .line 344
    :goto_23
    return-void

    .line 337
    :catch_24
    move-exception v0

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_23
.end method

.method public a(Ljava/util/List;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 492
    :cond_8
    :goto_8
    return-void

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/duoku/platform/d/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/d$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/d$a;

    move-result-object v0

    .line 447
    const/4 v1, 0x0

    .line 450
    :try_start_10
    invoke-virtual {v0}, Lcom/duoku/platform/d/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_4e

    .line 453
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 460
    :goto_1d
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, "_id IN ( "

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 463
    new-array v5, v4, [Ljava/lang/String;

    .line 464
    const/4 v0, 0x0

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 478
    const-string v0, "tasks"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_42} :catch_52
    .catchall {:try_start_10 .. :try_end_42} :catchall_81

    .line 487
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_8

    .line 457
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_81

    goto :goto_1d

    .line 481
    :catch_52
    move-exception v0

    .line 483
    :try_start_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_81

    .line 487
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_8

    .line 465
    :cond_62
    :try_start_62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 467
    add-int/lit8 v7, v4, -0x1

    if-eq v2, v7, :cond_7b

    .line 469
    const-string v7, "?,"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    :goto_71
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 476
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_30

    .line 473
    :cond_7b
    const-string v7, "?)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_80} :catch_52
    .catchall {:try_start_62 .. :try_end_80} :catchall_81

    goto :goto_71

    .line 486
    :catchall_81
    move-exception v0

    .line 487
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 489
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 491
    :cond_8d
    throw v0
.end method
