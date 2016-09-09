.class public Lcom/baidu/android/pushservice/util/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/util/m$a;,
        Lcom/baidu/android/pushservice/util/m$b;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/android/pushservice/util/m$b;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/m;->a:Lcom/baidu/android/pushservice/util/m$b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    .registers 15

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-class v11, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v11

    :try_start_6
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_12c

    move-result-object v0

    if-nez v0, :cond_f

    move-wide v0, v8

    :goto_d
    monitor-exit v11

    return-wide v0

    :cond_f
    :try_start_f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->b:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->c:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->d:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->e:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->f:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_12c

    :try_start_5f
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6a} :catch_e7
    .catchall {:try_start_5f .. :try_end_6a} :catchall_119

    move-result-object v4

    if-eqz v4, :cond_d2

    :try_start_6d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_d2

    const-string v1, "PushADInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/m$a;->a:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    const-string v1, "PushClientDataBase"

    const-string v2, "pushadvertiseinfo:  update into database"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pushadvertiseinfo:  update into database"

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_a0} :catch_131
    .catchall {:try_start_6d .. :try_end_a0} :catchall_12f

    move-wide v2, v8

    :goto_a1
    :try_start_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateADStatus pushadvertiseinfo:  insert into database,  adclientinfo = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/k;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bf} :catch_134
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_12f

    if-eqz v4, :cond_ca

    :try_start_c1
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ca

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_ca
    if-eqz v0, :cond_136

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_cf
    .catchall {:try_start_c1 .. :try_end_cf} :catchall_12c

    move-wide v0, v2

    goto/16 :goto_d

    :cond_d2
    :try_start_d2
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-string v1, "PushClientDataBase"

    const-string v2, "pushadvertiseinfo:  insert into database"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pushadvertiseinfo:  insert into database"

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e5} :catch_131
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_12f

    move-wide v2, v8

    goto :goto_a1

    :catch_e7
    move-exception v1

    move-object v4, v10

    move-wide v2, v8

    :goto_ea
    :try_start_ea
    const-string v5, "PushClientDataBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_ea .. :try_end_106} :catchall_12f

    if-eqz v4, :cond_111

    :try_start_108
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_111

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_111
    if-eqz v0, :cond_136

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-wide v0, v2

    goto/16 :goto_d

    :catchall_119
    move-exception v1

    move-object v4, v10

    :goto_11b
    if-eqz v4, :cond_126

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_126

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_126
    if-eqz v0, :cond_12b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12b
    throw v1
    :try_end_12c
    .catchall {:try_start_108 .. :try_end_12c} :catchall_12c

    :catchall_12c
    move-exception v0

    monitor-exit v11

    throw v0

    :catchall_12f
    move-exception v1

    goto :goto_11b

    :catch_131
    move-exception v1

    move-wide v2, v8

    goto :goto_ea

    :catch_134
    move-exception v1

    goto :goto_ea

    :cond_136
    move-wide v0, v2

    goto/16 :goto_d
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->d(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/m$b;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    const-string v2, "PushClientDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDb Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)V
    .registers 12

    const/4 v8, 0x0

    const-class v9, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_86

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit v9

    return-void

    :cond_c
    :try_start_c
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_d2
    .catchall {:try_start_c .. :try_end_17} :catchall_bd

    move-result-object v2

    if-eqz v2, :cond_89

    :try_start_1a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE PushADInfo SET "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/m$a;->e:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/m$a;->a:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PushClientDataBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql is :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_75} :catch_a5
    .catchall {:try_start_1a .. :try_end_75} :catchall_d0

    :goto_75
    if-eqz v2, :cond_80

    :try_start_77
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_80

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_86

    goto :goto_a

    :catchall_86
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_89
    :try_start_89
    new-instance v1, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->a:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->b:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->c:I

    iput p1, v1, Lcom/baidu/android/pushservice/i/k;->d:I

    invoke-static {}, Lcom/baidu/android/pushservice/util/q;->c()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a4} :catch_a5
    .catchall {:try_start_89 .. :try_end_a4} :catchall_d0

    goto :goto_75

    :catch_a5
    move-exception v1

    :goto_a6
    :try_start_a6
    const-string v3, "PushClientDataBase"

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_d0

    if-eqz v2, :cond_b6

    :try_start_ad
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b6
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_a

    :catchall_bd
    move-exception v1

    move-object v2, v8

    :goto_bf
    if-eqz v2, :cond_ca

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_ca

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ca
    if-eqz v0, :cond_cf

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_cf
    throw v1
    :try_end_d0
    .catchall {:try_start_ad .. :try_end_d0} :catchall_86

    :catchall_d0
    move-exception v1

    goto :goto_bf

    :catch_d2
    move-exception v1

    move-object v2, v8

    goto :goto_a6
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)V
    .registers 14

    const/4 v8, 0x0

    const-class v9, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_86

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit v9

    return-void

    :cond_c
    :try_start_c
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_cf
    .catchall {:try_start_c .. :try_end_17} :catchall_ba

    move-result-object v2

    if-eqz v2, :cond_89

    :try_start_1a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE PushADInfo SET "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/m$a;->f:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/m$a;->a:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PushClientDataBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql is :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_75} :catch_a2
    .catchall {:try_start_1a .. :try_end_75} :catchall_cd

    :goto_75
    if-eqz v2, :cond_80

    :try_start_77
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_80

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_85
    .catchall {:try_start_77 .. :try_end_85} :catchall_86

    goto :goto_a

    :catchall_86
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_89
    :try_start_89
    new-instance v1, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->a:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->b:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->c:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->d:I

    iput-wide p1, v1, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a1} :catch_a2
    .catchall {:try_start_89 .. :try_end_a1} :catchall_cd

    goto :goto_75

    :catch_a2
    move-exception v1

    :goto_a3
    :try_start_a3
    const-string v3, "PushClientDataBase"

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_cd

    if-eqz v2, :cond_b3

    :try_start_aa
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b3
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_a

    :catchall_ba
    move-exception v1

    move-object v2, v8

    :goto_bc
    if-eqz v2, :cond_c7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c7
    if-eqz v0, :cond_cc

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_cc
    throw v1
    :try_end_cd
    .catchall {:try_start_aa .. :try_end_cd} :catchall_86

    :catchall_cd
    move-exception v1

    goto :goto_bc

    :catch_cf
    move-exception v1

    move-object v2, v8

    goto :goto_a3
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-class v11, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v11

    :try_start_6
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_ac

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    :goto_c
    monitor-exit v11

    return-void

    :cond_e
    :try_start_e
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_fc
    .catchall {:try_start_e .. :try_end_19} :catchall_e7

    move-result-object v2

    if-eqz v2, :cond_b2

    :try_start_1c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_b2

    if-eqz p1, :cond_af

    move v1, v9

    :goto_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE PushADInfo SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/m$a;->b:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/m$a;->a:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PushClientDataBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sql is :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateADStatus  setPushADSwitch  index  =    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " sql = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9a} :catch_cf
    .catchall {:try_start_1c .. :try_end_9a} :catchall_fa

    :goto_9a
    if-eqz v2, :cond_a5

    :try_start_9c
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a5
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_aa
    .catchall {:try_start_9c .. :try_end_aa} :catchall_ac

    goto/16 :goto_c

    :catchall_ac
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_af
    move v1, v10

    goto/16 :goto_25

    :cond_b2
    :try_start_b2
    new-instance v1, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->a:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->b:I

    const/16 v3, 0xa

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->c:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/android/pushservice/i/k;->d:I

    invoke-static {}, Lcom/baidu/android/pushservice/util/q;->c()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ce} :catch_cf
    .catchall {:try_start_b2 .. :try_end_ce} :catchall_fa

    goto :goto_9a

    :catch_cf
    move-exception v1

    :goto_d0
    :try_start_d0
    const-string v3, "PushClientDataBase"

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_fa

    if-eqz v2, :cond_e0

    :try_start_d7
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e0
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_c

    :catchall_e7
    move-exception v1

    move-object v2, v8

    :goto_e9
    if-eqz v2, :cond_f4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_f4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f4
    if-eqz v0, :cond_f9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f9
    throw v1
    :try_end_fa
    .catchall {:try_start_d7 .. :try_end_fa} :catchall_ac

    :catchall_fa
    move-exception v1

    goto :goto_e9

    :catch_fc
    move-exception v1

    move-object v2, v8

    goto :goto_d0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/android/pushservice/i/k;->a:I

    const/16 v2, 0xa

    iput v2, v0, Lcom/baidu/android/pushservice/i/k;->b:I

    const/16 v2, 0xa

    iput v2, v0, Lcom/baidu/android/pushservice/i/k;->c:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/android/pushservice/i/k;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    const-string v0, "PushClientDataBase"

    const-string v2, "initPushClientDataBase with initValue"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initPushClientDataBase with initValue"

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2d
    .catchall {:try_start_3 .. :try_end_2b} :catchall_34

    :goto_2b
    monitor-exit v1

    return-void

    :catch_2d
    move-exception v0

    :try_start_2e
    const-string v2, "PushClientDataBase"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_2b

    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/l;
    .registers 12

    const/4 v8, 0x0

    const-class v10, Lcom/baidu/android/pushservice/util/m;

    monitor-enter v10

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_ba

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v8

    :goto_b
    monitor-exit v10

    return-object v0

    :cond_d
    :try_start_d
    new-instance v9, Lcom/baidu/android/pushservice/i/l;

    invoke-direct {v9}, Lcom/baidu/android/pushservice/i/l;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_ba

    :try_start_12
    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_8b
    .catchall {:try_start_12 .. :try_end_1d} :catchall_bd

    move-result-object v2

    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_79

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->b:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/baidu/android/pushservice/i/l;->a(I)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->c:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/baidu/android/pushservice/i/l;->b(I)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->d:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/baidu/android/pushservice/i/l;->c(I)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->e:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/baidu/android/pushservice/i/l;->d(I)V

    sget-object v1, Lcom/baidu/android/pushservice/util/m$a;->f:Lcom/baidu/android/pushservice/util/m$a;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/m$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/baidu/android/pushservice/i/l;->a(J)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_79} :catch_d2
    .catchall {:try_start_1e .. :try_end_79} :catchall_d0

    :cond_79
    if-eqz v8, :cond_84

    :try_start_7b
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_84

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_84
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_ba

    :cond_89
    :goto_89
    move-object v0, v9

    goto :goto_b

    :catch_8b
    move-exception v1

    move-object v2, v8

    :goto_8d
    :try_start_8d
    const-string v3, "PushClientDataBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_d0

    if-eqz v8, :cond_b4

    :try_start_ab
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b4
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b9
    .catchall {:try_start_ab .. :try_end_b9} :catchall_ba

    goto :goto_89

    :catchall_ba
    move-exception v0

    monitor-exit v10

    throw v0

    :catchall_bd
    move-exception v1

    move-object v2, v8

    :goto_bf
    if-eqz v8, :cond_ca

    :try_start_c1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_ca

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ca
    if-eqz v0, :cond_cf

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_cf
    throw v1
    :try_end_d0
    .catchall {:try_start_c1 .. :try_end_d0} :catchall_ba

    :catchall_d0
    move-exception v1

    goto :goto_bf

    :catch_d2
    move-exception v1

    goto :goto_8d
.end method

.method private static d(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/m$b;
    .registers 6

    sget-object v1, Lcom/baidu/android/pushservice/util/m;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/util/m;->a:Lcom/baidu/android/pushservice/util/m$b;

    if-nez v0, :cond_bc

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "PushClientDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Path is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pushclientinfo.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PushClientDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbname is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/android/pushservice/util/m$b;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/baidu/android/pushservice/util/m$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/baidu/android/pushservice/util/m;->a:Lcom/baidu/android/pushservice/util/m$b;

    :cond_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_c0

    sget-object v0, Lcom/baidu/android/pushservice/util/m;->a:Lcom/baidu/android/pushservice/util/m$b;

    return-object v0

    :catchall_c0
    move-exception v0

    :try_start_c1
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v0
.end method
