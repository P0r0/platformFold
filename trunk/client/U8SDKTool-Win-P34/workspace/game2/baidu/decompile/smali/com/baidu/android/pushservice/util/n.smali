.class public Lcom/baidu/android/pushservice/util/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/util/n$g;,
        Lcom/baidu/android/pushservice/util/n$i;,
        Lcom/baidu/android/pushservice/util/n$j;,
        Lcom/baidu/android/pushservice/util/n$h;,
        Lcom/baidu/android/pushservice/util/n$b;,
        Lcom/baidu/android/pushservice/util/n$a;,
        Lcom/baidu/android/pushservice/util/n$c;,
        Lcom/baidu/android/pushservice/util/n$f;,
        Lcom/baidu/android/pushservice/util/n$k;,
        Lcom/baidu/android/pushservice/util/n$e;,
        Lcom/baidu/android/pushservice/util/n$d;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/android/pushservice/util/n$e;

.field private static b:Lcom/baidu/android/pushservice/util/n$d;

.field private static c:Ljava/lang/Object;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    sput-object v0, Lcom/baidu/android/pushservice/util/n;->b:Lcom/baidu/android/pushservice/util/n$d;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    const/16 v0, 0x64

    sput v0, Lcom/baidu/android/pushservice/util/n;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;JJ)I
    .registers 14

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    monitor-exit v4

    :goto_c
    return v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM PushBehavior WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " >= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) FROM ADPushBehavior WHERE "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " < "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " >= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_c1

    move-result-object v6

    const/4 v3, 0x0

    :try_start_94
    invoke-virtual {v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9f} :catch_c4
    .catchall {:try_start_94 .. :try_end_9f} :catchall_e8

    move-result v1

    if-eqz v2, :cond_125

    :try_start_a2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_c1

    move v3, v1

    :goto_a6
    const/4 v1, 0x0

    :try_start_a7
    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b2} :catch_ef
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_117

    move-result v0

    if-eqz v2, :cond_b8

    :try_start_b5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b8
    if-eqz v5, :cond_bd

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_bd
    :goto_bd
    add-int/2addr v0, v3

    monitor-exit v4

    goto/16 :goto_c

    :catchall_c1
    move-exception v0

    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_b5 .. :try_end_c3} :catchall_c1

    throw v0

    :catch_c4
    move-exception v1

    :try_start_c5
    const-string v3, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e getBehaviorEnumCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_e8

    if-eqz v2, :cond_123

    :try_start_e3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v3, v0

    goto :goto_a6

    :catchall_e8
    move-exception v0

    if-eqz v2, :cond_ee

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_ee
    throw v0
    :try_end_ef
    .catchall {:try_start_e3 .. :try_end_ef} :catchall_c1

    :catch_ef
    move-exception v1

    :try_start_f0
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e getBehaviorEnumCount 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_f0 .. :try_end_10c} :catchall_117

    if-eqz v2, :cond_111

    :try_start_10e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_111
    if-eqz v5, :cond_bd

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_bd

    :catchall_117
    move-exception v0

    if-eqz v2, :cond_11d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11d
    if-eqz v5, :cond_122

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_122
    throw v0
    :try_end_123
    .catchall {:try_start_10e .. :try_end_123} :catchall_c1

    :cond_123
    move v3, v0

    goto :goto_a6

    :cond_125
    move v3, v1

    goto :goto_a6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/util/n$g;)I
    .registers 11

    const/4 v0, 0x0

    sget-object v2, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_c

    monitor-exit v2

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->a:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->a:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->c:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->d:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->e:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->f:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p2, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->g:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/n$g;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->h:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/n$g;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->i:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v5, p2, Lcom/baidu/android/pushservice/util/n$g;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->j:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_97
    .catchall {:try_start_4 .. :try_end_97} :catchall_bd

    const/4 v1, -0x1

    :try_start_98
    const-string v5, "FileDownloadingInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b6} :catch_c0
    .catchall {:try_start_98 .. :try_end_b6} :catchall_bd

    move-result v0

    :goto_b7
    :try_start_b7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v2

    goto/16 :goto_b

    :catchall_bd
    move-exception v0

    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_bd

    throw v0

    :catch_c0
    move-exception v0

    :try_start_c1
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFileDownloadingInfo Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_c1 .. :try_end_d9} :catchall_bd

    move v0, v1

    goto :goto_b7
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/i/m;)I
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->a:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->b:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->c:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->d:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->e:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->f:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->g:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->h:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->i:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->j:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$b;->k:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/m;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    :try_start_c7
    const-string v3, "AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->a:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e5} :catch_e8

    move-result v0

    goto/16 :goto_3

    :catch_e8
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppInfo exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J
    .registers 11

    const-wide/16 v0, -0x1

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    monitor-exit v4

    :goto_c
    return-wide v0

    :cond_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->b:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p1, Lcom/baidu/android/pushservice/i/b;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->d:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/baidu/android/pushservice/i/b;->j:Ljava/lang/String;

    if-eqz v3, :cond_46

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->j:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->h:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->e:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget v6, p1, Lcom/baidu/android/pushservice/i/b;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->f:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->g:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget v6, p1, Lcom/baidu/android/pushservice/i/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->i:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget v6, p1, Lcom/baidu/android/pushservice/i/b;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$a;->k:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_5 .. :try_end_94} :catchall_a7

    :try_start_94
    const-string v3, "ADPushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_aa
    .catchall {:try_start_94 .. :try_end_9a} :catchall_a7

    move-result-wide v2

    :try_start_9b
    const-string v0, "pushadvertise:  insert into database"

    invoke-static {v0, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a0} :catch_c8
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a7

    move-wide v0, v2

    :goto_a1
    :try_start_a1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto/16 :goto_c

    :catchall_a7
    move-exception v0

    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_a7

    throw v0

    :catch_aa
    move-exception v2

    move-object v8, v2

    move-wide v2, v0

    move-object v0, v8

    :goto_ae
    :try_start_ae
    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_ae .. :try_end_c6} :catchall_a7

    move-wide v0, v2

    goto :goto_a1

    :catch_c8
    move-exception v0

    goto :goto_ae
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J
    .registers 10

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    monitor-exit v4

    :goto_c
    return-wide v0

    :cond_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/c;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->h:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->i:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p1, Lcom/baidu/android/pushservice/i/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_76

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->m:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_84

    :cond_76
    const-wide/16 v2, 0x0

    :try_start_78
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_87
    .catchall {:try_start_78 .. :try_end_7e} :catchall_84

    move-result-wide v0

    :goto_7f
    :try_start_7f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto :goto_c

    :catchall_84
    move-exception v0

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_84

    throw v0

    :catch_87
    move-exception v0

    :try_start_88
    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertApiBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_84

    move-wide v0, v2

    goto :goto_7f
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/g;)J
    .registers 10

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    monitor-exit v4

    :goto_c
    return-wide v0

    :cond_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/g;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->h:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_5b

    const-wide/16 v2, 0x0

    :try_start_4f
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_5e
    .catchall {:try_start_4f .. :try_end_55} :catchall_5b

    move-result-wide v0

    :goto_56
    :try_start_56
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto :goto_c

    :catchall_5b
    move-exception v0

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5b

    throw v0

    :catch_5e
    move-exception v0

    :try_start_5f
    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertCrashBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_5b

    move-wide v0, v2

    goto :goto_56
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J
    .registers 10

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    monitor-exit v4

    :goto_c
    return-wide v0

    :cond_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/j;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->h:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->j:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/j;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/i/j;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_79

    const-wide/16 v2, 0x0

    :try_start_6d
    const-string v1, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_7c
    .catchall {:try_start_6d .. :try_end_73} :catchall_79

    move-result-wide v0

    :goto_74
    :try_start_74
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto :goto_c

    :catchall_79
    move-exception v0

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_79

    throw v0

    :catch_7c
    move-exception v0

    :try_start_7d
    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertPromptBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_79

    move-wide v0, v2

    goto :goto_74
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J
    .registers 10

    const-wide/16 v0, 0x0

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_f

    const-wide/16 v0, -0x1

    monitor-exit v3

    :goto_e
    return-wide v0

    :cond_f
    invoke-static {v4, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/m;)Lcom/baidu/android/pushservice/i/m;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v3

    goto :goto_e

    :catchall_1a
    move-exception v0

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->b:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->c:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->j()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->d:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->e:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->f:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->g:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->h:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->i:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->j:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->k:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b0
    .catchall {:try_start_1d .. :try_end_b0} :catchall_1a

    :try_start_b0
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-gez v5, :cond_c6

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c3} :catch_d3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_1a

    :try_start_c3
    monitor-exit v3
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_1a

    goto/16 :goto_e

    :cond_c6
    :try_start_c6
    const-string v5, "AppInfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cc} :catch_d3
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_1a

    move-result-wide v0

    :goto_cd
    :try_start_cd
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v3

    goto/16 :goto_e

    :catch_d3
    move-exception v2

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertAppInfo E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_cd .. :try_end_ec} :catchall_1a

    goto :goto_cd
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J
    .registers 10

    const-wide/16 v0, -0x1

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_d

    monitor-exit v3

    :goto_c
    return-wide v0

    :cond_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/n;->f:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/baidu/android/pushservice/i/n;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    if-eqz v5, :cond_46

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->e:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/i/n;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->f:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->g:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/i/n;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/i/n;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p1, Lcom/baidu/android/pushservice/i/n;->d:Ljava/lang/String;

    if-eqz v5, :cond_8d

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->n:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_5 .. :try_end_8d} :catchall_9a

    :cond_8d
    :try_start_8d
    const-string v5, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_9d
    .catchall {:try_start_8d .. :try_end_93} :catchall_9a

    move-result-wide v0

    :goto_94
    :try_start_94
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v3

    goto/16 :goto_c

    :catchall_9a
    move-exception v0

    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9a

    throw v0

    :catch_9d
    move-exception v2

    :try_start_9e
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_9e .. :try_end_b6} :catchall_9a

    goto :goto_94
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/n$g;)J
    .registers 10

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_d

    const-wide/16 v0, -0x1

    monitor-exit v4

    :goto_c
    return-wide v0

    :cond_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->a:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->c:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->d:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->e:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->f:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->g:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->h:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/util/n$g;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->i:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/baidu/android/pushservice/util/n$g;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->j:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_a1

    const-wide/16 v2, 0x0

    :try_start_94
    const-string v1, "FileDownloadingInfo"

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_a4
    .catchall {:try_start_94 .. :try_end_9a} :catchall_a1

    move-result-wide v0

    :goto_9b
    :try_start_9b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto/16 :goto_c

    :catchall_a1
    move-exception v0

    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_a1

    throw v0

    :catch_a4
    move-exception v0

    :try_start_a5
    const-string v1, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_a1

    move-wide v0, v2

    goto :goto_9b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIII)J
    .registers 20

    sget-object v13, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v13

    const-wide/16 v10, -0x1

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_e

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12e

    move-wide v2, v10

    :goto_d
    return-wide v2

    :cond_e
    const/4 v12, 0x0

    :try_start_f
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setNoDisturbMode -- startHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "NoDisturb"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_8a} :catch_190
    .catchall {:try_start_f .. :try_end_8a} :catchall_1b7

    move-result-object v4

    :try_start_8b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$j;->b:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$j;->c:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$j;->d:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$j;->e:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v4, :cond_170

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_170

    if-nez p2, :cond_131

    if-nez p3, :cond_131

    if-nez p4, :cond_131

    if-nez p5, :cond_131

    const-string v3, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete No Disturb record for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "NoDisturb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v10, v3

    :goto_11b
    if-eqz v4, :cond_120

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_120} :catch_1c6
    .catchall {:try_start_8b .. :try_end_120} :catchall_1c4

    :cond_120
    if-eqz v4, :cond_125

    :try_start_122
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_125
    if-eqz v2, :cond_1c8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-wide v2, v10

    :goto_12b
    monitor-exit v13

    goto/16 :goto_d

    :catchall_12e
    move-exception v2

    monitor-exit v13
    :try_end_130
    .catchall {:try_start_122 .. :try_end_130} :catchall_12e

    throw v2

    :cond_131
    :try_start_131
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update No Disturb record for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "NoDisturb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v10, v3

    goto :goto_11b

    :cond_170
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add No Disturb record for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "NoDisturb"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_18e} :catch_1c6
    .catchall {:try_start_131 .. :try_end_18e} :catchall_1c4

    move-result-wide v10

    goto :goto_11b

    :catch_190
    move-exception v3

    move-object v4, v12

    :goto_192
    :try_start_192
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNoDisturbMode Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1aa
    .catchall {:try_start_192 .. :try_end_1aa} :catchall_1c4

    if-eqz v4, :cond_1af

    :try_start_1ac
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1af
    if-eqz v2, :cond_1c8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-wide v2, v10

    goto/16 :goto_12b

    :catchall_1b7
    move-exception v3

    move-object v4, v12

    :goto_1b9
    if-eqz v4, :cond_1be

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1be
    if-eqz v2, :cond_1c3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1c3
    throw v3
    :try_end_1c4
    .catchall {:try_start_1ac .. :try_end_1c4} :catchall_12e

    :catchall_1c4
    move-exception v3

    goto :goto_1b9

    :catch_1c6
    move-exception v3

    goto :goto_192

    :cond_1c8
    move-wide v2, v10

    goto/16 :goto_12b
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/m;)Lcom/baidu/android/pushservice/i/m;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Lcom/baidu/android/pushservice/i/m;

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM AppInfo WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/android/pushservice/util/n$b;->b:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_3b
    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_102
    .catchall {:try_start_3b .. :try_end_3e} :catchall_123

    move-result-object v2

    const/4 v3, 0x0

    :try_start_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    const/4 v3, 0x1

    sget-object v4, Lcom/baidu/android/pushservice/util/n$b;->a:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->c()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/n$b;->e:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->f()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/n$b;->h:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->g()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/n$b;->i:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ee

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/m;->i()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/baidu/android/pushservice/util/n$b;->k:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f1

    :cond_ee
    invoke-static {p0, v4, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/i/m;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_f1} :catch_12e
    .catchall {:try_start_40 .. :try_end_f1} :catchall_12c

    :cond_f1
    if-eqz v3, :cond_fb

    if-eqz v2, :cond_f8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f8
    move-object v0, v1

    goto/16 :goto_3

    :cond_fb
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catch_102
    move-exception v1

    move-object v2, v0

    :goto_104
    :try_start_104
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToInsertUpdate Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_104 .. :try_end_11c} :catchall_12c

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_123
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_126
    if-eqz v2, :cond_12b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12b
    throw v0

    :catchall_12c
    move-exception v0

    goto :goto_126

    :catch_12e
    move-exception v1

    goto :goto_104
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/n$g;
    .registers 13

    const/4 v8, 0x0

    sget-object v9, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_d

    monitor-exit v9

    move-object v0, v8

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_fc

    :try_start_38
    const-string v1, "FileDownloadingInfo"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_ff
    .catchall {:try_start_38 .. :try_end_41} :catchall_125

    move-result-object v2

    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_144

    new-instance v3, Lcom/baidu/android/pushservice/util/n$g;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/n$g;-><init>()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_137
    .catchall {:try_start_42 .. :try_end_4d} :catchall_132

    :try_start_4d
    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->a:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->c:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->d:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->e:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->f:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->g:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/android/pushservice/util/n$g;->g:I

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->h:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/android/pushservice/util/n$g;->h:I

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->i:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/baidu/android/pushservice/util/n$g;->i:I

    sget-object v1, Lcom/baidu/android/pushservice/util/n$f;->j:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/android/pushservice/util/n$g;->j:J
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_ed} :catch_13c
    .catchall {:try_start_4d .. :try_end_ed} :catchall_132

    move-object v1, v3

    :goto_ee
    if-eqz v2, :cond_f3

    :try_start_f0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f3
    if-eqz v0, :cond_142

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    :goto_f9
    monitor-exit v9

    goto/16 :goto_c

    :catchall_fc
    move-exception v0

    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_f0 .. :try_end_fe} :catchall_fc

    throw v0

    :catch_ff
    move-exception v1

    move-object v2, v8

    :goto_101
    :try_start_101
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_119
    .catchall {:try_start_101 .. :try_end_119} :catchall_134

    if-eqz v8, :cond_11e

    :try_start_11b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_11e
    if-eqz v0, :cond_140

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v2

    goto :goto_f9

    :catchall_125
    move-exception v1

    move-object v2, v8

    :goto_127
    if-eqz v2, :cond_12c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12c
    if-eqz v0, :cond_131

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_131
    throw v1
    :try_end_132
    .catchall {:try_start_11b .. :try_end_132} :catchall_fc

    :catchall_132
    move-exception v1

    goto :goto_127

    :catchall_134
    move-exception v1

    move-object v2, v8

    goto :goto_127

    :catch_137
    move-exception v1

    move-object v10, v2

    move-object v2, v8

    move-object v8, v10

    goto :goto_101

    :catch_13c
    move-exception v1

    move-object v8, v2

    move-object v2, v3

    goto :goto_101

    :cond_140
    move-object v0, v2

    goto :goto_f9

    :cond_142
    move-object v0, v1

    goto :goto_f9

    :cond_144
    move-object v1, v8

    goto :goto_ee
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/m;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_c

    monitor-exit v3

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SELECT * FROM AppInfo;"
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_104

    const/4 v5, 0x0

    :try_start_14
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_117
    .catchall {:try_start_14 .. :try_end_17} :catchall_107

    move-result-object v2

    :goto_18
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    new-instance v0, Lcom/baidu/android/pushservice/i/m;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/m;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->b:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->c:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->d:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->e:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->f:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->g:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->h:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->i:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->j:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$b;->k:Lcom/baidu/android/pushservice/util/n$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->b(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_d0} :catch_d2
    .catchall {:try_start_18 .. :try_end_d0} :catchall_115

    goto/16 :goto_18

    :catch_d2
    move-exception v0

    :goto_d3
    :try_start_d3
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_d3 .. :try_end_eb} :catchall_115

    if-eqz v2, :cond_f0

    :try_start_ed
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f0
    if-eqz v4, :cond_f5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f5
    :goto_f5
    monitor-exit v3

    move-object v0, v1

    goto/16 :goto_b

    :cond_f9
    if-eqz v2, :cond_fe

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_fe
    if-eqz v4, :cond_f5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_f5

    :catchall_104
    move-exception v0

    monitor-exit v3
    :try_end_106
    .catchall {:try_start_ed .. :try_end_106} :catchall_104

    throw v0

    :catchall_107
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_10a
    if-eqz v2, :cond_10f

    :try_start_10c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_10f
    if-eqz v4, :cond_114

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_114
    throw v0
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_104

    :catchall_115
    move-exception v0

    goto :goto_10a

    :catch_117
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_d3
.end method

.method public static a(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_c

    monitor-exit v3

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIMIT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OFFSET "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_1a1

    move-result-object v2

    const/4 v5, 0x0

    :try_start_69
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_1b4
    .catchall {:try_start_69 .. :try_end_6c} :catchall_1a4

    move-result-object v2

    :goto_6d
    :try_start_6d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_196

    new-instance v0, Lcom/baidu/android/pushservice/i/f;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/f;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->a:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->m:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->g(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->e(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->h:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->f:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->g:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->e:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->b(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->n:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->h(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->i:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->j:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/f;->d(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/baidu/android/pushservice/i/f;->a(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_169} :catch_16b
    .catchall {:try_start_6d .. :try_end_169} :catchall_1b2

    goto/16 :goto_6d

    :catch_16b
    move-exception v0

    :goto_16c
    :try_start_16c
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e getBehaviorEnumClassList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catchall {:try_start_16c .. :try_end_188} :catchall_1b2

    if-eqz v2, :cond_18d

    :try_start_18a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_18d
    if-eqz v4, :cond_192

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_192
    :goto_192
    monitor-exit v3

    move-object v0, v1

    goto/16 :goto_b

    :cond_196
    if-eqz v2, :cond_19b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_19b
    if-eqz v4, :cond_192

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_192

    :catchall_1a1
    move-exception v0

    monitor-exit v3
    :try_end_1a3
    .catchall {:try_start_18a .. :try_end_1a3} :catchall_1a1

    throw v0

    :catchall_1a4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1a7
    if-eqz v2, :cond_1ac

    :try_start_1a9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1ac
    if-eqz v4, :cond_1b1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1b1
    throw v0
    :try_end_1b2
    .catchall {:try_start_1a9 .. :try_end_1b2} :catchall_1a1

    :catchall_1b2
    move-exception v0

    goto :goto_1a7

    :catch_1b4
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_16c
.end method

.method public static a()V
    .registers 5

    sget-object v1, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$e;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11
    .catchall {:try_start_3 .. :try_end_f} :catchall_2e

    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v1

    return-void

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    const-string v0, "pushstat_4.6.2.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    return-void

    :cond_13
    new-instance v1, Lcom/baidu/android/pushservice/util/o;

    invoke-direct {v1, p0}, Lcom/baidu/android/pushservice/util/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/j;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/android/pushservice/i/j;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_4e
    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    sget-object v3, Lcom/baidu/android/pushservice/util/n$c;->j:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/baidu/android/pushservice/i/j;->a:I

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/j;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6b} :catch_7b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_9a

    move v3, v0

    :goto_6c
    if-eqz v3, :cond_74

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_74
    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_79
    :goto_79
    move v0, v1

    goto :goto_5

    :catch_7b
    move-exception v0

    :try_start_7c
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToInsertUpdatePromptBehavior Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_9a

    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :catchall_9a
    move-exception v0

    if-eqz v2, :cond_a0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw v0

    :cond_a1
    move v3, v1

    goto :goto_6c
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    sget-object v2, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_c

    monitor-exit v2

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_37

    const/4 v1, -0x1

    :try_start_13
    const-string v4, "FileDownloadingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_3a
    .catchall {:try_start_13 .. :try_end_31} :catchall_37

    move-result v0

    :goto_32
    :try_start_32
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v2

    goto :goto_b

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_37

    throw v0

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_37

    move v0, v1

    goto :goto_32
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/j;)I
    .registers 7

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/j;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->j:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/i/j;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/i/j;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/j;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :try_start_5a
    const-string v2, "PushBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/android/pushservice/i/j;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a7} :catch_a9

    goto/16 :goto_3

    :catch_a9
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePromptBehavior Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J
    .registers 10

    const-wide/16 v0, 0x0

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_f

    const-wide/16 v0, -0x1

    monitor-exit v3

    :goto_e
    return-wide v0

    :cond_f
    invoke-static {v4, p1}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/j;)Z

    move-result v2

    if-eqz v2, :cond_1a

    monitor-exit v3

    goto :goto_e

    :catchall_17
    move-exception v0

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/baidu/android/pushservice/i/j;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->d:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->j:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->k:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/baidu/android/pushservice/i/j;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$c;->l:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/baidu/android/pushservice/i/j;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1a .. :try_end_6c} :catchall_17

    :try_start_6c
    const-string v5, "PushBehavior"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_78
    .catchall {:try_start_6c .. :try_end_72} :catchall_17

    move-result-wide v0

    :goto_73
    :try_start_73
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v3

    goto :goto_e

    :catch_78
    move-exception v2

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertAgentOrHttpBehavior E: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_73 .. :try_end_91} :catchall_17

    goto :goto_73
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/util/n$g;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    sget-object v10, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    monitor-exit v10
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_118

    move-object v0, v8

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    const-string v1, "FileDownloadingInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/baidu/android/pushservice/util/n$f;->j:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v11}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " DESC"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_12a
    .catchall {:try_start_12 .. :try_end_35} :catchall_11b

    move-result-object v2

    :goto_36
    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10d

    new-instance v1, Lcom/baidu/android/pushservice/util/n$g;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/util/n$g;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->a:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->b:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->b:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->c:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->c:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->d:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->d:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->e:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->e:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->f:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/android/pushservice/util/n$g;->f:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->g:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/n$g;->g:I

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->h:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/n$g;->h:I

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->i:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/android/pushservice/util/n$g;->i:I

    sget-object v3, Lcom/baidu/android/pushservice/util/n$f;->j:Lcom/baidu/android/pushservice/util/n$f;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$f;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/android/pushservice/util/n$g;->j:J

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_e4} :catch_e6
    .catchall {:try_start_36 .. :try_end_e4} :catchall_128

    goto/16 :goto_36

    :catch_e6
    move-exception v1

    :goto_e7
    :try_start_e7
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_e7 .. :try_end_ff} :catchall_128

    if-eqz v2, :cond_104

    :try_start_101
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_104
    if-eqz v0, :cond_109

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_109
    :goto_109
    monitor-exit v10

    move-object v0, v8

    goto/16 :goto_11

    :cond_10d
    if-eqz v2, :cond_112

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_112
    if-eqz v0, :cond_109

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_109

    :catchall_118
    move-exception v0

    monitor-exit v10
    :try_end_11a
    .catchall {:try_start_101 .. :try_end_11a} :catchall_118

    throw v0

    :catchall_11b
    move-exception v1

    move-object v2, v9

    :goto_11d
    if-eqz v2, :cond_122

    :try_start_11f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_122
    if-eqz v0, :cond_127

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_127
    throw v1
    :try_end_128
    .catchall {:try_start_11f .. :try_end_128} :catchall_118

    :catchall_128
    move-exception v1

    goto :goto_11d

    :catch_12a
    move-exception v1

    move-object v2, v9

    goto :goto_e7
.end method

.method public static b(Landroid/content/Context;JJII)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v3, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_c

    monitor-exit v3

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ADPushBehavior WHERE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " >= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LIMIT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OFFSET "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_16e

    move-result-object v2

    const/4 v5, 0x0

    :try_start_69
    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_181
    .catchall {:try_start_69 .. :try_end_6c} :catchall_171

    move-result-object v2

    :goto_6d
    :try_start_6d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_163

    new-instance v0, Lcom/baidu/android/pushservice/i/a;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/a;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->a:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->a(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->b:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->j:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->e(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->i:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->d(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->f:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->c(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->g:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->c(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->e:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->b(I)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->d:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->k:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->f(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->h:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/a;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/baidu/android/pushservice/i/a;->a(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_136} :catch_138
    .catchall {:try_start_6d .. :try_end_136} :catchall_17f

    goto/16 :goto_6d

    :catch_138
    move-exception v0

    :goto_139
    :try_start_139
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e getADBehaviorEnumClassList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catchall {:try_start_139 .. :try_end_155} :catchall_17f

    if-eqz v2, :cond_15a

    :try_start_157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15a
    if-eqz v4, :cond_15f

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_15f
    :goto_15f
    monitor-exit v3

    move-object v0, v1

    goto/16 :goto_b

    :cond_163
    if-eqz v2, :cond_168

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_168
    if-eqz v4, :cond_15f

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_15f

    :catchall_16e
    move-exception v0

    monitor-exit v3
    :try_end_170
    .catchall {:try_start_157 .. :try_end_170} :catchall_16e

    throw v0

    :catchall_171
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_174
    if-eqz v2, :cond_179

    :try_start_176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_179
    if-eqz v4, :cond_17e

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_17e
    throw v0
    :try_end_17f
    .catchall {:try_start_176 .. :try_end_17f} :catchall_16e

    :catchall_17f
    move-exception v0

    goto :goto_174

    :catch_181
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_139
.end method

.method public static b(Landroid/content/Context;JJ)Z
    .registers 16

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_e

    monitor-exit v4

    :goto_d
    return v0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/baidu/android/pushservice/util/n$c;->b:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " FROM "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "PushBehavior"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " WHERE "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " < "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/baidu/android/pushservice/util/n$c;->c:Lcom/baidu/android/pushservice/util/n$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_6 .. :try_end_6c} :catchall_9f

    move-result-object v2

    const/4 v6, 0x0

    :try_start_6e
    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_a2
    .catchall {:try_start_6e .. :try_end_71} :catchall_d1

    move-result-object v3

    :cond_72
    :goto_72
    :try_start_72
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    sget-object v6, Lcom/baidu/android/pushservice/i/r;->t:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_17f
    .catchall {:try_start_72 .. :try_end_88} :catchall_176

    move-result v2

    if-nez v2, :cond_72

    move v0, v1

    goto :goto_72

    :cond_8d
    if-eqz v3, :cond_92

    :try_start_8f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_92
    if-eqz v0, :cond_189

    if-eqz v5, :cond_189

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v3

    :goto_9a
    if-eqz v0, :cond_e2

    monitor-exit v4

    goto/16 :goto_d

    :catchall_9f
    move-exception v0

    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_9f

    throw v0

    :catch_a2
    move-exception v2

    move-object v9, v2

    move-object v2, v3

    move v3, v0

    move-object v0, v9

    :goto_a7
    :try_start_a7
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e isNeedUpload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_17c

    if-eqz v2, :cond_c8

    :try_start_c5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c8
    if-eqz v3, :cond_186

    if-eqz v5, :cond_186

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v3

    goto :goto_9a

    :catchall_d1
    move-exception v1

    move-object v2, v3

    move v3, v0

    move-object v0, v1

    :goto_d5
    if-eqz v2, :cond_da

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_da
    if-eqz v3, :cond_e1

    if-eqz v5, :cond_e1

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e1
    throw v0

    :cond_e2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT COUNT(*) FROM ADPushBehavior WHERE "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " < "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/baidu/android/pushservice/util/n$a;->c:Lcom/baidu/android/pushservice/util/n$a;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/n$a;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " >= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_124
    .catchall {:try_start_c5 .. :try_end_124} :catchall_9f

    move-result-object v3

    const/4 v6, 0x0

    :try_start_126
    invoke-virtual {v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_131} :catch_142
    .catchall {:try_start_126 .. :try_end_131} :catchall_16a

    move-result v3

    if-lez v3, :cond_135

    move v0, v1

    :cond_135
    if-eqz v2, :cond_13a

    :try_start_137
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_13a
    if-eqz v5, :cond_13f

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_13f
    :goto_13f
    monitor-exit v4
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_9f

    goto/16 :goto_d

    :catch_142
    move-exception v1

    :try_start_143
    const-string v3, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e isNeedUpload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_143 .. :try_end_15f} :catchall_16a

    if-eqz v2, :cond_164

    :try_start_161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_164
    if-eqz v5, :cond_13f

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_13f

    :catchall_16a
    move-exception v0

    if-eqz v2, :cond_170

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_170
    if-eqz v5, :cond_175

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_175
    throw v0
    :try_end_176
    .catchall {:try_start_161 .. :try_end_176} :catchall_9f

    :catchall_176
    move-exception v1

    move-object v2, v3

    move v3, v0

    move-object v0, v1

    goto/16 :goto_d5

    :catchall_17c
    move-exception v0

    goto/16 :goto_d5

    :catch_17f
    move-exception v2

    move-object v9, v2

    move-object v2, v3

    move v3, v0

    move-object v0, v9

    goto/16 :goto_a7

    :cond_186
    move v0, v3

    goto/16 :goto_9a

    :cond_189
    move-object v2, v3

    goto/16 :goto_9a
.end method

.method public static c(Landroid/content/Context;)J
    .registers 8

    sget-object v2, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_d

    const-wide/16 v0, 0x0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    :goto_c
    return-wide v0

    :cond_d
    const/4 v3, -0x1

    :try_start_e
    const-string v0, "PushBehavior"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "ADPushBehavior"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "AppInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_2c
    .catchall {:try_start_e .. :try_end_23} :catchall_29

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    int-to-long v0, v3

    monitor-exit v2

    goto :goto_c

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_29

    throw v0

    :catch_2c
    move-exception v0

    :try_start_2d
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBehaviorInfo Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_29

    goto :goto_23
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v11

    const/4 v8, 0x1

    :try_start_6
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_f

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_17b

    move v0, v8

    :goto_e
    return v0

    :cond_f
    :try_start_f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/n$i;->b:Lcom/baidu/android/pushservice/util/n$i;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/n$i;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "MsgInfo"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_41} :catch_136
    .catchall {:try_start_f .. :try_end_41} :catchall_168

    move-result-object v2

    if-nez v2, :cond_5e

    :try_start_44
    const-string v1, "PushDatabase"

    const-string v3, "no msgid info table!!"

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_180
    .catchall {:try_start_44 .. :try_end_4b} :catchall_17e

    if-eqz v2, :cond_56

    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_56
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5b
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_17b

    move v0, v8

    goto :goto_e

    :cond_5e
    :try_start_5e
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_bf

    const-string v1, "PushDatabase"

    const-string v3, "msgid is duplicate"

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE MsgInfo SET "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/n$i;->c:Lcom/baidu/android/pushservice/util/n$i;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/n$i;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/baidu/android/pushservice/util/n$i;->b:Lcom/baidu/android/pushservice/util/n$i;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_ab} :catch_180
    .catchall {:try_start_5e .. :try_end_ab} :catchall_17e

    if-eqz v2, :cond_b6

    :try_start_ad
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b6
    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_bb
    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_ad .. :try_end_bc} :catchall_17b

    move v0, v9

    goto/16 :goto_e

    :cond_bf
    :try_start_bf
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$i;->b:Lcom/baidu/android/pushservice/util/n$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/android/pushservice/util/n$i;->c:Lcom/baidu/android/pushservice/util/n$i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$i;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "MsgInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v1, "PushDatabase"

    const-string v3, "insert normal msgid"

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SELECT COUNT(*) FROM MsgInfo;"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgID count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/baidu/android/pushservice/util/n;->d:I

    if-le v1, v3, :cond_122

    const-string v1, "MsgInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "PushDatabase"

    const-string v3, "delete msgid info table!!"

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_122} :catch_180
    .catchall {:try_start_bf .. :try_end_122} :catchall_17e

    :cond_122
    if-eqz v2, :cond_12d

    :try_start_124
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_12d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12d
    if-eqz v0, :cond_132

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_132
    monitor-exit v11
    :try_end_133
    .catchall {:try_start_124 .. :try_end_133} :catchall_17b

    move v0, v8

    goto/16 :goto_e

    :catch_136
    move-exception v1

    move-object v2, v10

    :goto_138
    :try_start_138
    const-string v3, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_154
    .catchall {:try_start_138 .. :try_end_154} :catchall_17e

    if-eqz v2, :cond_15f

    :try_start_156
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_15f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15f
    if-eqz v0, :cond_164

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_164
    monitor-exit v11

    move v0, v8

    goto/16 :goto_e

    :catchall_168
    move-exception v1

    move-object v2, v10

    :goto_16a
    if-eqz v2, :cond_175

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_175

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_175
    if-eqz v0, :cond_17a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_17a
    throw v1

    :catchall_17b
    move-exception v0

    monitor-exit v11
    :try_end_17d
    .catchall {:try_start_156 .. :try_end_17d} :catchall_17b

    throw v0

    :catchall_17e
    move-exception v1

    goto :goto_16a

    :catch_180
    move-exception v1

    goto :goto_138
.end method

.method private static d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->e(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/n$e;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDb Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)[I
    .registers 13

    const/4 v8, 0x0

    sget-object v9, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/n;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_d

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13a

    move-object v0, v8

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v1, "NoDisturb"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/n$j;->a:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_101
    .catchall {:try_start_d .. :try_end_35} :catchall_12d

    move-result-object v2

    if-eqz v2, :cond_e6

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    sget-object v1, Lcom/baidu/android/pushservice/util/n$j;->b:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v1, Lcom/baidu/android/pushservice/util/n$j;->c:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v1, Lcom/baidu/android/pushservice/util/n$j;->d:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v1, Lcom/baidu/android/pushservice/util/n$j;->e:Lcom/baidu/android/pushservice/util/n$j;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/n$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v1, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " disturb data is found! startHour: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " startMinute: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " endHour: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " endMinute: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_c9

    if-nez v4, :cond_c9

    if-nez v5, :cond_c9

    if-nez v6, :cond_c9

    const/4 v1, 0x0

    new-array v1, v1, [I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_bb} :catch_13f
    .catchall {:try_start_38 .. :try_end_bb} :catchall_13d

    if-eqz v2, :cond_c0

    :try_start_bd
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c0
    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_13a

    move-object v0, v1

    goto/16 :goto_c

    :cond_c9
    const/4 v1, 0x4

    :try_start_ca
    new-array v1, v1, [I

    const/4 v7, 0x0

    aput v3, v1, v7

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v3, 0x3

    aput v6, v1, v3
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d8} :catch_13f
    .catchall {:try_start_ca .. :try_end_d8} :catchall_13d

    if-eqz v2, :cond_dd

    :try_start_da
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_dd
    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e2
    monitor-exit v9
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_13a

    move-object v0, v1

    goto/16 :goto_c

    :cond_e6
    :try_start_e6
    const-string v1, "PushDatabase"

    const-string v3, "no disturb data not found use default value"

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f0} :catch_13f
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_13d

    fill-array-data v1, :array_142

    if-eqz v2, :cond_f8

    :try_start_f5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f8
    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_fd
    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_13a

    move-object v0, v1

    goto/16 :goto_c

    :catch_101
    move-exception v1

    move-object v2, v8

    :goto_103
    :try_start_103
    const-string v3, "PushDatabase"

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

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_103 .. :try_end_11f} :catchall_13d

    if-eqz v2, :cond_124

    :try_start_121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_124
    if-eqz v0, :cond_129

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_129
    monitor-exit v9

    move-object v0, v8

    goto/16 :goto_c

    :catchall_12d
    move-exception v1

    move-object v2, v8

    :goto_12f
    if-eqz v2, :cond_134

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_134
    if-eqz v0, :cond_139

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_139
    throw v1

    :catchall_13a
    move-exception v0

    monitor-exit v9
    :try_end_13c
    .catchall {:try_start_121 .. :try_end_13c} :catchall_13a

    throw v0

    :catchall_13d
    move-exception v1

    goto :goto_12f

    :catch_13f
    move-exception v1

    goto :goto_103

    nop

    :array_142
    .array-data 4
        0x17
        0x0
        0x7
        0x0
    .end array-data
.end method

.method private static e(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/n$e;
    .registers 6

    sget-object v1, Lcom/baidu/android/pushservice/util/n;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    if-nez v0, :cond_2e

    const-string v0, "pushstat_4.6.2.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pushstat_4.6.2.db"

    invoke-static {v2, p0}, Lcom/baidu/android/pushservice/util/n;->a(Ljava/lang/String;Landroid/content/Context;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_32

    new-instance v2, Lcom/baidu/android/pushservice/util/n$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/baidu/android/pushservice/util/n$d;-><init>(Lcom/baidu/android/pushservice/util/o;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/n;->b:Lcom/baidu/android/pushservice/util/n$d;

    new-instance v2, Lcom/baidu/android/pushservice/util/n$e;

    const/4 v3, 0x2

    sget-object v4, Lcom/baidu/android/pushservice/util/n;->b:Lcom/baidu/android/pushservice/util/n$d;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/baidu/android/pushservice/util/n$e;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    :cond_2e
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3b

    sget-object v0, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    return-object v0

    :cond_32
    :try_start_32
    new-instance v2, Lcom/baidu/android/pushservice/util/n$e;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/baidu/android/pushservice/util/n$e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/android/pushservice/util/n;->a:Lcom/baidu/android/pushservice/util/n$e;

    goto :goto_2e

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw v0
.end method
