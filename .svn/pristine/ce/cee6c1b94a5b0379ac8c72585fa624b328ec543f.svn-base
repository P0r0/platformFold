.class public Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "payment.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "PAYMENTADAPTER"

    const-string v1, "DBOpenHelper(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J
    .registers 12

    invoke-virtual {p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventcode"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventvalue"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "packageName"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "events"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_33
    return-wide v2
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    return-void
.end method

.method public delete(J)I
    .registers 10

    invoke-virtual {p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const-string v2, "eventtime <?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1b
    return v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    :try_start_0
    const-string v0, "PAYMENTADAPTER"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,eventcode varchar[50],eventvalue INTEGER DEFAULT 0,eventtime LONG,packageName varchar[100],uid varchar[50] );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "PAYMENTADAPTER"

    const-string v1, "SettingTable.SETTING_TABLE has created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    const-string v1, "PAYMENTADAPTER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upgrade version failed,error= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    const/4 v0, 0x5

    if-ge p2, v0, :cond_7

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_7
    if-eq p2, p3, :cond_c

    invoke-virtual {p0, p1}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upgrade version failed,error= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public select(J)Landroid/database/Cursor;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/bbk/payment/provider/DBAdapter$DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "eventtime <?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    const-string v1, "eventcode"

    aput-object v1, v2, v7

    const/4 v1, 0x2

    const-string v6, "eventvalue"

    aput-object v6, v2, v1

    const/4 v1, 0x3

    const-string v6, "eventtime"

    aput-object v6, v2, v1

    const/4 v1, 0x4

    const-string v6, "packageName"

    aput-object v6, v2, v1

    const/4 v1, 0x5

    const-string v6, "uid"

    aput-object v6, v2, v1

    const-string v1, "events"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
