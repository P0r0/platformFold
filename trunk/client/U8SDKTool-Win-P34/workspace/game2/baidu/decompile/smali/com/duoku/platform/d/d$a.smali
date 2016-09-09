.class public Lcom/duoku/platform/d/d$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Lcom/duoku/platform/d/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 65
    const-string v0, "keyword.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/d/d$a;
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/duoku/platform/d/d$a;->a:Lcom/duoku/platform/d/d$a;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/duoku/platform/d/d$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/d/d$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/d/d$a;->a:Lcom/duoku/platform/d/d$a;

    .line 60
    :cond_b
    sget-object v0, Lcom/duoku/platform/d/d$a;->a:Lcom/duoku/platform/d/d$a;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 71
    const-string v0, "CREATE TABLE IF NOT EXISTS keywords (_id INTEGER PRIMARY KEY AUTOINCREMENT,keyword TEXT UNIQUE )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE IF NOT EXISTS tasks (_id INTEGER PRIMARY KEY AUTOINCREMENT,task_tag TEXT,task_extra TEXT ,UNIQUE (task_tag,task_extra) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 78
    const-string v0, "DROP TABLE IF EXISTS keywords"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "DROP TABLE IF EXISTS tasks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/duoku/platform/d/d$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method
