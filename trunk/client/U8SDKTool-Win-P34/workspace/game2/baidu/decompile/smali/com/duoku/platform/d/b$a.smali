.class public Lcom/duoku/platform/d/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Lcom/duoku/platform/d/b$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS download_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT ,name TEXT,name_pinyin TEXT,version TEXT,version_int INTEGER,icon_url TEXT,update_date INTEGER,sign TEXT,size INTEGER,extra TEXT,need_login INTEGER DEFAULT 0,game_id TEXT,download_date INTEGER,download_id INTEGER NOT NULL UNIQUE,download_url TEXT UNIQUE NOT NULL,is_deleted INTEGER DEFAULT 0,install_status INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5425
    sget v1, Lcom/duoku/platform/d/b$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5426
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5427
    const-string v1, "error_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5428
    const-string v1, "file_md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Text, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5429
    const-string v1, "is_diff_update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5430
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/d/b$a;->d:Ljava/lang/String;

    .line 5456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 5482
    const-string v0, "app.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 5483
    iput-object p1, p0, Lcom/duoku/platform/d/b$a;->b:Landroid/content/Context;

    .line 5484
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    .registers 3

    .prologue
    .line 5465
    const-class v1, Lcom/duoku/platform/d/b$a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/d/b$a;->a:Lcom/duoku/platform/d/b$a;

    if-nez v0, :cond_e

    .line 5467
    new-instance v0, Lcom/duoku/platform/d/b$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/d/b$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/d/b$a;->a:Lcom/duoku/platform/d/b$a;

    .line 5469
    :cond_e
    sget-object v0, Lcom/duoku/platform/d/b$a;->a:Lcom/duoku/platform/d/b$a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 5465
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 5625
    new-instance v0, Lcom/duoku/platform/d/b$a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/d/b$a$1;-><init>(Lcom/duoku/platform/d/b$a;)V

    invoke-static {v0}, Lcom/duoku/platform/download/work/DBTaskManager;->submitTask(Ljava/lang/Runnable;)V

    .line 5636
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 5560
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 5561
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 5562
    const-string v0, "AppDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppStorgeSqliteHelper onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    :cond_36
    const-string v0, "CREATE TABLE IF NOT EXISTS msg_table(_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_user_id TEXT , msg_message TEXT , msg_msg_time LONG , msg_message_style TEXT , msg_user_icon_url TEXT , msg_message_status INTEGER , msg_show_time LONG , msg_id LONG , response_msg TEXT , response_time LONG )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5569
    const-string v0, "CREATE TABLE IF NOT EXISTS white_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT UNIQUE NOT NULL,name TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5570
    const-string v0, "CREATE TABLE IF NOT EXISTS installed_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT UNIQUE NOT NULL,name TEXT,name_pinyin TEXT,date INTEGER,version TEXT,version_int INTEGER,sign TEXT,size INTEGER,is_game INTEGER DEFAULT 0,is_own INTEGER DEFAULT 0,need_login INTEGER DEFAULT 0,game_id TEXT,extra TEXT, file_md5 Text, uid INTEGER, is_start INTEGER DEFAULT 0, is_new_install_app INTEGER DEFAULT 0, install_time LONG  )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5571
    sget-object v0, Lcom/duoku/platform/d/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5572
    const-string v0, "CREATE TABLE IF NOT EXISTS updatable_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT UNIQUE NOT NULL,new_version TEXT,new_version_int INTEGER,download_url TEXT,update_date INTEGER,server_sign TEXT,new_size INTEGER,ignore_update INTEGER DEFAULT 0,icon_url TEXT ,update_state INTEGER DEFAULT update_state,game_id TEXT ,need_login INTEGER DEFAULT 0,extra TEXT,is_diff_update INTEGER DEFAULT 0,patch_url TEXT, patch_size INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5573
    const-string v0, "CREATE TABLE IF NOT EXISTS my_installed_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT UNIQUE NOT NULL,install_time INTEGER ,latest_time INTEGER ,open_times INTEGER DEFAULT 0 ,extra TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5574
    const-string v0, "CREATE TABLE IF NOT EXISTS my_downloaded_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT UNIQUE NOT NULL,game_id TEXT ,name TEXT ,icon_url TEXT ,game_key TEXT ,need_login INTEGER DEFAULT 0,extra TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5576
    const-string v0, "CREATE INDEX IF NOT EXISTS white_list_index ON white_list(pkg_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5577
    const-string v0, "CREATE INDEX IF NOT EXISTS installed_list_index ON installed_list(pkg_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5578
    const-string v0, "CREATE INDEX IF NOT EXISTS download_list_index ON download_list(pkg_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5579
    const-string v0, "CREATE INDEX IF NOT EXISTS updatable_list_index ON updatable_list(pkg_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5580
    const-string v0, "CREATE INDEX IF NOT EXISTS my_installed_list_index ON installed_list(pkg_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5581
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 6

    .prologue
    .line 5585
    packed-switch p2, :pswitch_data_30

    .line 5619
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

    .line 5588
    :pswitch_18
    invoke-direct {p0, p1}, Lcom/duoku/platform/d/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5621
    :goto_1b
    return-void

    .line 5591
    :pswitch_1c
    const-string v0, "CREATE TABLE IF NOT EXISTS merge_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,pkg_name TEXT ,version TEXT,version_int INTEGER,game_id TEXT UNIQUE NOT NULL,download_id INTEGER ,download_url TEXT ,save_dest TEXT ,failed_count INTEGER DEFAULT 0,failed_reason INTEGER DEFAULT 0,status INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1b

    .line 5615
    :pswitch_22
    const-string v0, "installed_list"

    const-string v1, "uid"

    const-string v2, "INTEGER"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5616
    invoke-direct {p0}, Lcom/duoku/platform/d/b$a;->a()V

    goto :goto_1b

    .line 5585
    nop

    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_18
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 5549
    :try_start_0
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
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 5556
    :goto_26
    return-void

    .line 5551
    :catch_27
    move-exception v0

    .line 5553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method static synthetic a(Lcom/duoku/platform/d/b$a;)V
    .registers 1

    .prologue
    .line 5638
    invoke-direct {p0}, Lcom/duoku/platform/d/b$a;->b()V

    return-void
.end method

.method private b()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5641
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v2

    .line 5642
    invoke-interface {v2, v0}, Lcom/duoku/platform/d/a;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 5643
    if-eqz v0, :cond_16

    .line 5645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    .line 5673
    :cond_16
    return-void

    .line 5645
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 5647
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    .line 5651
    :try_start_21
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v8

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v0, v9}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 5652
    iget-object v6, p0, Lcom/duoku/platform/d/b$a;->b:Landroid/content/Context;

    invoke-static {v6, v4, v5, v0}, Lcom/duoku/platform/download/DownloadUtil;->updateDownload(Landroid/content/Context;JLjava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3b} :catch_59

    move-result v0

    .line 5660
    :goto_3c
    if-nez v0, :cond_10

    .line 5662
    const/4 v0, 0x1

    const/4 v6, 0x1

    :try_start_40
    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    invoke-interface {v2, v0, v6}, Lcom/duoku/platform/d/a;->a(Z[J)V

    .line 5663
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v4, v7, v8

    invoke-static {v0, v6, v7}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_56} :catch_57

    goto :goto_10

    .line 5666
    :catch_57
    move-exception v0

    goto :goto_10

    .line 5654
    :catch_59
    move-exception v0

    move v0, v1

    goto :goto_3c
.end method

.method static synthetic b(Lcom/duoku/platform/d/b$a;)V
    .registers 1

    .prologue
    .line 5675
    invoke-direct {p0}, Lcom/duoku/platform/d/b$a;->c()V

    return-void
.end method

.method private c()V
    .registers 9

    .prologue
    .line 5679
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v2

    .line 5680
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 5681
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->loadInstalledList(Z)Ljava/util/List;

    move-result-object v3

    .line 5682
    invoke-interface {v2}, Lcom/duoku/platform/d/a;->e()Ljava/util/List;

    move-result-object v0

    .line 5684
    if-eqz v0, :cond_65

    if-eqz v3, :cond_65

    .line 5686
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 5697
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 5699
    invoke-interface {v2}, Lcom/duoku/platform/d/a;->i()V

    .line 5700
    invoke-interface {v2, v3}, Lcom/duoku/platform/d/a;->d(Ljava/util/List;)V

    .line 5712
    :cond_2f
    :goto_2f
    return-void

    .line 5686
    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 5688
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a
    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 5690
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 5692
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGame(Z)V

    .line 5693
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    goto :goto_3a

    .line 5708
    :catch_63
    move-exception v0

    goto :goto_2f

    .line 5705
    :cond_65
    invoke-interface {v2, v3}, Lcom/duoku/platform/d/a;->d(Ljava/util/List;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_63

    goto :goto_2f
.end method

.method static synthetic c(Lcom/duoku/platform/d/b$a;)V
    .registers 1

    .prologue
    .line 5714
    invoke-direct {p0}, Lcom/duoku/platform/d/b$a;->d()V

    return-void
.end method

.method private d()V
    .registers 9

    .prologue
    .line 5718
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    .line 5719
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames(Z)Ljava/util/List;

    move-result-object v0

    .line 5720
    if-nez v0, :cond_10

    .line 5750
    :cond_f
    :goto_f
    return-void

    .line 5724
    :cond_10
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_f

    .line 5728
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    .line 5729
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 5731
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v3, v4, :cond_20

    .line 5733
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 5734
    invoke-static {v3}, Lcom/duoku/platform/download/utils/FileHelper;->getFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5735
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/duoku/platform/download/utils/ApkUtil;->getPackageForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5736
    invoke-static {v3}, Lcom/duoku/platform/download/utils/AppUtil;->getSignMd5(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 5737
    if-eqz v3, :cond_20

    if-eqz v4, :cond_20

    .line 5739
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0, v3, v4}, Lcom/duoku/platform/d/a;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_20

    .line 5745
    :catch_60
    move-exception v0

    .line 5747
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private e()V
    .registers 2

    .prologue
    .line 5756
    new-instance v0, Lcom/duoku/platform/d/b$a$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/d/b$a$2;-><init>(Lcom/duoku/platform/d/b$a;)V

    invoke-static {v0}, Lcom/duoku/platform/download/work/DBTaskManager;->submitTask(Ljava/lang/Runnable;)V

    .line 5768
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .prologue
    .line 5489
    iput-object p1, p0, Lcom/duoku/platform/d/b$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 5491
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 5492
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 5493
    const-string v0, "AppDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppStorgeSqliteHelper onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    :cond_38
    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/duoku/platform/d/b$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 5509
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 5539
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 5541
    invoke-direct {p0}, Lcom/duoku/platform/d/b$a;->e()V

    .line 5543
    return-void
.end method
