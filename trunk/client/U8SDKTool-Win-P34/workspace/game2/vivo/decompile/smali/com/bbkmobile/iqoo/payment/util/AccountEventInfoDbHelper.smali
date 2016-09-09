.class public Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final DBNAME:Ljava/lang/String; = "sdkaccountinfo.db"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "id"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final KEY_FROM:Ljava/lang/String; = "pacakgefrom"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

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

.field public static final SDKEVENTINFODBNAME:Ljava/lang/String; = "singlepayeventinfo.db"

.field public static final TABLE_SDKACCOUNT_EVENTINFO:Ljava/lang/String; = "sdkeventinfo"

.field public static final TABLE_SDKACCOUNT_INFO:Ljava/lang/String; = "sdkaccountinfo"

.field public static final TAG_RETRIEVED_INFO:Ljava/lang/String; = "retrievedinfo"

.field public static final TNAME:Ljava/lang/String; = "accountinfo"

.field public static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "singlepayeventinfo.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentValues;)V
    .registers 5

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sdkeventinfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    return-void
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/bbkmobile/iqoo/payment/util/AccountEventInfoDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS sdkeventinfo (_id INTEGER PRIMARY KEY,eventid varchar[50],model varchar[50],imei varchar[50],starttime_param varchar[50],packageName varchar[50],version varchar[50],endttime_param varchar[100] );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
