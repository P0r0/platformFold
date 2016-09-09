.class public Lmobisocial/omlib/db/OMSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OMSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "omlib.db"

.field static final TAG:Ljava/lang/String; = "Omlib-DB"

.field private static mInstance:Lmobisocial/omlib/db/OMSQLiteHelper;


# instance fields
.field private final mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

.field private mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

.field mRequiredDbWriteThread:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mInstance:Lmobisocial/omlib/db/OMSQLiteHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "omlib.db"

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    new-instance v0, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-direct {v0, p0}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;-><init>(Lmobisocial/omlib/db/OMSQLiteHelper;)V

    iput-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    .line 51
    return-void
.end method

.method private checkRequiredThread()V
    .registers 5

    .prologue
    .line 78
    iget-object v2, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mRequiredDbWriteThread:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 80
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "threadName":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mRequiredDbWriteThread:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 82
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get writable database off the database writer thread! This is for your own safety. You can use getReadableDatabase() but don\'t write to it!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v1    # "threadName":Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmobisocial/omlib/db/OMSQLiteHelper;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v1, Lmobisocial/omlib/db/OMSQLiteHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mInstance:Lmobisocial/omlib/db/OMSQLiteHelper;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lmobisocial/omlib/db/OMSQLiteHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mInstance:Lmobisocial/omlib/db/OMSQLiteHelper;

    .line 45
    :cond_12
    sget-object v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mInstance:Lmobisocial/omlib/db/OMSQLiteHelper;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteObject(Ljava/lang/Class;J)Z
    .registers 12
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;J)Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v5, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v5, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v0

    .line 205
    .local v0, "tm":Lmobisocial/omlib/db/util/TableMapping;
    const-string v5, "%s=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v1, 0x0

    .line 207
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v6, v0, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_29

    :goto_28
    return v3

    :cond_29
    move v3, v4

    goto :goto_28
.end method

.method public deleteObject(Lmobisocial/omlib/db/util/OMBase;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(TTObject;)Z"
        }
    .end annotation

    .prologue
    .local p1, "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 188
    iget-object v7, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v3

    .line 191
    .local v3, "tm":Lmobisocial/omlib/db/util/TableMapping;
    :try_start_c
    iget-object v7, v3, Lmobisocial/omlib/db/util/TableMapping;->primaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_34

    move-result-object v1

    .line 195
    .local v1, "pk":Ljava/lang/Object;
    const-string v7, "%s=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v3, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    aput-object v9, v8, v6

    aput-object v1, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "whereClause":Ljava/lang/String;
    const/4 v4, 0x0

    .line 197
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v8, v3, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3d

    .line 198
    .local v2, "ret":Z
    :goto_2e
    if-eqz v2, :cond_33

    .line 199
    invoke-virtual {p0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->notifyChange(Lmobisocial/omlib/db/util/OMBase;)V

    .line 200
    :cond_33
    return v2

    .line 192
    .end local v1    # "pk":Ljava/lang/Object;
    .end local v2    # "ret":Z
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot set primary key"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pk":Ljava/lang/Object;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v5    # "whereClause":Ljava/lang/String;
    :cond_3d
    move v2, v6

    .line 197
    goto :goto_2e
.end method

.method public deleteObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    iget-object v1, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v1, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v0

    .line 180
    .local v0, "map":Lmobisocial/omlib/db/util/TableMapping;
    if-nez v0, :cond_21

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No table mapping for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_21
    iget-object v1, v0, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    if-nez v1, :cond_40

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No primary key for table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_40
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    :goto_4d
    return v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method public getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;
    .registers 4
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Landroid/database/Cursor;",
            ")",
            "Lmobisocial/omlib/db/CursorReader",
            "<TTObject;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    iget-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmobisocial/omlib/db/CursorReader;->get(Lmobisocial/omlib/db/util/TableMapping;Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v0

    return-object v0
.end method

.method public getObjectById(Ljava/lang/Class;J)Lmobisocial/omlib/db/util/OMBase;
    .registers 16
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;J)TTObject;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    iget-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v10

    .line 216
    .local v10, "map":Lmobisocial/omlib/db/util/TableMapping;
    if-nez v10, :cond_21

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No table mapping for class "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_21
    iget-object v0, v10, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No primary key for table "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, v10, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_40
    const/4 v2, 0x0

    .line 221
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual {v10}, Lmobisocial/omlib/db/util/TableMapping;->getPrimaryLookupQuery()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "selection":Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Lmobisocial/omlib/db/util/TableMapping;->getPrimaryLookupArgs(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 224
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 226
    .local v7, "orderBy":Ljava/lang/String;
    const-string v8, "1"

    .line 227
    .local v8, "limit":Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, v10, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 229
    .local v9, "c":Landroid/database/Cursor;
    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 230
    invoke-virtual {p0, p1, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_73

    move-result-object v0

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_6d
    return-object v0

    .line 232
    :cond_6e
    const/4 v0, 0x0

    .line 235
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    :catchall_73
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;
    .registers 9
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/Object;",
            ")TTObject;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    const/4 v3, 0x0

    .line 244
    iget-object v4, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v4, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v1

    .line 245
    .local v1, "map":Lmobisocial/omlib/db/util/TableMapping;
    if-nez v1, :cond_22

    .line 246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No table mapping for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_22
    iget-object v4, v1, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    if-nez v4, :cond_41

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No secondary key for table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_41
    invoke-virtual {v1, p2}, Lmobisocial/omlib/db/util/TableMapping;->getLookupByKeyQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 252
    .local v0, "c":Landroid/database/Cursor;
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 253
    invoke-virtual {p0, p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_63

    move-result-object v3

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_5e
    return-object v3

    :cond_5f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    :catchall_63
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getObjectByQuery(Ljava/lang/Class;Ljava/lang/String;)Lmobisocial/omlib/db/util/OMBase;
    .registers 4
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/String;",
            ")TTObject;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    return-object v0
.end method

.method public getObjectByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lmobisocial/omlib/db/util/OMBase;
    .registers 16
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryParameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TTObject;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    iget-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v10

    .line 298
    .local v10, "map":Lmobisocial/omlib/db/util/TableMapping;
    if-nez v10, :cond_21

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No table mapping for class "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_21
    iget-object v0, v10, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No primary key for table "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v11, v10, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_40
    const/4 v2, 0x0

    .line 303
    .local v2, "columns":[Ljava/lang/String;
    move-object v3, p2

    .line 304
    .local v3, "selection":Ljava/lang/String;
    move-object v4, p3

    .line 305
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 306
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 308
    .local v7, "orderBy":Ljava/lang/String;
    const-string v8, "1"

    .line 309
    .local v8, "limit":Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, v10, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 311
    .local v9, "c":Landroid/database/Cursor;
    :try_start_52
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 312
    invoke-virtual {p0, p1, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_69

    move-result-object v0

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_63
    return-object v0

    .line 314
    :cond_64
    const/4 v0, 0x0

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catchall_69
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TTObject;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjectsByQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryParams"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(",
            "Ljava/lang/Class",
            "<TTObject;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TTObject;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TTObject;>;"
    iget-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v11

    .line 268
    .local v11, "map":Lmobisocial/omlib/db/util/TableMapping;
    if-nez v11, :cond_21

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No table mapping for class "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_21
    iget-object v0, v11, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyColumn:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No primary key for table "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v13, v11, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_40
    const/4 v2, 0x0

    .line 273
    .local v2, "columns":[Ljava/lang/String;
    move-object/from16 v3, p2

    .line 274
    .local v3, "selection":Ljava/lang/String;
    move-object/from16 v4, p3

    .line 275
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 276
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 277
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 278
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 279
    .local v8, "limit":Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, v11, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 280
    .local v9, "c":Landroid/database/Cursor;
    invoke-virtual {p0, p1, v9}, Lmobisocial/omlib/db/OMSQLiteHelper;->getCursorReader(Ljava/lang/Class;Landroid/database/Cursor;)Lmobisocial/omlib/db/CursorReader;

    move-result-object v10

    .line 281
    .local v10, "cr":Lmobisocial/omlib/db/CursorReader;, "Lmobisocial/omlib/db/CursorReader<TTObject;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<TTObject;>;"
    :goto_60
    :try_start_60
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 284
    invoke-virtual {v10, v9}, Lmobisocial/omlib/db/CursorReader;->readObject(Landroid/database/Cursor;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_6e

    goto :goto_60

    .line 287
    :catchall_6e
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 289
    return-object v12
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->checkRequiredThread()V

    .line 74
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public insertObject(Lmobisocial/omlib/db/util/OMBase;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(TTObject;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    invoke-direct/range {p0 .. p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->checkRequiredThread()V

    .line 89
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 90
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lmobisocial/omlib/db/util/OMBase;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 91
    .local v8, "modifiedAt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v13, v2}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v12

    .line 92
    .local v12, "tm":Lmobisocial/omlib/db/util/TableMapping;
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestampColumn:Ljava/lang/String;

    if-eqz v13, :cond_22

    .line 94
    :try_start_17
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestamp:Ljava/lang/reflect/Field;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_82

    .line 99
    :cond_22
    :goto_22
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndexColumn:Ljava/lang/String;

    if-eqz v13, :cond_3d

    .line 101
    :try_start_26
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->secondaryKey:Ljava/lang/reflect/Field;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 102
    .local v11, "sk":Ljava/lang/Object;
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndex:Ljava/lang/reflect/Field;

    invoke-static {v11}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3d} :catch_8b

    .line 107
    .end local v11    # "sk":Ljava/lang/Object;
    :cond_3d
    iget-object v5, v12, Lmobisocial/omlib/db/util/TableMapping;->nullColumnHack:Ljava/lang/String;

    .line 108
    .local v5, "nullColumnHack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->toContentValues(Lmobisocial/omlib/db/util/OMBase;Z)Landroid/content/ContentValues;

    move-result-object v3

    .line 109
    .local v3, "cv":Landroid/content/ContentValues;
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    if-eqz v13, :cond_65

    .line 110
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 111
    .local v10, "pkv":Ljava/lang/Long;
    if-eqz v10, :cond_60

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_65

    .line 113
    :cond_60
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 116
    .end local v10    # "pkv":Ljava/lang/Long;
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    iget-object v14, v12, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v13, v14, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 117
    .local v6, "id":J
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->primaryKey:Ljava/lang/reflect/Field;

    if-eqz v13, :cond_7e

    .line 119
    :try_start_73
    iget-object v13, v12, Lmobisocial/omlib/db/util/TableMapping;->primaryKey:Ljava/lang/reflect/Field;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7e} :catch_94

    .line 124
    :cond_7e
    :goto_7e
    invoke-virtual/range {p0 .. p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->notifyChange(Lmobisocial/omlib/db/util/OMBase;)V

    .line 125
    return-void

    .line 95
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "nullColumnHack":Ljava/lang/String;
    .end local v6    # "id":J
    :catch_82
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "Omlib-DB"

    const-string v14, "Error setting modified timestamp"

    invoke-static {v13, v14, v4}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 103
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8b
    move-exception v4

    .line 104
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Error setting secondary key quick index"

    invoke-direct {v13, v14, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 120
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "nullColumnHack":Ljava/lang/String;
    .restart local v6    # "id":J
    :catch_94
    move-exception v4

    .line 121
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v13, "Omlib-DB"

    const-string v14, "Error setting primary key"

    invoke-static {v13, v14, v4}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7e
.end method

.method notifyChange(Lmobisocial/omlib/db/util/OMBase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(TTObject;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    iget-object v0, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .line 129
    .local v0, "np":Lmobisocial/omlib/client/interfaces/NotificationProvider;
    if-eqz v0, :cond_d

    .line 130
    instance-of v1, p1, Lmobisocial/omlib/db/entity/OMFeed;

    if-eqz v1, :cond_e

    .line 131
    check-cast p1, Lmobisocial/omlib/db/entity/OMFeed;

    .end local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    invoke-interface {v0, p1}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->queueFeedChangedEvent(Lmobisocial/omlib/db/entity/OMFeed;)V

    .line 140
    :cond_d
    :goto_d
    return-void

    .line 132
    .restart local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    :cond_e
    instance-of v1, p1, Lmobisocial/omlib/db/entity/OMAccount;

    if-eqz v1, :cond_18

    .line 133
    check-cast p1, Lmobisocial/omlib/db/entity/OMAccount;

    .end local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    invoke-interface {v0, p1}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->queueAccountChangedEvent(Lmobisocial/omlib/db/entity/OMAccount;)V

    goto :goto_d

    .line 134
    .restart local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    :cond_18
    instance-of v1, p1, Lmobisocial/omlib/db/entity/OMFeedMember;

    if-eqz v1, :cond_22

    .line 135
    check-cast p1, Lmobisocial/omlib/db/entity/OMFeedMember;

    .end local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    invoke-interface {v0, p1}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->queueFeedMemberChangedEvent(Lmobisocial/omlib/db/entity/OMFeedMember;)V

    goto :goto_d

    .line 136
    .restart local p1    # "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    :cond_22
    instance-of v1, p1, Lmobisocial/omlib/db/entity/OMObject;

    if-eqz v1, :cond_d

    .line 137
    invoke-interface {v0}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->queueObjectChangedEvent()V

    goto :goto_d
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    invoke-static {p1}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    invoke-static {p1, p2, p3}, Lmobisocial/omlib/db/OMSQLiteModelBuilder;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 69
    return-void
.end method

.method public setNotificationProvider(Lmobisocial/omlib/client/interfaces/NotificationProvider;)V
    .registers 2
    .param p1, "np"    # Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .prologue
    .line 54
    iput-object p1, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mNotificationProvider:Lmobisocial/omlib/client/interfaces/NotificationProvider;

    .line 55
    return-void
.end method

.method public setRequiredDbWriteThread(Ljava/lang/String;)V
    .registers 2
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mRequiredDbWriteThread:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public updateObject(Lmobisocial/omlib/db/util/OMBase;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TObject:",
            "Lmobisocial/omlib/db/util/OMBase;",
            ">(TTObject;)V"
        }
    .end annotation

    .prologue
    .local p1, "object":Lmobisocial/omlib/db/util/OMBase;, "TTObject;"
    const/4 v13, 0x1

    .line 143
    invoke-direct {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->checkRequiredThread()V

    .line 144
    iget-object v9, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->getTableMapping(Ljava/lang/Class;)Lmobisocial/omlib/db/util/TableMapping;

    move-result-object v6

    .line 145
    .local v6, "tm":Lmobisocial/omlib/db/util/TableMapping;
    iget-object v9, p0, Lmobisocial/omlib/db/OMSQLiteHelper;->mModel:Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;

    invoke-virtual {v9, p1, v13}, Lmobisocial/omlib/db/OMSQLiteHelper$ModelHolder;->toContentValues(Lmobisocial/omlib/db/util/OMBase;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 146
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    if-nez v9, :cond_39

    .line 147
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot update table "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with no primary key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 151
    :cond_39
    :try_start_39
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->primaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v9, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_8e

    move-result-object v4

    .line 155
    .local v4, "pk":Ljava/lang/Object;
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestampColumn:Ljava/lang/String;

    if-eqz v9, :cond_59

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "modifiedAt":J
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestampColumn:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    :try_start_50
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->modificationTimestamp:Ljava/lang/reflect/Field;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_97

    .line 164
    .end local v2    # "modifiedAt":J
    :cond_59
    :goto_59
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndexColumn:Ljava/lang/String;

    if-eqz v9, :cond_70

    .line 166
    :try_start_5d
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->secondaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v9, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 167
    .local v5, "sk":Ljava/lang/Object;
    iget-object v9, v6, Lmobisocial/omlib/db/util/TableMapping;->secondaryKeyQuickIndex:Ljava/lang/reflect/Field;

    invoke-static {v5}, Lmobisocial/omlib/db/util/OMBase;->safeHashCode(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_70} :catch_a0

    .line 172
    .end local v5    # "sk":Ljava/lang/Object;
    :cond_70
    const-string v9, "%s=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Lmobisocial/omlib/db/util/TableMapping;->primaryKeyColumn:Ljava/lang/String;

    aput-object v12, v10, v11

    aput-object v4, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "whereClause":Ljava/lang/String;
    const/4 v7, 0x0

    .line 174
    .local v7, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v10, v6, Lmobisocial/omlib/db/util/TableMapping;->table:Ljava/lang/String;

    invoke-virtual {v9, v10, v0, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, p1}, Lmobisocial/omlib/db/OMSQLiteHelper;->notifyChange(Lmobisocial/omlib/db/util/OMBase;)V

    .line 176
    return-void

    .line 152
    .end local v4    # "pk":Ljava/lang/Object;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "whereClause":Ljava/lang/String;
    :catch_8e
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Cannot set primary key"

    invoke-direct {v9, v10, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "modifiedAt":J
    .restart local v4    # "pk":Ljava/lang/Object;
    :catch_97
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v9, "Omlib-DB"

    const-string v10, "Error setting modified timestamp"

    invoke-static {v9, v10, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "modifiedAt":J
    :catch_a0
    move-exception v1

    .line 169
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Error setting secondary key quick index"

    invoke-direct {v9, v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method
