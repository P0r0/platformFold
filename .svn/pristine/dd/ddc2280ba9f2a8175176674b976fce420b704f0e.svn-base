.class Lcom/duoku/platform/d/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1416
    invoke-static {p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 1420
    :try_start_6
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1422
    if-eqz p5, :cond_15

    .line 1424
    const-string v1, "merge_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1458
    :cond_14
    :goto_14
    return v0

    .line 1428
    :cond_15
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 1429
    if-eqz p1, :cond_28

    .line 1431
    const-string v1, "game_id=?"

    .line 1432
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1444
    :cond_1f
    :goto_1f
    if-eqz v1, :cond_14

    .line 1446
    const-string v4, "merge_list"

    invoke-virtual {v2, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    .line 1434
    :cond_28
    if-eqz p2, :cond_35

    .line 1436
    const-string v1, "download_url=?"

    .line 1437
    const/4 v4, 0x0

    aput-object p2, v3, v4
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 1451
    :catch_30
    move-exception v1

    .line 1453
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_14

    .line 1439
    :cond_35
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_1f

    .line 1441
    :try_start_3b
    const-string v1, "download_id=?"

    .line 1442
    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_44} :catch_30

    goto :goto_1f
.end method

.method public static a(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)J
    .registers 8

    .prologue
    .line 1188
    invoke-static {p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 1192
    :try_start_4
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1193
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1194
    const-string v1, "game_id"

    iget-object v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v1, "download_id"

    iget-wide v4, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1196
    const-string v1, "download_url"

    iget-object v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v1, "pkg_name"

    iget-object v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v1, "version"

    iget-object v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->version:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v1, "version_int"

    iget v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->versionInt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1200
    const-string v1, "save_dest"

    iget-object v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->saveDest:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget v1, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    if-lez v1, :cond_60

    .line 1203
    const-string v1, "failed_count"

    iget v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    const-string v1, "failed_reason"

    iget v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    :cond_60
    const-string v1, "status"

    iget v3, p1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    const-string v1, "merge_list"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1209
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_75} :catch_76

    .line 1219
    :goto_75
    return-wide v0

    .line 1212
    :catch_76
    move-exception v0

    .line 1214
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1219
    const-wide/16 v0, -0x1

    goto :goto_75
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MergeMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1224
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/duoku/platform/d/b$c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MergeMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    invoke-static/range {p0 .. p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 1230
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1232
    const/16 v3, 0xa

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1233
    const-string v5, "game_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "pkg_name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "version"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "version_int"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "download_id"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "download_url"

    aput-object v5, v4, v3

    const/4 v3, 0x6

    .line 1234
    const-string v5, "save_dest"

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string v5, "failed_count"

    aput-object v5, v4, v3

    const/16 v3, 0x8

    const-string v5, "failed_reason"

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string v5, "status"

    aput-object v5, v4, v3

    .line 1237
    const/4 v10, 0x0

    .line 1238
    const/4 v5, 0x0

    .line 1239
    const/4 v6, 0x0

    .line 1240
    if-eqz p1, :cond_4d

    .line 1242
    const-string v5, "game_id=?"

    .line 1244
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1245
    aput-object p1, v6, v3

    .line 1250
    :cond_4d
    :try_start_4d
    const-string v3, "merge_list"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_55} :catch_128
    .catchall {:try_start_4d .. :try_end_55} :catchall_115

    move-result-object v15

    .line 1251
    :try_start_56
    const-string v2, "game_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1252
    const-string v2, "download_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1253
    const-string v2, "download_url"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1254
    const-string v2, "pkg_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1255
    const-string v2, "version"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1256
    const-string v2, "version_int"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1257
    const-string v2, "save_dest"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1258
    const-string v2, "failed_count"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1259
    const-string v2, "failed_reason"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1260
    const-string v2, "status"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1261
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_95} :catch_103
    .catchall {:try_start_56 .. :try_end_95} :catchall_123

    move-result v2

    .line 1262
    if-nez v2, :cond_a5

    .line 1293
    if-eqz v15, :cond_a3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 1295
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_a3
    const/4 v2, 0x0

    .line 1298
    :cond_a4
    :goto_a4
    return-object v2

    .line 1266
    :cond_a5
    :try_start_a5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1267
    :goto_ae
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_b1} :catch_103
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_123

    move-result v3

    if-nez v3, :cond_c0

    .line 1293
    if-eqz v15, :cond_a4

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a4

    .line 1295
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_a4

    .line 1269
    :cond_c0
    :try_start_c0
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1270
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1271
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1272
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1273
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1274
    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1276
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1277
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1278
    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1279
    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1281
    new-instance v3, Lcom/duoku/platform/download/mode/MergeMode;

    invoke-direct/range {v3 .. v14}, Lcom/duoku/platform/download/mode/MergeMode;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1282
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c0 .. :try_end_102} :catch_103
    .catchall {:try_start_c0 .. :try_end_102} :catchall_123

    goto :goto_ae

    .line 1287
    :catch_103
    move-exception v2

    move-object v3, v15

    .line 1289
    :goto_105
    :try_start_105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_125

    .line 1293
    if-eqz v3, :cond_113

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_113

    .line 1295
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1298
    :cond_113
    const/4 v2, 0x0

    goto :goto_a4

    .line 1292
    :catchall_115
    move-exception v2

    move-object v15, v10

    .line 1293
    :goto_117
    if-eqz v15, :cond_122

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_122

    .line 1295
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1297
    :cond_122
    throw v2

    .line 1292
    :catchall_123
    move-exception v2

    goto :goto_117

    :catchall_125
    move-exception v2

    move-object v15, v3

    goto :goto_117

    .line 1287
    :catch_128
    move-exception v2

    move-object v3, v10

    goto :goto_105
.end method

.method public static b(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)I
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 1303
    invoke-static {p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 1307
    :try_start_5
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1308
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    iget v0, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    if-lez v0, :cond_33

    .line 1311
    const-string v0, "status"

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v0, "failed_count"

    iget v4, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1313
    const-string v0, "failed_reason"

    iget v4, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    :cond_33
    const/4 v0, 0x0

    .line 1317
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1318
    iget-object v5, p1, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    if-eqz v5, :cond_4e

    .line 1320
    const-string v0, "game_id=?"

    .line 1321
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1333
    :cond_42
    :goto_42
    if-eqz v0, :cond_5e

    .line 1335
    const-string v5, "merge_list"

    invoke-virtual {v2, v5, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1336
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1348
    :goto_4d
    return v0

    .line 1323
    :cond_4e
    iget-object v5, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    if-eqz v5, :cond_60

    .line 1325
    const-string v0, "download_url=?"

    .line 1326
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    aput-object v6, v4, v5
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_59} :catch_5a

    goto :goto_42

    .line 1341
    :catch_5a
    move-exception v0

    .line 1343
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_5e
    move v0, v1

    .line 1348
    goto :goto_4d

    .line 1328
    :cond_60
    :try_start_60
    iget-wide v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_42

    .line 1330
    const-string v0, "download_id=?"

    .line 1331
    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_73} :catch_5a

    goto :goto_42
.end method

.method public static c(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)I
    .registers 12

    .prologue
    const/16 v6, 0x200

    const/16 v5, 0x100

    const/16 v4, 0x80

    const/4 v1, 0x0

    .line 1353
    invoke-static {p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 1357
    :try_start_b
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1358
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1359
    iget v0, p1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v0, v5, :cond_54

    .line 1361
    const-string v0, "status"

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1362
    const-string v0, "failed_count"

    iget v4, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1363
    const-string v0, "failed_reason"

    iget v4, p1, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1374
    :cond_39
    :goto_39
    const/4 v0, 0x0

    .line 1375
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1376
    iget-object v5, p1, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    if-eqz v5, :cond_7a

    .line 1378
    const-string v0, "game_id=?"

    .line 1379
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1391
    :cond_48
    :goto_48
    if-eqz v0, :cond_68

    .line 1393
    const-string v5, "merge_list"

    invoke-virtual {v2, v5, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1394
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1406
    :goto_53
    return v0

    .line 1365
    :cond_54
    iget v0, p1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v0, v6, :cond_6a

    .line 1367
    const-string v0, "status"

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_63} :catch_64

    goto :goto_39

    .line 1399
    :catch_64
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_68
    move v0, v1

    .line 1406
    goto :goto_53

    .line 1369
    :cond_6a
    :try_start_6a
    iget v0, p1, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    if-ne v0, v4, :cond_39

    .line 1371
    const-string v0, "status"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_39

    .line 1381
    :cond_7a
    iget-object v5, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    if-eqz v5, :cond_86

    .line 1383
    const-string v0, "download_url=?"

    .line 1384
    const/4 v5, 0x0

    iget-object v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    goto :goto_48

    .line 1386
    :cond_86
    iget-wide v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_48

    .line 1388
    const-string v0, "download_id=?"

    .line 1389
    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_99} :catch_64

    goto :goto_48
.end method
