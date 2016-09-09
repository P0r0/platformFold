.class public Lcom/bestpay/db/BestPaySqliteHelper;
.super Ljava/lang/Object;
.source "BestPaySqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "msp.db"

.field private static final DB_VERSION:I = 0x1

.field private static final TABLE_BESTPAY:Ljava/lang/String; = "create table if not exists account(tid text primary key,key_index text,key_tid text,dt integer)"

.field private static dbConn:Lcom/bestpay/db/BestPaySqliteHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/bestpay/db/BestPaySqliteHelper;->dbConn:Lcom/bestpay/db/BestPaySqliteHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/bestpay/db/BestPaySqliteHelper;->dbConn:Lcom/bestpay/db/BestPaySqliteHelper;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/bestpay/db/BestPaySqliteHelper;

    invoke-direct {v0, p0}, Lcom/bestpay/db/BestPaySqliteHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/db/BestPaySqliteHelper;->dbConn:Lcom/bestpay/db/BestPaySqliteHelper;

    .line 59
    :cond_b
    sget-object v0, Lcom/bestpay/db/BestPaySqliteHelper;->dbConn:Lcom/bestpay/db/BestPaySqliteHelper;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 139
    :catch_9
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_20

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 119
    :catch_20
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public executeSql(Ljava/lang/String;)V
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "orderColumn"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    .line 278
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 277
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v10

    .line 280
    .local v10, "cursor":Landroid/database/Cursor;
    return-object v10

    .line 281
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_12
    move-exception v11

    .line 282
    .local v11, "e":Ljava/lang/Exception;
    throw v11
.end method

.method public find(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v14, "selection":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v13, v1, :cond_23

    .line 264
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    .line 265
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 264
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 268
    .local v11, "cursor":Landroid/database/Cursor;
    return-object v11

    .line 258
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_23
    aget-object v1, p2, v13

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string v1, " = ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    move-object/from16 v0, p2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq v13, v1, :cond_39

    .line 261
    const-string v1, ","

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3c

    .line 257
    :cond_39
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 269
    .end local v13    # "i":I
    .end local v14    # "selection":Ljava/lang/StringBuffer;
    :catch_3c
    move-exception v12

    .line 270
    .local v12, "e":Ljava/lang/Exception;
    throw v12
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 156
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v8

    .line 159
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8

    .line 160
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_e
    move-exception v9

    .line 161
    .local v9, "e":Ljava/lang/Exception;
    throw v9
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    .line 169
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v8

    .line 171
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8

    .line 172
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_e
    move-exception v9

    .line 173
    .local v9, "e":Ljava/lang/Exception;
    throw v9
.end method

.method public findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 181
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 180
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v8

    .line 183
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8

    .line 184
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_e
    move-exception v9

    .line 185
    .local v9, "e":Ljava/lang/Exception;
    throw v9
.end method

.method public findById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p4

    .line 219
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    .line 221
    :catch_2a
    move-exception v8

    .line 222
    .local v8, "e":Ljava/lang/Exception;
    throw v8
.end method

.method public findExcept(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v14, "selection":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v1, v0

    if-lt v13, v1, :cond_23

    .line 316
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 316
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 319
    .local v11, "cursor":Landroid/database/Cursor;
    return-object v11

    .line 310
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_23
    aget-object v1, p2, v13

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, " <> ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    move-object/from16 v0, p2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq v13, v1, :cond_39

    .line 313
    const-string v1, ","

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3c

    .line 309
    :cond_39
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 320
    .end local v13    # "i":I
    .end local v14    # "selection":Ljava/lang/StringBuffer;
    :catch_3c
    move-exception v12

    .line 321
    .local v12, "e":Ljava/lang/Exception;
    throw v12
.end method

.method public findUnique(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 194
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v8

    .line 196
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8

    .line 197
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_e
    move-exception v9

    .line 198
    .local v9, "e":Ljava/lang/Exception;
    throw v9
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "nullColumn"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    return-wide v2

    .line 98
    :catch_7
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public open()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    :cond_10
    :goto_10
    return-void

    .line 70
    :cond_11
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 71
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 72
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_10
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 229
    :catch_7
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "args"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v2, "selection":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p2

    if-lt v1, v3, :cond_17

    .line 349
    iget-object v3, p0, Lcom/bestpay/db/BestPaySqliteHelper;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {v3, p1, p4, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2e

    const/4 v3, 0x1

    :goto_16
    return v3

    .line 343
    :cond_17
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2b

    .line 346
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_30

    .line 342
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 349
    :cond_2e
    const/4 v3, 0x0

    goto :goto_16

    .line 351
    .end local v1    # "i":I
    .end local v2    # "selection":Ljava/lang/StringBuffer;
    :catch_30
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
