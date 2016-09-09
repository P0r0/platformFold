.class Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BestPaySqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bestpay/db/BestPaySqliteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static mDatabaseHelper:Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->mDatabaseHelper:Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "msp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->mDatabaseHelper:Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->mDatabaseHelper:Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    .line 36
    :cond_b
    sget-object v0, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->mDatabaseHelper:Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    const-string v0, "create table if not exists account(tid text primary key,key_index text,key_tid text,dt integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 46
    const-string v0, "DROP TABLE IF EXISTS account"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/bestpay/db/BestPaySqliteHelper$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method
