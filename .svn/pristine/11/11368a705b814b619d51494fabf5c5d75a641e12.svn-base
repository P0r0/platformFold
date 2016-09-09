.class public Lcom/huanju/data/database/GameResUpdateControl;
.super Lcom/huanju/data/database/a;


# static fields
.field private static c:Lcom/huanju/data/database/GameResUpdateControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/database/GameResUpdateControl;->c:Lcom/huanju/data/database/GameResUpdateControl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/huanju/data/database/a;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huanju/data/database/GameResUpdateControl;
    .registers 4

    sget-object v0, Lcom/huanju/data/database/GameResUpdateControl;->c:Lcom/huanju/data/database/GameResUpdateControl;

    if-nez v0, :cond_18

    const-class v1, Lcom/huanju/data/database/GameResUpdateControl;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/huanju/data/database/GameResUpdateControl;->c:Lcom/huanju/data/database/GameResUpdateControl;

    if-nez v0, :cond_17

    new-instance v0, Lcom/huanju/data/database/b;

    invoke-direct {v0, p0}, Lcom/huanju/data/database/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/huanju/data/database/GameResUpdateControl;

    invoke-direct {v2, p0, v0}, Lcom/huanju/data/database/GameResUpdateControl;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v2, Lcom/huanju/data/database/GameResUpdateControl;->c:Lcom/huanju/data/database/GameResUpdateControl;

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    :cond_18
    sget-object v0, Lcom/huanju/data/database/GameResUpdateControl;->c:Lcom/huanju/data/database/GameResUpdateControl;

    return-object v0

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/huanju/data/database/GameResUpdateControl;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from gameresupdate where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/data/database/GameResUpdateControl$Table;->pkgname:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v3}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_30} :catch_33
    .catchall {:try_start_2 .. :try_end_30} :catchall_38

    move-result-object v0

    :goto_31
    monitor-exit p0

    return-object v0

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_31

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;
    .registers 15

    const-wide/16 v4, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/huanju/data/database/GameResUpdateControl;->c(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_78
    .catchall {:try_start_4 .. :try_end_7} :catchall_85

    move-result-object v0

    :try_start_8
    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->newscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a2

    if-eqz v0, :cond_a2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_78
    .catchall {:try_start_8 .. :try_end_1f} :catchall_90

    move-result-wide v8

    :goto_20
    :try_start_20
    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->strategycnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a0

    if-eqz v0, :cond_a0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_37} :catch_95
    .catchall {:try_start_20 .. :try_end_37} :catchall_90

    move-result-wide v6

    :goto_38
    :try_start_38
    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->reviewrscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9e

    if-eqz v0, :cond_9e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_99
    .catchall {:try_start_38 .. :try_end_4f} :catchall_90

    move-result-wide v2

    :goto_50
    :try_start_50
    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->videocnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_68

    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_67} :catch_9c
    .catchall {:try_start_50 .. :try_end_67} :catchall_90

    move-result-wide v4

    :cond_68
    :try_start_68
    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    move-wide v11, v4

    move-wide v4, v6

    move-wide v6, v2

    move-wide v2, v8

    move-wide v8, v11

    :goto_70
    new-instance v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/huanju/data/content/raw/utility/HjGameResInfo;-><init>(Ljava/lang/String;JJJJ)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_8d

    monitor-exit p0

    return-object v0

    :catch_78
    move-exception v1

    move-wide v2, v4

    move-wide v6, v4

    move-wide v8, v4

    :goto_7c
    :try_start_7c
    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    move-wide v11, v4

    move-wide v4, v6

    move-wide v6, v2

    move-wide v2, v8

    move-wide v8, v11

    goto :goto_70

    :catchall_85
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_89
    invoke-static {v1}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_90
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_89

    :catch_95
    move-exception v1

    move-wide v2, v4

    move-wide v6, v4

    goto :goto_7c

    :catch_99
    move-exception v1

    move-wide v2, v4

    goto :goto_7c

    :catch_9c
    move-exception v1

    goto :goto_7c

    :cond_9e
    move-wide v2, v4

    goto :goto_50

    :cond_a0
    move-wide v6, v4

    goto :goto_38

    :cond_a2
    move-wide v8, v4

    goto/16 :goto_20
.end method

.method public declared-synchronized a(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->pkgname:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->newscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->strategycnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->reviewrscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->videocnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/huanju/data/database/GameResUpdateControl;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "gameresupdate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5b
    .catchall {:try_start_1 .. :try_end_59} :catchall_60

    :goto_59
    monitor-exit p0

    return-void

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_59

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->newscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->strategycnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->reviewrscnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/huanju/data/database/GameResUpdateControl$Table;->videocnt:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v1}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/huanju/data/database/GameResUpdateControl;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "gameresupdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/huanju/data/database/GameResUpdateControl$Table;->pkgname:Lcom/huanju/data/database/GameResUpdateControl$Table;

    invoke-virtual {v4}, Lcom/huanju/data/database/GameResUpdateControl$Table;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_75
    .catchall {:try_start_1 .. :try_end_6e} :catchall_70

    :goto_6e
    monitor-exit p0

    return-void

    :catchall_70
    move-exception v0

    :try_start_71
    throw v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_75
    move-exception v0

    goto :goto_6e
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/huanju/data/database/GameResUpdateControl;->c(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_13
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-static {v1}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    :goto_12
    return v0

    :catch_13
    move-exception v2

    invoke-static {v1}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    goto :goto_12

    :catchall_18
    move-exception v0

    invoke-static {v1}, Lcom/huanju/data/a/h;->a(Landroid/database/Cursor;)V

    throw v0
.end method
