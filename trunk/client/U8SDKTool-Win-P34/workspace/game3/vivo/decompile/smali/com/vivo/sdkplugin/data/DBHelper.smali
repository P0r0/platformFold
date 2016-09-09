.class public Lcom/vivo/sdkplugin/data/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "id"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final KEY_FROM:Ljava/lang/String; = "pacakgefrom"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MAINOPENID:Ljava/lang/String; = "mainopenid"

.field public static final KEY_MIEI:Ljava/lang/String; = "imei"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OPEN_ID:Ljava/lang/String; = "openid"

.field public static final KEY_PARAM:Ljava/lang/String; = "param"

.field public static final KEY_PHONENUM:Ljava/lang/String; = "phonenum"

.field public static final KEY_PWD:Ljava/lang/String; = "pwd"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"

.field public static final KEY_VERCODE:Ljava/lang/String; = "vercode"

.field public static final KEY_VIVOTOKEN:Ljava/lang/String; = "vivoToken"

.field public static final PATH_ACCOUNT_INFO:Ljava/lang/String; = "/accountinfo"

.field public static final TABLE_SDKACCOUNT_EVENTINFO:Ljava/lang/String; = "sdkeventinfo"

.field public static final TABLE_SDKACCOUNT_INFO:Ljava/lang/String; = "sdkaccountinfo"

.field public static final TAG:Ljava/lang/String; = "DBHelper"

.field public static final TAG_RETRIEVED_INFO:Ljava/lang/String; = "retrievedinfo"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "sdkaccountinfo.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/vivo/sdkplugin/data/DBHelper;->a:Landroid/content/Context;

    const-string v0, "DBHelper"

    const-string v1, "------DBHelper()--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "accountinfo"

    const-string v2, "name=? and pacakgefrom=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p6}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--------------delete row count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "visitor"

    invoke-static {p7}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {p3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pwd"

    invoke-static {p4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vivoToken"

    invoke-static {p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pacakgefrom"

    invoke-static {p6}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "openid"

    invoke-static {p5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uuid"

    invoke-static {p8}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountinfo"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9b
    return-void
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    return-void
.end method

.method public isTableExists(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_35
    .catchall {:try_start_2 .. :try_end_25} :catchall_3f

    move-result v1

    if-lez v1, :cond_2f

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2d
    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catch_35
    move-exception v1

    :try_start_36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    :catchall_3f
    move-exception v0

    if-eqz v2, :cond_45

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "DBHelper"

    const-string v1, "------onCreate() enter--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS accountinfo (_id INTEGER PRIMARY KEY,name varchar[50],pwd varchar[50],uuid varchar[50],visitor varchar[50],id varchar[50],vivoToken varchar[50],pacakgefrom varchar[50],openid varchar[50],time varchar[50] );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------onUpgrade() enter--------oldVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/data/DBHelper;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->onDBUpdate(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onbuid()V
    .registers 1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------\u66f4\u65b0\u8d26\u53f7\u662f\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u65b0\u5bc6\u7801\u662f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_1f
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pwd"

    invoke-static {p2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "accountinfo"

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->encryptAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v2, "DBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "------\u66f4\u65b0\u4e86\u51e0\u4e2a\u8d26\u53f7\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_57} :catch_5d
    .catchall {:try_start_1f .. :try_end_57} :catchall_67

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5c
    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_67

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5c

    :catchall_67
    move-exception v0

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6d
    throw v0
.end method
