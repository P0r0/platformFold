.class final Lcom/duoku/platform/download/DownloadProvider$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 231
    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x6a

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 232
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 356
    const-string v1, "current_bytes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 358
    const-string v1, "total_bytes"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 360
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 362
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 364
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 6

    .prologue
    .line 306
    packed-switch p2, :pswitch_data_6a

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to upgrade to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadProvider$a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 343
    :goto_1b
    return-void

    .line 313
    :pswitch_1c
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadProvider$a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1b

    .line 317
    :pswitch_20
    const-string v0, "downloads"

    const-string v1, "is_public_api"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "downloads"

    const-string v1, "allow_roaming"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "downloads"

    const-string v1, "allowed_network_types"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 323
    :pswitch_3c
    const-string v0, "downloads"

    const-string v1, "is_visible_in_downloads_ui"

    const-string v2, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadProvider$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1b

    .line 328
    :pswitch_49
    const-string v0, "downloads"

    const-string v1, "bypass_recommended_size_limit"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 332
    :pswitch_53
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1b

    .line 336
    :pswitch_57
    const-string v0, "downloads"

    const-string v1, "mediaprovider_uri"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "downloads"

    const-string v1, "deleted"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 306
    :pswitch_data_6a
    .packed-switch 0x64
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_3c
        :pswitch_49
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 6

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    const-string v1, "downloads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 379
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 391
    const-string v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    const-string v1, "destination != 0"

    .line 393
    const-string v2, "downloads"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 423
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v0, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT UNIQUE, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, scanned BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a} :catch_b

    .line 447
    return-void

    .line 442
    :catch_b
    move-exception v0

    .line 444
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    throw v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 457
    const-string v0, "DROP TABLE IF EXISTS request_headers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    const-string v0, "CREATE TABLE request_headers(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,header TEXT NOT NULL,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 247
    const/4 v0, 0x0

    const/16 v1, 0x6a

    invoke-virtual {p0, p1, v0, v1}, Lcom/duoku/platform/download/DownloadProvider$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 248
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    const/16 v0, 0x64

    const/16 v1, 0x63

    .line 267
    const/16 v2, 0x1f

    if-ne p2, v2, :cond_e

    move p2, v0

    .line 290
    :cond_9
    :goto_9
    add-int/lit8 v0, p2, 0x1

    :goto_b
    if-le v0, p3, :cond_5e

    .line 294
    return-void

    .line 274
    :cond_e
    if-ge p2, v0, :cond_36

    .line 278
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading downloads database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 280
    goto :goto_9

    .line 281
    :cond_36
    if-le p2, p3, :cond_9

    .line 286
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downgrading downloads database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), destroying all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    .line 287
    goto :goto_9

    .line 292
    :cond_5e
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadProvider$a;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
