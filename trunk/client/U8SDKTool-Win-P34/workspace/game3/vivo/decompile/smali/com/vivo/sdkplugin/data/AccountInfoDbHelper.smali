.class public Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a:Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "accountinfo.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;
    .registers 3

    const-class v1, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a:Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a:Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;

    :cond_e
    sget-object v0, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a:Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "select * from sqlite_master where name = ? and sql like ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_3d
    .catchall {:try_start_3 .. :try_end_2c} :catchall_63

    move-result v3

    if-eqz v3, :cond_3b

    :goto_2f
    if-eqz v2, :cond_3a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3a
    :goto_3a
    return v0

    :cond_3b
    move v0, v1

    goto :goto_2f

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string v3, "AccountInfoDbHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkColumnExists2..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_63

    if-eqz v2, :cond_70

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_3a

    :catchall_63
    move-exception v0

    if-eqz v2, :cond_6f

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw v0

    :cond_70
    move v0, v1

    goto :goto_3a
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS sdkeventinfo (_id INTEGER PRIMARY KEY,eventid varchar[50],model varchar[50],imei varchar[50],time varchar[50],pacakgefrom varchar[50],vercode varchar[50],param varchar[100],openid varchar[50] );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-string v0, "AccountInfoDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upgrade version from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "accountinfo"

    const-string v1, "openid"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "ALTER TABLE accountinfo ADD openid VARCHAR(50)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/data/AccountInfoDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
