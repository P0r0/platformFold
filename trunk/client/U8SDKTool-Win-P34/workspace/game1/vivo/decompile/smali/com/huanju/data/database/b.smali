.class public Lcom/huanju/data/database/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DatabaseHelper"

    sput-object v0, Lcom/huanju/data/database/b;->b:Ljava/lang/String;

    const-string v0, "hjdata.db"

    sput-object v0, Lcom/huanju/data/database/b;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/huanju/data/database/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/huanju/data/database/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/huanju/data/database/b;->c:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gameresupdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->_id:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->pkgname:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->newscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->strategycnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->reviewrscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->videocnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LONG NOT NULL DEFAULT 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-direct {p0}, Lcom/huanju/data/database/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    sget-object v0, Lcom/huanju/data/database/b;->b:Ljava/lang/String;

    const-string v1, "database update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
