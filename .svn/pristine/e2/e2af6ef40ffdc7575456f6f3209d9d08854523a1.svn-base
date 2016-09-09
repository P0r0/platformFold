.class public Lcom/duoku/platform/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/duoku/platform/d/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/d/b$a;,
        Lcom/duoku/platform/d/b$b;,
        Lcom/duoku/platform/d/b$c;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/d/b;->a:Z

    .line 1466
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    .line 1467
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1760
    .line 1763
    :try_start_2
    const-string v1, "installed_list"

    .line 1764
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1765
    const-string v3, "is_start"

    aput-object v3, v2, v0

    .line 1766
    const-string v3, "pkg_name=?"

    .line 1767
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1768
    aput-object p2, v4, v0

    .line 1769
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1763
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_2f
    .catchall {:try_start_2 .. :try_end_1b} :catchall_3b

    move-result-object v1

    .line 1771
    if-eqz v1, :cond_42

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1774
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_28} :catch_4b
    .catchall {:try_start_1e .. :try_end_28} :catchall_48

    move-result v0

    .line 1783
    if-eqz v1, :cond_2e

    .line 1785
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1788
    :cond_2e
    :goto_2e
    return v0

    .line 1777
    :catch_2f
    move-exception v0

    move-object v1, v9

    .line 1779
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_48

    .line 1783
    if-eqz v1, :cond_39

    .line 1785
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    :goto_39
    move v0, v8

    .line 1788
    goto :goto_2e

    .line 1782
    :catchall_3b
    move-exception v0

    .line 1783
    :goto_3c
    if-eqz v9, :cond_41

    .line 1785
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1787
    :cond_41
    throw v0

    .line 1783
    :cond_42
    if-eqz v1, :cond_39

    .line 1785
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 1782
    :catchall_48
    move-exception v0

    move-object v9, v1

    goto :goto_3c

    .line 1777
    :catch_4b
    move-exception v0

    goto :goto_31
.end method

.method private a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 33

    .prologue
    .line 3790
    const-string v2, "pkg_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3791
    const-string v3, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3792
    const-string v4, "name_pinyin"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3793
    const-string v4, "update_date"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3794
    const-string v4, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3795
    const-string v4, "version_int"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3796
    const-string v4, "sign"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3797
    const-string v4, "size"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3798
    const-string v4, "icon_url"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 3799
    const-string v4, "extra"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 3801
    const-string v4, "download_date"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 3802
    const-string v4, "download_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3803
    const-string v4, "download_url"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3804
    const-string v4, "game_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 3805
    const-string v4, "is_deleted"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 3806
    const-string v4, "install_status"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 3807
    const-string v4, "error_reason"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 3808
    const-string v4, "need_login"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3810
    const-string v4, "is_diff_update"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3811
    const-string v4, "file_md5"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3813
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3814
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3815
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3816
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3817
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3818
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3819
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3820
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3821
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3822
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3824
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 3825
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3826
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3827
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3829
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3830
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 3831
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3832
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_161

    const/4 v11, 0x1

    .line 3834
    :goto_122
    const/16 v23, 0x0

    .line 3835
    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_137

    .line 3837
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_163

    const/4 v2, 0x1

    :goto_135
    move/from16 v23, v2

    .line 3839
    :cond_137
    const/16 v24, 0x0

    .line 3840
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_146

    .line 3842
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3845
    :cond_146
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 3847
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_165

    const/4 v2, 0x1

    :goto_151
    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setMarkDeleted(Z)V

    .line 3848
    invoke-static/range {v25 .. v25}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->parse(I)Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstalleStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 3849
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstallErrorReason(I)V

    .line 3850
    return-object v3

    .line 3832
    :cond_161
    const/4 v11, 0x0

    goto :goto_122

    .line 3837
    :cond_163
    const/4 v2, 0x0

    goto :goto_135

    .line 3847
    :cond_165
    const/4 v2, 0x0

    goto :goto_151
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 38

    .prologue
    .line 4379
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "SELECT installed_list.pkg_name AS pkg_name,name,name_pinyin,date,version,version_int,sign,size,installed_list.game_id AS game_id1,installed_list.extra AS  extra1, installed_list.need_login AS  need_login1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4385
    if-nez p3, :cond_15e

    .line 4387
    const-string v4, ",new_version,new_version_int,download_url,update_date,new_size,ignore_update,updatable_list.game_id AS game_id2,icon_url,server_sign,updatable_list.extra AS  extra2 ,updatable_list.need_login AS  need_login2 ,is_diff_update,patch_url,patch_size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4393
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " FROM installed_list,updatable_list WHERE  is_game=1 AND installed_list.pkg_name=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4394
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "installed_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pkg_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "updatable_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pkg_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4395
    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "installed_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "version_int"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "updatable_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "new_version_int"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4407
    :goto_82
    const-string v4, " ORDER BY name_pinyin ASC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4409
    const/4 v4, 0x0

    .line 4412
    :try_start_88
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_92
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_92} :catch_305
    .catchall {:try_start_88 .. :try_end_92} :catchall_2f0

    move-result-object v31

    .line 4413
    :try_start_93
    const-string v3, "pkg_name"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4414
    const-string v3, "name"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4415
    const-string v3, "name_pinyin"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4416
    const-string v3, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4417
    const-string v3, "version"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4418
    const-string v3, "version_int"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4419
    const-string v3, "sign"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4423
    const/4 v7, -0x1

    .line 4424
    const/4 v6, -0x1

    .line 4426
    const/4 v5, -0x1

    .line 4427
    const/4 v4, -0x1

    .line 4428
    const/4 v3, -0x1

    .line 4429
    if-eqz p3, :cond_184

    .line 4431
    const-string v3, "extra1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4432
    const-string v3, "need_login1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4433
    const-string v3, "game_id1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4434
    const-string v3, "file_md5"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4435
    const-string v3, "uid"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v5

    move/from16 v16, v6

    move/from16 v29, v7

    move/from16 v17, v8

    move v11, v9

    .line 4446
    :goto_103
    const-string v5, "size"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4448
    const-string v5, "new_version"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4449
    const-string v5, "new_version_int"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4450
    const-string v5, "download_url"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4451
    const-string v5, "update_date"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4452
    const-string v5, "new_size"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4453
    const-string v5, "ignore_update"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4454
    const-string v5, "server_sign"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 4456
    const-string v5, "icon_url"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 4462
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I
    :try_end_14e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_14e} :catch_2dc
    .catchall {:try_start_93 .. :try_end_14e} :catchall_2ff

    move-result v5

    .line 4463
    if-nez v5, :cond_1bf

    .line 4534
    if-eqz v31, :cond_15c

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_15c

    .line 4536
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 4465
    :cond_15c
    const/4 v3, 0x0

    .line 4539
    :cond_15d
    :goto_15d
    return-object v3

    .line 4402
    :cond_15e
    const-string v4, ",file_md5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4403
    const-string v4, ",uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4405
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " FROM installed_list WHERE  is_game=1 AND pkg_name=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_82

    .line 4439
    :cond_184
    :try_start_184
    const-string v4, "extra2"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4440
    const-string v4, "need_login2"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4441
    const-string v4, "game_id2"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4442
    const-string v4, "is_diff_update"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4443
    const-string v4, "patch_url"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4444
    const-string v4, "patch_size"

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v5

    move/from16 v16, v6

    move/from16 v29, v7

    move/from16 v17, v8

    move v11, v9

    goto/16 :goto_103

    .line 4472
    :cond_1bf
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4473
    move-object/from16 v0, v31

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 4474
    move-object/from16 v0, v31

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4475
    move-object/from16 v0, v31

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4476
    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4477
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4478
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4479
    move-object/from16 v0, v31

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4480
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4481
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4482
    move-object/from16 v0, v31

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_293

    const/4 v11, 0x1

    .line 4483
    :goto_20c
    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4484
    if-nez p3, :cond_29b

    .line 4486
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4487
    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4488
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4489
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 4490
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 4491
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_296

    const/16 v23, 0x1

    .line 4492
    :goto_24e
    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4494
    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 4495
    const/16 v27, 0x0

    .line 4496
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_271

    .line 4498
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    if-ne v3, v0, :cond_299

    const/4 v3, 0x1

    :goto_26f
    move/from16 v27, v3

    .line 4500
    :cond_271
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4501
    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4503
    new-instance v3, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v30}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    :try_end_286
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_184 .. :try_end_286} :catch_2dc
    .catchall {:try_start_184 .. :try_end_286} :catchall_2ff

    .line 4534
    :goto_286
    if-eqz v31, :cond_15d

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_15d

    .line 4536
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15d

    .line 4482
    :cond_293
    const/4 v11, 0x0

    goto/16 :goto_20c

    .line 4491
    :cond_296
    const/16 v23, 0x0

    goto :goto_24e

    .line 4498
    :cond_299
    const/4 v3, 0x0

    goto :goto_26f

    .line 4508
    :cond_29b
    const/16 v18, 0x0

    .line 4509
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_2aa

    .line 4511
    :try_start_2a2
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4513
    :cond_2aa
    const/16 v19, -0x1

    .line 4514
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b5

    .line 4516
    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 4518
    :cond_2b5
    const-string v3, "is_start"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4519
    const-string v3, "is_new_install_app"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 4520
    const-string v3, "install_time"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .line 4521
    new-instance v3, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    const/16 v17, 0x1

    move-object/from16 v4, p2

    move-object/from16 v16, v25

    invoke-direct/range {v3 .. v23}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;IIIJ)V
    :try_end_2db
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a2 .. :try_end_2db} :catch_2dc
    .catchall {:try_start_2a2 .. :try_end_2db} :catchall_2ff

    goto :goto_286

    .line 4527
    :catch_2dc
    move-exception v3

    move-object/from16 v4, v31

    .line 4530
    :goto_2df
    :try_start_2df
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2e2
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_301

    .line 4534
    if-eqz v4, :cond_2ed

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2ed

    .line 4536
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4539
    :cond_2ed
    const/4 v3, 0x0

    goto/16 :goto_15d

    .line 4533
    :catchall_2f0
    move-exception v3

    move-object/from16 v31, v4

    .line 4534
    :goto_2f3
    if-eqz v31, :cond_2fe

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2fe

    .line 4536
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 4538
    :cond_2fe
    throw v3

    .line 4533
    :catchall_2ff
    move-exception v3

    goto :goto_2f3

    :catchall_301
    move-exception v3

    move-object/from16 v31, v4

    goto :goto_2f3

    .line 4527
    :catch_305
    move-exception v3

    goto :goto_2df
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4700
    monitor-enter p0

    const/16 v2, 0x14

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4701
    const-string v3, "pkg_name"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "game_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "name_pinyin"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "update_date"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 4702
    const-string v3, "version"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "version_int"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "sign"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "icon_url"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "extra"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    .line 4703
    const-string v3, "download_date"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "download_id"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "download_url"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "size"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string v3, "is_deleted"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    .line 4704
    const-string v3, "install_status"

    aput-object v3, v4, v2

    const/16 v2, 0x10

    const-string v3, "error_reason"

    aput-object v3, v4, v2

    const/16 v2, 0x11

    const-string v3, "need_login"

    aput-object v3, v4, v2

    const/16 v2, 0x12

    const-string v3, "is_diff_update"

    aput-object v3, v4, v2

    const/16 v2, 0x13

    const-string v3, "file_md5"

    aput-object v3, v4, v2

    .line 4708
    const/4 v6, 0x0

    .line 4710
    const-string v5, "install_status = 2 "
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_243

    .line 4712
    const/4 v10, 0x0

    .line 4716
    :try_start_79
    const-string v3, "download_list"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "download_date DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_84} :catch_24c
    .catchall {:try_start_79 .. :try_end_84} :catchall_234

    move-result-object v26

    .line 4717
    :try_start_85
    const-string v2, "pkg_name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4718
    const-string v2, "name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4719
    const-string v2, "name_pinyin"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 4720
    const-string v2, "update_date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4721
    const-string v2, "version"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4722
    const-string v2, "version_int"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 4723
    const-string v2, "sign"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 4724
    const-string v2, "size"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 4725
    const-string v2, "icon_url"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 4726
    const-string v2, "extra"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 4728
    const-string v2, "download_date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 4729
    const-string v2, "download_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 4730
    const-string v2, "download_url"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 4731
    const-string v2, "game_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 4732
    const-string v2, "is_deleted"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 4733
    const-string v2, "install_status"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 4734
    const-string v2, "error_reason"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 4735
    const-string v2, "need_login"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 4737
    const-string v2, "is_diff_update"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 4738
    const-string v2, "file_md5"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 4743
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4744
    :goto_130
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_133
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_133} :catch_21a
    .catchall {:try_start_85 .. :try_end_133} :catchall_246

    move-result v2

    if-nez v2, :cond_145

    .line 4798
    if-eqz v26, :cond_141

    :try_start_138
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_141

    .line 4800
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_141
    .catchall {:try_start_138 .. :try_end_141} :catchall_243

    :cond_141
    move-object/from16 v2, v25

    .line 4803
    :goto_143
    monitor-exit p0

    return-object v2

    .line 4746
    :cond_145
    :try_start_145
    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4747
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4748
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4749
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4750
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4751
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4752
    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4753
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4754
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4755
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4757
    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 4758
    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4759
    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4760
    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 4762
    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 4763
    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 4764
    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 4766
    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22e

    const/4 v11, 0x1

    .line 4768
    :goto_1d5
    const/16 v23, 0x0

    .line 4769
    const/4 v2, -0x1

    move/from16 v0, v45

    if-eq v0, v2, :cond_1ea

    .line 4771
    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_230

    const/4 v2, 0x1

    :goto_1e8
    move/from16 v23, v2

    .line 4774
    :cond_1ea
    const/16 v24, 0x0

    .line 4775
    const/4 v2, -0x1

    move/from16 v0, v46

    if-eq v0, v2, :cond_1f9

    .line 4777
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4780
    :cond_1f9
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 4783
    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_232

    const/4 v2, 0x1

    :goto_204
    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setMarkDeleted(Z)V

    .line 4784
    invoke-static/range {v48 .. v48}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->parse(I)Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstalleStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 4785
    move/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstallErrorReason(I)V

    .line 4786
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_218
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_145 .. :try_end_218} :catch_21a
    .catchall {:try_start_145 .. :try_end_218} :catchall_246

    goto/16 :goto_130

    .line 4791
    :catch_21a
    move-exception v2

    move-object/from16 v3, v26

    .line 4794
    :goto_21d
    :try_start_21d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_220
    .catchall {:try_start_21d .. :try_end_220} :catchall_248

    .line 4798
    if-eqz v3, :cond_22b

    :try_start_222
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_22b

    .line 4800
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4803
    :cond_22b
    const/4 v2, 0x0

    goto/16 :goto_143

    .line 4766
    :cond_22e
    const/4 v11, 0x0

    goto :goto_1d5

    .line 4771
    :cond_230
    const/4 v2, 0x0

    goto :goto_1e8

    .line 4783
    :cond_232
    const/4 v2, 0x0

    goto :goto_204

    .line 4797
    :catchall_234
    move-exception v2

    move-object/from16 v26, v10

    .line 4798
    :goto_237
    if-eqz v26, :cond_242

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_242

    .line 4800
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4802
    :cond_242
    throw v2
    :try_end_243
    .catchall {:try_start_222 .. :try_end_243} :catchall_243

    .line 4700
    :catchall_243
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4797
    :catchall_246
    move-exception v2

    goto :goto_237

    :catchall_248
    move-exception v2

    move-object/from16 v26, v3

    goto :goto_237

    .line 4791
    :catch_24c
    move-exception v2

    move-object v3, v10

    goto :goto_21d
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 4162
    monitor-enter p0

    const/16 v2, 0x11

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4163
    const-string v3, "pkg_name"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "name_pinyin"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "version"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 4164
    const-string v3, "version_int"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "sign"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "size"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "need_login"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "game_id"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    .line 4165
    const-string v3, "extra"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "is_game"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "file_md5"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "uid"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string v3, "is_start"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    .line 4166
    const-string v3, "is_new_install_app"

    aput-object v3, v4, v2

    const/16 v2, 0x10

    const-string v3, "install_time"

    aput-object v3, v4, v2

    .line 4168
    const/4 v2, 0x0

    .line 4169
    const/4 v6, 0x0

    .line 4171
    if-eqz p2, :cond_82

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_82

    .line 4180
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4181
    const-string v2, "pkg_name IN ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4182
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 4183
    new-array v6, v7, [Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_15b

    .line 4184
    const/4 v2, 0x0

    move v5, v2

    :goto_7f
    if-lt v5, v7, :cond_13d

    move-object v2, v3

    .line 4198
    :cond_82
    const/4 v11, 0x0

    .line 4201
    if-eqz p2, :cond_8b

    :try_start_85
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_15e

    .line 4203
    :cond_8b
    const-string v3, "installed_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "name_pinyin ASC"

    const/4 v10, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_99} :catch_246
    .catchall {:try_start_85 .. :try_end_99} :catchall_231

    move-result-object v24

    .line 4210
    :goto_9a
    :try_start_9a
    const-string v2, "pkg_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4211
    const-string v2, "name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4212
    const-string v2, "name_pinyin"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4213
    const-string v2, "date"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4214
    const-string v2, "version"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 4215
    const-string v2, "version_int"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4216
    const-string v2, "sign"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4217
    const-string v2, "extra"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 4218
    const-string v2, "size"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 4219
    const-string v2, "need_login"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 4220
    const-string v2, "game_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 4221
    const-string v2, "is_game"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 4222
    const-string v2, "file_md5"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 4223
    const-string v2, "uid"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 4226
    const-string v2, "is_start"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4227
    const-string v2, "is_new_install_app"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 4228
    const-string v2, "install_time"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v22, v0

    .line 4231
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4232
    if-nez v3, :cond_171

    .line 4234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_130
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9a .. :try_end_130} :catch_218
    .catchall {:try_start_9a .. :try_end_130} :catchall_240

    .line 4273
    if-eqz v24, :cond_13b

    :try_start_132
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 4275
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_13b
    .catchall {:try_start_132 .. :try_end_13b} :catchall_15b

    .line 4278
    :cond_13b
    :goto_13b
    monitor-exit p0

    return-object v2

    .line 4186
    :cond_13d
    add-int/lit8 v2, v7, -0x1

    if-ne v5, v2, :cond_155

    .line 4188
    :try_start_141
    const-string v2, "?)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4194
    :goto_146
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v5

    .line 4184
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_7f

    .line 4192
    :cond_155
    const-string v2, "?,"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15a
    .catchall {:try_start_141 .. :try_end_15a} :catchall_15b

    goto :goto_146

    .line 4162
    :catchall_15b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4207
    :cond_15e
    :try_start_15e
    const-string v3, "installed_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "name_pinyin ASC"

    const/4 v10, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15e .. :try_end_16e} :catch_246
    .catchall {:try_start_15e .. :try_end_16e} :catchall_231

    move-result-object v24

    goto/16 :goto_9a

    .line 4236
    :cond_171
    :try_start_171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4237
    :goto_176
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_179
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_171 .. :try_end_179} :catch_218
    .catchall {:try_start_171 .. :try_end_179} :catchall_240

    move-result v3

    if-nez v3, :cond_188

    .line 4273
    if-eqz v24, :cond_13b

    :try_start_17e
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13b

    .line 4275
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_187
    .catchall {:try_start_17e .. :try_end_187} :catchall_15b

    goto :goto_13b

    .line 4239
    :cond_188
    :try_start_188
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4240
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4241
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4242
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4243
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4244
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4245
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4246
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4247
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4248
    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4249
    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_22c

    const/4 v11, 0x1

    .line 4250
    :goto_1e0
    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_22e

    const/16 v17, 0x1

    .line 4251
    :goto_1f0
    const/16 v18, 0x0

    .line 4252
    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_1ff

    .line 4254
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4256
    :cond_1ff
    const/16 v19, -0x1

    .line 4257
    const/4 v3, -0x1

    move/from16 v0, v38

    if-eq v0, v3, :cond_20e

    .line 4259
    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 4261
    :cond_20e
    new-instance v3, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 4262
    invoke-direct/range {v3 .. v23}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;IIIJ)V

    .line 4261
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_216
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_188 .. :try_end_216} :catch_218
    .catchall {:try_start_188 .. :try_end_216} :catchall_240

    goto/16 :goto_176

    .line 4267
    :catch_218
    move-exception v2

    move-object/from16 v3, v24

    .line 4269
    :goto_21b
    :try_start_21b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_21e
    .catchall {:try_start_21b .. :try_end_21e} :catchall_242

    .line 4273
    if-eqz v3, :cond_229

    :try_start_220
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_229

    .line 4275
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4278
    :cond_229
    const/4 v2, 0x0

    goto/16 :goto_13b

    .line 4249
    :cond_22c
    const/4 v11, 0x0

    goto :goto_1e0

    .line 4250
    :cond_22e
    const/16 v17, 0x0

    goto :goto_1f0

    .line 4272
    :catchall_231
    move-exception v2

    move-object/from16 v24, v11

    .line 4273
    :goto_234
    if-eqz v24, :cond_23f

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_23f

    .line 4275
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 4277
    :cond_23f
    throw v2
    :try_end_240
    .catchall {:try_start_220 .. :try_end_240} :catchall_15b

    .line 4272
    :catchall_240
    move-exception v2

    goto :goto_234

    :catchall_242
    move-exception v2

    move-object/from16 v24, v3

    goto :goto_234

    .line 4267
    :catch_246
    move-exception v2

    move-object v3, v11

    goto :goto_21b
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .registers 63

    .prologue
    .line 3950
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "SELECT installed_list.pkg_name AS pkg_name,name,name_pinyin,date,version,version_int,sign,size,installed_list.game_id AS game_id1,installed_list.extra AS  extra1 ,installed_list.need_login AS  need_login1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3954
    if-nez p2, :cond_11d

    .line 3956
    const-string v4, ",new_version,new_version_int,download_url,update_date,new_size,ignore_update,updatable_list.game_id AS game_id2,icon_url,server_sign,updatable_list.extra AS  extra2,updatable_list.need_login AS  need_login2 ,is_diff_update ,patch_url ,patch_size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3962
    const-string v4, " FROM installed_list,updatable_list WHERE  is_game=1 AND installed_list.pkg_name=updatable_list.pkg_name AND installed_list.version_int<updatable_list.new_version_int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3981
    :goto_14
    const-string v4, " ORDER BY name_pinyin ASC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_13d

    .line 3984
    const/4 v4, 0x0

    .line 3987
    :try_start_1a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_307
    .catchall {:try_start_1a .. :try_end_24} :catchall_2ff

    move-result-object v32

    .line 3988
    :try_start_25
    const-string v3, "pkg_name"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 3989
    const-string v3, "name"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 3990
    const-string v3, "name_pinyin"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 3991
    const-string v3, "date"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .line 3992
    const-string v3, "version"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 3993
    const-string v3, "version_int"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 3994
    const-string v3, "sign"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 3999
    const/4 v10, -0x1

    .line 4000
    const/4 v9, -0x1

    .line 4001
    const/4 v8, -0x1

    .line 4002
    const/4 v7, -0x1

    .line 4003
    const/4 v6, -0x1

    .line 4007
    const/4 v5, -0x1

    .line 4008
    const/4 v4, -0x1

    .line 4009
    const/4 v3, -0x1

    .line 4011
    if-eqz p2, :cond_140

    .line 4013
    const-string v3, "extra1"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4014
    const-string v3, "need_login1"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4015
    const-string v3, "game_id1"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4016
    const-string v3, "file_md5"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4017
    const-string v3, "uid"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4019
    const-string v3, "is_start"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4020
    const-string v3, "is_new_install_app"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4021
    const-string v3, "install_time"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    move/from16 v34, v4

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v13

    .line 4032
    :goto_bd
    const-string v3, "size"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v51

    .line 4033
    const-string v3, "new_version"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 4034
    const-string v3, "new_version_int"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 4035
    const-string v3, "download_url"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 4036
    const-string v3, "update_date"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    .line 4037
    const-string v3, "new_size"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v56

    .line 4038
    const-string v3, "ignore_update"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v57

    .line 4039
    const-string v3, "server_sign"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 4041
    const-string v3, "icon_url"

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v59

    .line 4043
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4044
    if-nez v3, :cond_188

    .line 4046
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_110} :catch_294
    .catchall {:try_start_25 .. :try_end_110} :catchall_2f2

    .line 4126
    if-eqz v32, :cond_11b

    :try_start_112
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_11b

    .line 4128
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_11b
    .catchall {:try_start_112 .. :try_end_11b} :catchall_13d

    .line 4131
    :cond_11b
    :goto_11b
    monitor-exit p0

    return-object v3

    .line 3970
    :cond_11d
    :try_start_11d
    const-string v4, ",file_md5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3971
    const-string v4, ",uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3974
    const-string v4, ",is_start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3975
    const-string v4, ",is_new_install_app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3976
    const-string v4, ",install_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3979
    const-string v4, " FROM installed_list WHERE  is_game=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13b
    .catchall {:try_start_11d .. :try_end_13b} :catchall_13d

    goto/16 :goto_14

    .line 3950
    :catchall_13d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4025
    :cond_140
    :try_start_140
    const-string v7, "extra2"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4026
    const-string v7, "need_login2"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4027
    const-string v7, "game_id2"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4028
    const-string v7, "is_diff_update"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4029
    const-string v7, "patch_url"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4030
    const-string v7, "patch_size"

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move/from16 v33, v3

    move/from16 v34, v4

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v37, v7

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v13

    goto/16 :goto_bd

    .line 4048
    :cond_188
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4049
    :goto_18f
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_192} :catch_294
    .catchall {:try_start_140 .. :try_end_192} :catchall_2f2

    move-result v3

    if-nez v3, :cond_1a4

    .line 4126
    if-eqz v32, :cond_1a0

    :try_start_197
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1a0

    .line 4128
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V
    :try_end_1a0
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_13d

    :cond_1a0
    move-object/from16 v3, v31

    .line 4117
    goto/16 :goto_11b

    .line 4051
    :cond_1a4
    :try_start_1a4
    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4052
    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4053
    move-object/from16 v0, v32

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4054
    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4055
    move-object/from16 v0, v32

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4056
    move-object/from16 v0, v32

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4057
    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4058
    move-object/from16 v0, v32

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4059
    move-object/from16 v0, v32

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4060
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2a8

    const/4 v11, 0x1

    .line 4061
    :goto_1f8
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4064
    if-eqz v5, :cond_20a

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 4066
    :cond_20a
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4069
    :cond_216
    if-nez p2, :cond_2b0

    .line 4071
    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4072
    move-object/from16 v0, v32

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4073
    move-object/from16 v0, v32

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4074
    move-object/from16 v0, v32

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 4075
    move-object/from16 v0, v32

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 4076
    move-object/from16 v0, v32

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_2ab

    const/16 v23, 0x1

    .line 4077
    :goto_250
    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4079
    move-object/from16 v0, v32

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 4080
    const/16 v27, 0x0

    .line 4081
    const/4 v3, -0x1

    move/from16 v0, v40

    if-eq v0, v3, :cond_278

    .line 4083
    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v3, v0, :cond_2ae

    const/4 v3, 0x1

    :goto_276
    move/from16 v27, v3

    .line 4085
    :cond_278
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4087
    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4089
    new-instance v3, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    invoke-direct/range {v3 .. v30}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 4091
    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_292} :catch_294
    .catchall {:try_start_1a4 .. :try_end_292} :catchall_2f2

    goto/16 :goto_18f

    .line 4119
    :catch_294
    move-exception v3

    move-object/from16 v4, v32

    .line 4122
    :goto_297
    :try_start_297
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29a
    .catchall {:try_start_297 .. :try_end_29a} :catchall_303

    .line 4126
    if-eqz v4, :cond_2a5

    :try_start_29c
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2a5

    .line 4128
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2a5
    .catchall {:try_start_29c .. :try_end_2a5} :catchall_13d

    .line 4131
    :cond_2a5
    const/4 v3, 0x0

    goto/16 :goto_11b

    .line 4060
    :cond_2a8
    const/4 v11, 0x0

    goto/16 :goto_1f8

    .line 4076
    :cond_2ab
    const/16 v23, 0x0

    goto :goto_250

    .line 4083
    :cond_2ae
    const/4 v3, 0x0

    goto :goto_276

    .line 4095
    :cond_2b0
    const/16 v18, 0x0

    .line 4096
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_2bf

    .line 4098
    :try_start_2b7
    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4100
    :cond_2bf
    const/16 v19, -0x1

    .line 4101
    const/4 v3, -0x1

    move/from16 v0, v36

    if-eq v0, v3, :cond_2ce

    .line 4103
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 4106
    :cond_2ce
    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 4107
    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 4108
    invoke-interface/range {v32 .. v33}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 4112
    new-instance v3, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    const/16 v17, 0x1

    move-object/from16 v16, v25

    .line 4113
    invoke-direct/range {v3 .. v23}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;IIIJ)V

    .line 4112
    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2f0} :catch_294
    .catchall {:try_start_2b7 .. :try_end_2f0} :catchall_2f2

    goto/16 :goto_18f

    .line 4125
    :catchall_2f2
    move-exception v3

    .line 4126
    :goto_2f3
    if-eqz v32, :cond_2fe

    :try_start_2f5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2fe

    .line 4128
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 4130
    :cond_2fe
    throw v3
    :try_end_2ff
    .catchall {:try_start_2f5 .. :try_end_2ff} :catchall_13d

    .line 4125
    :catchall_2ff
    move-exception v3

    move-object/from16 v32, v4

    goto :goto_2f3

    :catchall_303
    move-exception v3

    move-object/from16 v32, v4

    goto :goto_2f3

    .line 4119
    :catch_307
    move-exception v3

    goto :goto_297
.end method

.method private a(Lcom/duoku/platform/download/mode/InstalledAppInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 2282
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2286
    :try_start_8
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2287
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2288
    const-string v2, "pkg_name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 2291
    const-string v2, "install_time"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    :cond_2d
    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3c

    .line 2295
    const-string v2, "latest_time"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2297
    :cond_3c
    if-eqz p4, :cond_49

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_49

    .line 2299
    const-string v2, "open_times"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2301
    :cond_49
    const-string v2, "my_installed_list"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4f} :catch_50

    .line 2313
    :goto_4f
    return-void

    .line 2303
    :catch_50
    move-exception v0

    .line 2305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method private a(Ljava/util/List;Z)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2095
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 2170
    :cond_9
    :goto_9
    return-void

    .line 2099
    :cond_a
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2104
    :try_start_10
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_13} :catch_175
    .catchall {:try_start_10 .. :try_end_13} :catchall_172

    move-result-object v1

    .line 2105
    :try_start_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_38

    .line 2107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2113
    :goto_1d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_44

    .line 2156
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_2f} :catch_3c
    .catchall {:try_start_14 .. :try_end_2f} :catchall_168

    .line 2164
    if-eqz v1, :cond_34

    .line 2166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2169
    :cond_34
    :goto_34
    invoke-direct {p0, v2}, Lcom/duoku/platform/d/b;->l(Ljava/lang/String;)V

    goto :goto_9

    .line 2111
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_168

    goto :goto_1d

    .line 2158
    :catch_3c
    move-exception v0

    move-object v0, v1

    .line 2164
    :goto_3e
    if-eqz v0, :cond_34

    .line 2166
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_34

    .line 2114
    :cond_44
    :try_start_44
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2116
    const-string v3, "pkg_name"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string v3, "name"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const-string v3, "name_pinyin"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v3, "version"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    const-string v3, "version_int"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2121
    const-string v3, "date"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2122
    const-string v3, "size"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2123
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a4

    .line 2125
    const-string v3, "sign"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    :cond_a4
    const-string v3, "extra"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    const-string v6, "need_login"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v3

    if-eqz v3, :cond_16f

    const/4 v3, 0x1

    :goto_b6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2129
    const-string v3, "file_md5"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    const-string v3, "uid"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2132
    const-string v3, "is_start"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2134
    const-string v3, "is_new_install_app"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/duoku/platform/d/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2135
    const-string v3, "install_time"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/duoku/platform/d/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2141
    const-string v3, "installed_list"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2142
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_131

    .line 2144
    const-string v3, "wangliangtest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[AppDaoImpl#saveAllInstalledApps]app "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is already saved"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_131
    const-string v3, "com.mas.wawagame.BDDKlord"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 2152
    const-string v3, "wangliangtest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[AppDaoImpl#saveAllInstalledApps]save com.mas.wawagame.BDDKlord:extra?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";login?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_163
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_166
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_166} :catch_3c
    .catchall {:try_start_44 .. :try_end_166} :catchall_168

    goto/16 :goto_26

    .line 2163
    :catchall_168
    move-exception v0

    .line 2164
    :goto_169
    if-eqz v1, :cond_16e

    .line 2166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2168
    :cond_16e
    throw v0

    .line 2128
    :cond_16f
    const/4 v3, 0x0

    goto/16 :goto_b6

    .line 2163
    :catchall_172
    move-exception v0

    move-object v1, v2

    goto :goto_169

    .line 2158
    :catch_175
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3e
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 1794
    .line 1797
    :try_start_1
    const-string v1, "installed_list"

    .line 1798
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1799
    const-string v3, "install_time"

    aput-object v3, v2, v0

    .line 1800
    const-string v3, "pkg_name=?"

    .line 1801
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1802
    aput-object p2, v4, v0

    .line 1803
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1797
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1a} :catch_2e
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3b

    move-result-object v2

    .line 1805
    if-eqz v2, :cond_42

    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1807
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_27} :catch_4e
    .catchall {:try_start_1d .. :try_end_27} :catchall_48

    move-result-wide v0

    .line 1816
    if-eqz v2, :cond_2d

    .line 1818
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1821
    :cond_2d
    :goto_2d
    return-wide v0

    .line 1810
    :catch_2e
    move-exception v0

    move-object v1, v8

    .line 1812
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4b

    .line 1816
    if-eqz v1, :cond_38

    .line 1818
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1821
    :cond_38
    :goto_38
    const-wide/16 v0, 0x0

    goto :goto_2d

    .line 1815
    :catchall_3b
    move-exception v0

    .line 1816
    :goto_3c
    if-eqz v8, :cond_41

    .line 1818
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1820
    :cond_41
    throw v0

    .line 1816
    :cond_42
    if-eqz v2, :cond_38

    .line 1818
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 1815
    :catchall_48
    move-exception v0

    move-object v8, v2

    goto :goto_3c

    :catchall_4b
    move-exception v0

    move-object v8, v1

    goto :goto_3c

    .line 1810
    :catch_4e
    move-exception v0

    move-object v1, v2

    goto :goto_30
.end method

.method private declared-synchronized b(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    .registers 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4564
    monitor-enter p0

    const/16 v2, 0x14

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4565
    const-string v3, "pkg_name"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "game_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "name_pinyin"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "update_date"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    .line 4566
    const-string v3, "version"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "version_int"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "sign"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "icon_url"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "extra"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    .line 4567
    const-string v3, "download_date"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "download_id"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "download_url"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "size"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string v3, "is_deleted"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    .line 4568
    const-string v3, "install_status"

    aput-object v3, v4, v2

    const/16 v2, 0x10

    const-string v3, "error_reason"

    aput-object v3, v4, v2

    const/16 v2, 0x11

    const-string v3, "need_login"

    aput-object v3, v4, v2

    const/16 v2, 0x12

    const-string v3, "is_diff_update"

    aput-object v3, v4, v2

    const/16 v2, 0x13

    const-string v3, "file_md5"

    aput-object v3, v4, v2

    .line 4571
    const/4 v5, 0x0

    .line 4572
    const/4 v6, 0x0

    .line 4573
    if-nez p2, :cond_7b

    .line 4580
    const-string v5, "is_deleted = 0 "
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_246

    .line 4583
    :cond_7b
    const/4 v10, 0x0

    .line 4587
    :try_start_7c
    const-string v3, "download_list"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "download_date DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_87} :catch_24f
    .catchall {:try_start_7c .. :try_end_87} :catchall_237

    move-result-object v26

    .line 4588
    :try_start_88
    const-string v2, "pkg_name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 4589
    const-string v2, "name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4590
    const-string v2, "name_pinyin"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 4591
    const-string v2, "update_date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4592
    const-string v2, "version"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 4593
    const-string v2, "version_int"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 4594
    const-string v2, "sign"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 4595
    const-string v2, "size"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 4596
    const-string v2, "icon_url"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 4597
    const-string v2, "extra"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 4599
    const-string v2, "download_date"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 4600
    const-string v2, "download_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 4601
    const-string v2, "download_url"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 4602
    const-string v2, "game_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 4603
    const-string v2, "is_deleted"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 4604
    const-string v2, "install_status"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 4605
    const-string v2, "error_reason"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .line 4606
    const-string v2, "need_login"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 4608
    const-string v2, "is_diff_update"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 4609
    const-string v2, "file_md5"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 4614
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4615
    :goto_133
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_136
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_136} :catch_21d
    .catchall {:try_start_88 .. :try_end_136} :catchall_249

    move-result v2

    if-nez v2, :cond_148

    .line 4669
    if-eqz v26, :cond_144

    :try_start_13b
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_144

    .line 4671
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_144
    .catchall {:try_start_13b .. :try_end_144} :catchall_246

    :cond_144
    move-object/from16 v2, v25

    .line 4674
    :goto_146
    monitor-exit p0

    return-object v2

    .line 4617
    :cond_148
    :try_start_148
    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4618
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4619
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4620
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4621
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4622
    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4623
    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4624
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4625
    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4626
    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4628
    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 4629
    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4630
    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4631
    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 4633
    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 4634
    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 4635
    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 4637
    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_231

    const/4 v11, 0x1

    .line 4639
    :goto_1d8
    const/16 v23, 0x0

    .line 4640
    const/4 v2, -0x1

    move/from16 v0, v45

    if-eq v0, v2, :cond_1ed

    .line 4642
    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_233

    const/4 v2, 0x1

    :goto_1eb
    move/from16 v23, v2

    .line 4645
    :cond_1ed
    const/16 v24, 0x0

    .line 4646
    const/4 v2, -0x1

    move/from16 v0, v46

    if-eq v0, v2, :cond_1fc

    .line 4648
    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4651
    :cond_1fc
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 4654
    const/4 v2, 0x1

    move/from16 v0, v47

    if-ne v0, v2, :cond_235

    const/4 v2, 0x1

    :goto_207
    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setMarkDeleted(Z)V

    .line 4655
    invoke-static/range {v48 .. v48}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->parse(I)Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstalleStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 4656
    move/from16 v0, v49

    invoke-virtual {v3, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstallErrorReason(I)V

    .line 4657
    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_148 .. :try_end_21b} :catch_21d
    .catchall {:try_start_148 .. :try_end_21b} :catchall_249

    goto/16 :goto_133

    .line 4662
    :catch_21d
    move-exception v2

    move-object/from16 v3, v26

    .line 4665
    :goto_220
    :try_start_220
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_223
    .catchall {:try_start_220 .. :try_end_223} :catchall_24b

    .line 4669
    if-eqz v3, :cond_22e

    :try_start_225
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_22e

    .line 4671
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4674
    :cond_22e
    const/4 v2, 0x0

    goto/16 :goto_146

    .line 4637
    :cond_231
    const/4 v11, 0x0

    goto :goto_1d8

    .line 4642
    :cond_233
    const/4 v2, 0x0

    goto :goto_1eb

    .line 4654
    :cond_235
    const/4 v2, 0x0

    goto :goto_207

    .line 4668
    :catchall_237
    move-exception v2

    move-object/from16 v26, v10

    .line 4669
    :goto_23a
    if-eqz v26, :cond_245

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_245

    .line 4671
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4673
    :cond_245
    throw v2
    :try_end_246
    .catchall {:try_start_225 .. :try_end_246} :catchall_246

    .line 4564
    :catchall_246
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4668
    :catchall_249
    move-exception v2

    goto :goto_23a

    :catchall_24b
    move-exception v2

    move-object/from16 v26, v3

    goto :goto_23a

    .line 4662
    :catch_24f
    move-exception v2

    move-object v3, v10

    goto :goto_220
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1827
    .line 1830
    :try_start_2
    const-string v1, "installed_list"

    .line 1831
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1832
    const-string v3, "is_new_install_app"

    aput-object v3, v2, v0

    .line 1833
    const-string v3, "pkg_name=?"

    .line 1834
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1835
    aput-object p2, v4, v0

    .line 1836
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1830
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_2f
    .catchall {:try_start_2 .. :try_end_1b} :catchall_3b

    move-result-object v1

    .line 1838
    if-eqz v1, :cond_42

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1840
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_28} :catch_4b
    .catchall {:try_start_1e .. :try_end_28} :catchall_48

    move-result v0

    .line 1849
    if-eqz v1, :cond_2e

    .line 1851
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1854
    :cond_2e
    :goto_2e
    return v0

    .line 1843
    :catch_2f
    move-exception v0

    move-object v1, v9

    .line 1845
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_48

    .line 1849
    if-eqz v1, :cond_39

    .line 1851
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    :goto_39
    move v0, v8

    .line 1854
    goto :goto_2e

    .line 1848
    :catchall_3b
    move-exception v0

    .line 1849
    :goto_3c
    if-eqz v9, :cond_41

    .line 1851
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_41
    throw v0

    .line 1849
    :cond_42
    if-eqz v1, :cond_39

    .line 1851
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 1848
    :catchall_48
    move-exception v0

    move-object v9, v1

    goto :goto_3c

    .line 1843
    :catch_4b
    move-exception v0

    goto :goto_31
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 1912
    .line 1915
    :try_start_1
    const-string v1, "installed_list"

    .line 1916
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1917
    const-string v3, "is_new_install_app"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "install_time"

    aput-object v3, v2, v0

    .line 1918
    const-string v3, "pkg_name = ? "

    .line 1919
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1920
    aput-object p2, v4, v0

    .line 1921
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 1915
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1f} :catch_5f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_6a

    move-result-object v1

    .line 1922
    if-eqz v1, :cond_59

    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1924
    const-string v0, "is_new_install_app"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1925
    const-string v2, "install_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 1927
    if-lez v0, :cond_59

    .line 1931
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1932
    const-string v2, "is_new_install_app"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1934
    const-string v2, "installed_list"

    const-string v3, "pkg_name = ? "

    .line 1935
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1936
    aput-object p2, v4, v5

    .line 1934
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_59} :catch_74
    .catchall {:try_start_22 .. :try_end_59} :catchall_72

    .line 1949
    :cond_59
    if-eqz v1, :cond_5e

    .line 1951
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1954
    :cond_5e
    :goto_5e
    return-void

    .line 1943
    :catch_5f
    move-exception v0

    move-object v1, v8

    .line 1945
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_72

    .line 1949
    if-eqz v1, :cond_5e

    .line 1951
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    .line 1948
    :catchall_6a
    move-exception v0

    move-object v1, v8

    .line 1949
    :goto_6c
    if-eqz v1, :cond_71

    .line 1951
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1953
    :cond_71
    throw v0

    .line 1948
    :catchall_72
    move-exception v0

    goto :goto_6c

    .line 1943
    :catch_74
    move-exception v0

    goto :goto_61
.end method

.method private declared-synchronized e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 28

    .prologue
    .line 4283
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "SELECT installed_list.pkg_name AS pkg_name,name,name_pinyin,date,version,version_int,sign,size,game_id AS game_id1,extra AS  extra1, need_login AS  need_login1 ,file_md5,uid,is_new_install_app,install_time,is_start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " FROM installed_list WHERE  pkg_name=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_154

    .line 4295
    const/4 v3, 0x0

    .line 4298
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_2d} :catch_159
    .catchall {:try_start_23 .. :try_end_2d} :catchall_16b

    move-result-object v24

    .line 4299
    :try_start_2e
    const-string v2, "pkg_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4300
    const-string v2, "name"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4301
    const-string v3, "name_pinyin"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4302
    const-string v4, "date"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4303
    const-string v5, "version"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4304
    const-string v5, "version_int"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4305
    const-string v5, "sign"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4306
    const-string v5, "file_md5"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4307
    const-string v5, "uid"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4312
    const-string v5, "extra1"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4313
    const-string v5, "need_login1"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4314
    const-string v5, "game_id1"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4316
    const-string v5, "size"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4318
    const-string v5, "is_start"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4319
    const-string v5, "is_new_install_app"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4320
    const-string v5, "install_time"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4322
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_b0} :catch_180
    .catchall {:try_start_2e .. :try_end_b0} :catchall_17a

    move-result v5

    .line 4323
    if-nez v5, :cond_c1

    .line 4369
    if-eqz v24, :cond_be

    :try_start_b5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_be

    .line 4371
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_154

    .line 4325
    :cond_be
    const/4 v3, 0x0

    .line 4374
    :cond_bf
    :goto_bf
    monitor-exit p0

    return-object v3

    .line 4332
    :cond_c1
    :try_start_c1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4333
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4334
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4335
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4336
    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4337
    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4338
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4339
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4340
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 4341
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_157

    const/4 v11, 0x1

    .line 4342
    :goto_100
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4343
    const/16 v18, 0x0

    .line 4344
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_117

    .line 4346
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4348
    :cond_117
    const/16 v19, -0x1

    .line 4349
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_126

    .line 4351
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 4354
    :cond_126
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 4355
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 4356
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 4358
    new-instance v3, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    const/16 v17, 0x1

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v23}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;IIIJ)V
    :try_end_147
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_147} :catch_180
    .catchall {:try_start_c1 .. :try_end_147} :catchall_17a

    .line 4369
    if-eqz v24, :cond_bf

    :try_start_149
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_bf

    .line 4371
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_152
    .catchall {:try_start_149 .. :try_end_152} :catchall_154

    goto/16 :goto_bf

    .line 4283
    :catchall_154
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4341
    :cond_157
    const/4 v11, 0x0

    goto :goto_100

    .line 4362
    :catch_159
    move-exception v2

    .line 4365
    :goto_15a
    :try_start_15a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_17c

    .line 4369
    if-eqz v3, :cond_168

    :try_start_15f
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_168

    .line 4371
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4374
    :cond_168
    const/4 v3, 0x0

    goto/16 :goto_bf

    .line 4368
    :catchall_16b
    move-exception v2

    move-object/from16 v24, v3

    .line 4369
    :goto_16e
    if-eqz v24, :cond_179

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_179

    .line 4371
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 4373
    :cond_179
    throw v2
    :try_end_17a
    .catchall {:try_start_15f .. :try_end_17a} :catchall_154

    .line 4368
    :catchall_17a
    move-exception v2

    goto :goto_16e

    :catchall_17c
    move-exception v2

    move-object/from16 v24, v3

    goto :goto_16e

    .line 4362
    :catch_180
    move-exception v2

    move-object/from16 v3, v24

    goto :goto_15a
.end method

.method private l(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2060
    if-nez p1, :cond_24

    .line 2062
    invoke-virtual {p0}, Lcom/duoku/platform/d/b;->h()Ljava/util/List;

    move-result-object v0

    .line 2064
    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 2066
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2067
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2071
    invoke-virtual {p0, v1}, Lcom/duoku/platform/d/b;->a(Ljava/util/Map;)V

    .line 2074
    :cond_24
    return-void

    .line 2067
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/MyDownloadedGame;

    .line 2069
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 4920
    const-string v0, "white_list"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/d/b;->k(Ljava/lang/String;)I

    move-result v0

    .line 4921
    return v0
.end method

.method public a(JLjava/lang/String;ZJ)I
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2495
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 2499
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2500
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2502
    const-string v4, "download_url"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v4, "is_diff_update"

    if-eqz p4, :cond_40

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2504
    const-string v0, "size"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2505
    const-string v0, "download_list"

    const-string v4, "download_id=?"

    .line 2506
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2507
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2505
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2509
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_3f} :catch_42

    .line 2519
    :goto_3f
    return v0

    :cond_40
    move v0, v1

    .line 2503
    goto :goto_1a

    .line 2512
    :catch_42
    move-exception v0

    .line 2514
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move v0, v1

    .line 2519
    goto :goto_3f
.end method

.method public a(Lcom/duoku/platform/download/mode/MergeMode;)I
    .registers 3

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/d/b$c;->b(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)I
    .registers 12

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/duoku/platform/d/b$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZJ)I
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2465
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 2469
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2470
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2472
    const-string v4, "download_url"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    const-string v4, "is_diff_update"

    if-eqz p3, :cond_3c

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2474
    const-string v0, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2475
    const-string v0, "download_list"

    const-string v4, "download_url=?"

    .line 2476
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 2477
    aput-object p1, v5, v6

    .line 2475
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2479
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_3b} :catch_3e

    .line 2489
    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    .line 2473
    goto :goto_1a

    .line 2482
    :catch_3e
    move-exception v0

    .line 2484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move v0, v1

    .line 2489
    goto :goto_3b
.end method

.method public a(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2395
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 2399
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2400
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2401
    const-string v2, "game_id"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    const-string v2, "pkg_name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    const-string v2, "name_pinyin"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v2, "version"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const-string v2, "version_int"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2413
    const-string v2, "update_date"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2416
    const-string v2, "size"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2417
    const-string v2, "sign"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSign()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v2, "file_md5"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string v2, "icon_url"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string v2, "extra"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string v5, "need_login"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v2

    if-eqz v2, :cond_106

    move v2, v0

    :goto_92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2425
    const-string v2, "download_date"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2428
    const-string v2, "download_id"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2431
    const-string v2, "download_url"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    const-string v2, "is_diff_update"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v5

    if-eqz v5, :cond_108

    :goto_c4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2439
    const-string v0, "download_list"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2441
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_ea

    .line 2442
    const-string v2, "PopNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[AppDaoImpl#addDownloadGame]rowId:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_ea
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2445
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_105

    .line 2446
    const-string v2, "wang"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addDownloadGame db,rowId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_105} :catch_10a

    .line 2459
    :cond_105
    :goto_105
    return-wide v0

    :cond_106
    move v2, v1

    .line 2422
    goto :goto_92

    :cond_108
    move v0, v1

    .line 2434
    goto :goto_c4

    .line 2449
    :catch_10a
    move-exception v0

    .line 2451
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 2459
    const-wide/16 v0, -0x1

    goto :goto_105
.end method

.method public a(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3504
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3506
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3510
    const/16 v1, 0x14

    :try_start_e
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3511
    const-string v3, "pkg_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "game_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "name_pinyin"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "update_date"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    .line 3512
    const-string v3, "version"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "version_int"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "sign"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "size"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "download_url"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    .line 3513
    const-string v3, "icon_url"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "extra"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "download_date"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "download_id"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "is_deleted"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    .line 3514
    const-string v3, "install_status"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "error_reason"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "need_login"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "is_diff_update"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "file_md5"

    aput-object v3, v2, v1

    .line 3519
    if-eqz p2, :cond_b1

    .line 3522
    const-string v3, "download_id=?"

    .line 3524
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3525
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 3538
    :goto_8e
    const-string v1, "download_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "download_date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_97} :catch_be
    .catchall {:try_start_e .. :try_end_97} :catchall_e3

    move-result-object v1

    .line 3539
    :try_start_98
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v9, :cond_d0

    .line 3543
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_a1} :catch_f3
    .catchall {:try_start_98 .. :try_end_a1} :catchall_f0

    move-result v0

    if-nez v0, :cond_d0

    .line 3557
    if-eqz v1, :cond_af

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_af

    .line 3559
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_af
    move-object v0, v8

    .line 3562
    :cond_b0
    :goto_b0
    return-object v0

    .line 3531
    :cond_b1
    :try_start_b1
    const-string v3, "download_id=? AND is_deleted = 0 "

    .line 3534
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3535
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_bd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b1 .. :try_end_bd} :catch_be
    .catchall {:try_start_b1 .. :try_end_bd} :catchall_e3

    goto :goto_8e

    .line 3550
    :catch_be
    move-exception v0

    move-object v1, v8

    .line 3553
    :goto_c0
    :try_start_c0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_f0

    .line 3557
    if-eqz v1, :cond_ce

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 3559
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ce
    move-object v0, v8

    .line 3562
    goto :goto_b0

    .line 3547
    :cond_d0
    :try_start_d0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3548
    invoke-direct {p0, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d0 .. :try_end_d6} :catch_f3
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_f0

    move-result-object v0

    .line 3557
    if-eqz v1, :cond_b0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 3559
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b0

    .line 3556
    :catchall_e3
    move-exception v0

    .line 3557
    :goto_e4
    if-eqz v8, :cond_ef

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 3559
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3561
    :cond_ef
    throw v0

    .line 3556
    :catchall_f0
    move-exception v0

    move-object v8, v1

    goto :goto_e4

    .line 3550
    :catch_f3
    move-exception v0

    goto :goto_c0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3574
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3576
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3580
    const/16 v1, 0x14

    :try_start_e
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3581
    const-string v3, "pkg_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "game_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "name_pinyin"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "update_date"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    .line 3582
    const-string v3, "version"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "version_int"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "sign"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "size"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "download_url"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    .line 3583
    const-string v3, "icon_url"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "extra"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "download_date"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "download_id"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "is_deleted"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    .line 3584
    const-string v3, "install_status"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "error_reason"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "need_login"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "is_diff_update"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "file_md5"

    aput-object v3, v2, v1

    .line 3589
    if-eqz p4, :cond_b3

    .line 3592
    const-string v3, "pkg_name=? AND version=? AND version_int=?"

    .line 3594
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3595
    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 v1, 0x2

    aput-object p3, v4, v1

    .line 3609
    :goto_90
    const-string v1, "download_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "download_date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_99} :catch_c2
    .catchall {:try_start_e .. :try_end_99} :catchall_e7

    move-result-object v1

    .line 3610
    :try_start_9a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v9, :cond_d4

    .line 3614
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9a .. :try_end_a3} :catch_f7
    .catchall {:try_start_9a .. :try_end_a3} :catchall_f4

    move-result v0

    if-nez v0, :cond_d4

    .line 3628
    if-eqz v1, :cond_b1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 3630
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b1
    move-object v0, v8

    .line 3633
    :cond_b2
    :goto_b2
    return-object v0

    .line 3601
    :cond_b3
    :try_start_b3
    const-string v3, "pkg_name=? AND version=? AND version_int=? AND is_deleted = 0 "

    .line 3605
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3606
    aput-object p1, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1

    const/4 v1, 0x2

    aput-object p3, v4, v1
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_c1} :catch_c2
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_e7

    goto :goto_90

    .line 3621
    :catch_c2
    move-exception v0

    move-object v1, v8

    .line 3624
    :goto_c4
    :try_start_c4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_f4

    .line 3628
    if-eqz v1, :cond_d2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 3630
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d2
    move-object v0, v8

    .line 3633
    goto :goto_b2

    .line 3618
    :cond_d4
    :try_start_d4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3619
    invoke-direct {p0, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d4 .. :try_end_da} :catch_f7
    .catchall {:try_start_d4 .. :try_end_da} :catchall_f4

    move-result-object v0

    .line 3628
    if-eqz v1, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 3630
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b2

    .line 3627
    :catchall_e7
    move-exception v0

    .line 3628
    :goto_e8
    if-eqz v8, :cond_f3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 3630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3632
    :cond_f3
    throw v0

    .line 3627
    :catchall_f4
    move-exception v0

    move-object v8, v1

    goto :goto_e8

    .line 3621
    :catch_f7
    move-exception v0

    goto :goto_c4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 3639
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    move-object v0, v9

    .line 3720
    :cond_8
    :goto_8
    return-object v0

    .line 3644
    :cond_9
    if-eqz p1, :cond_e2

    move v1, v8

    :goto_c
    add-int/2addr v1, v0

    .line 3645
    if-eqz p2, :cond_10

    move v0, v8

    :cond_10
    add-int v3, v1, v0

    .line 3647
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3649
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3653
    const/16 v1, 0x14

    :try_start_1e
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3654
    const-string v4, "pkg_name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "game_id"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "name_pinyin"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "update_date"

    aput-object v4, v2, v1

    const/4 v1, 0x5

    .line 3655
    const-string v4, "version"

    aput-object v4, v2, v1

    const/4 v1, 0x6

    const-string v4, "version_int"

    aput-object v4, v2, v1

    const/4 v1, 0x7

    const-string v4, "sign"

    aput-object v4, v2, v1

    const/16 v1, 0x8

    const-string v4, "size"

    aput-object v4, v2, v1

    const/16 v1, 0x9

    const-string v4, "download_url"

    aput-object v4, v2, v1

    const/16 v1, 0xa

    .line 3656
    const-string v4, "icon_url"

    aput-object v4, v2, v1

    const/16 v1, 0xb

    const-string v4, "extra"

    aput-object v4, v2, v1

    const/16 v1, 0xc

    const-string v4, "download_date"

    aput-object v4, v2, v1

    const/16 v1, 0xd

    const-string v4, "download_id"

    aput-object v4, v2, v1

    const/16 v1, 0xe

    const-string v4, "is_deleted"

    aput-object v4, v2, v1

    const/16 v1, 0xf

    .line 3657
    const-string v4, "install_status"

    aput-object v4, v2, v1

    const/16 v1, 0x10

    const-string v4, "error_reason"

    aput-object v4, v2, v1

    const/16 v1, 0x11

    const-string v4, "need_login"

    aput-object v4, v2, v1

    const/16 v1, 0x12

    const-string v4, "is_diff_update"

    aput-object v4, v2, v1

    const/16 v1, 0x13

    const-string v4, "file_md5"

    aput-object v4, v2, v1

    .line 3660
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3662
    new-array v4, v3, [Ljava/lang/String;

    .line 3663
    if-eqz p3, :cond_e8

    .line 3666
    if-eqz p1, :cond_a4

    .line 3668
    const-string v3, "(download_url=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 3669
    const/4 v3, 0x0

    aput-object p1, v4, v3

    .line 3671
    :cond_a4
    if-eqz p2, :cond_112

    .line 3673
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_e5

    const-string v3, " OR "

    :goto_ae
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3674
    const-string v3, "game_id =? )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3675
    const/4 v3, 0x1

    aput-object p2, v4, v3

    move-object v3, v1

    .line 3696
    :goto_ba
    const-string v1, "download_list"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "download_date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_c7} :catch_12b
    .catchall {:try_start_1e .. :try_end_c7} :catchall_13e

    move-result-object v1

    .line 3697
    :try_start_c8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v8, :cond_117

    .line 3701
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_d1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_d1} :catch_14e
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_14b

    move-result v0

    if-nez v0, :cond_117

    .line 3715
    if-eqz v1, :cond_df

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_df

    .line 3717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_df
    move-object v0, v9

    .line 3703
    goto/16 :goto_8

    :cond_e2
    move v1, v0

    .line 3644
    goto/16 :goto_c

    .line 3673
    :cond_e5
    :try_start_e5
    const-string v3, "("

    goto :goto_ae

    .line 3682
    :cond_e8
    if-eqz p1, :cond_f3

    .line 3684
    const-string v3, "(download_url=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 3685
    const/4 v3, 0x0

    aput-object p1, v4, v3

    .line 3687
    :cond_f3
    if-eqz p2, :cond_108

    .line 3689
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_114

    const-string v3, " OR "

    :goto_fd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3690
    const-string v3, "game_id=? )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3691
    const/4 v3, 0x1

    aput-object p2, v4, v3

    .line 3693
    :cond_108
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3694
    const-string v3, "is_deleted = 0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_112
    move-object v3, v1

    goto :goto_ba

    .line 3689
    :cond_114
    const-string v3, "("
    :try_end_116
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e5 .. :try_end_116} :catch_12b
    .catchall {:try_start_e5 .. :try_end_116} :catchall_13e

    goto :goto_fd

    .line 3705
    :cond_117
    :try_start_117
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3706
    invoke-direct {p0, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_11d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_117 .. :try_end_11d} :catch_14e
    .catchall {:try_start_117 .. :try_end_11d} :catchall_14b

    move-result-object v0

    .line 3715
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 3708
    :catch_12b
    move-exception v0

    move-object v1, v9

    .line 3711
    :goto_12d
    :try_start_12d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_14b

    .line 3715
    if-eqz v1, :cond_13b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13b

    .line 3717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13b
    move-object v0, v9

    .line 3720
    goto/16 :goto_8

    .line 3714
    :catchall_13e
    move-exception v0

    .line 3715
    :goto_13f
    if-eqz v9, :cond_14a

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_14a

    .line 3717
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3719
    :cond_14a
    throw v0

    .line 3714
    :catchall_14b
    move-exception v0

    move-object v9, v1

    goto :goto_13f

    .line 3708
    :catch_14e
    move-exception v0

    goto :goto_12d
.end method

.method public declared-synchronized a(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    .line 3315
    :try_start_7
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3316
    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/d/b;->b(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    move-result-object v0

    .line 3322
    :goto_f
    monitor-exit p0

    return-object v0

    .line 3318
    :catch_11
    move-exception v0

    .line 3320
    :try_start_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    .line 3322
    const/4 v0, 0x0

    goto :goto_f

    .line 3311
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    .registers 8

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2242
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2244
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2245
    const-string v0, "pkg_name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v0, "name_pinyin"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    const-string v0, "version"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    const-string v0, "version_int"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2250
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2251
    const-string v0, "size"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2252
    const-string v0, "extra"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v3, "need_login"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v0

    if-eqz v0, :cond_d1

    const/4 v0, 0x1

    :goto_6c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2254
    const-string v0, "file_md5"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getUid()I

    move-result v0

    if-lez v0, :cond_8f

    .line 2256
    const-string v0, "uid"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2257
    :cond_8f
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 2259
    const-string v0, "sign"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :cond_9e
    const-string v0, "is_start"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2263
    const-string v0, "install_time"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/duoku/platform/d/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2264
    const-string v0, "installed_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2265
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2266
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/d/b;->l(Ljava/lang/String;)V
    :try_end_d0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_d0} :catch_d3

    .line 2278
    :goto_d0
    return-void

    .line 2253
    :cond_d1
    const/4 v0, 0x0

    goto :goto_6c

    .line 2268
    :catch_d3
    move-exception v0

    .line 2270
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_d0
.end method

.method public a(Lcom/duoku/platform/download/mode/InstalledAppInfo;Z)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2331
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 2335
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2336
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2337
    const-string v2, "pkg_name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v2, "name_pinyin"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    const-string v2, "version"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string v2, "version_int"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2342
    const-string v2, "date"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2343
    const-string v2, "extra"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string v5, "need_login"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNeedLogin()Z

    move-result v2

    if-eqz v2, :cond_e7

    move v2, v0

    :goto_61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2345
    const-string v2, "size"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2346
    const-string v2, "is_game"

    if-eqz p2, :cond_ea

    :goto_79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2347
    const-string v0, "game_id"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    const-string v0, "file_md5"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getUid()I

    move-result v0

    if-lez v0, :cond_a5

    .line 2350
    const-string v0, "uid"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2351
    :cond_a5
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 2353
    const-string v0, "sign"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :cond_b4
    const-string v0, "is_start"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2357
    const-string v0, "install_time"

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/duoku/platform/d/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2358
    const-string v0, "installed_list"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2359
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2360
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/d/b;->l(Ljava/lang/String;)V
    :try_end_e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_e6} :catch_ec

    .line 2372
    :goto_e6
    return-void

    :cond_e7
    move v2, v1

    .line 2344
    goto/16 :goto_61

    :cond_ea
    move v0, v1

    .line 2346
    goto :goto_79

    .line 2362
    :catch_ec
    move-exception v0

    .line 2364
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_e6
.end method

.method public a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2579
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2580
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2581
    const-string v2, "sign"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    const-string v2, "file_md5"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v2, "download_id=?"

    .line 2586
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2587
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2589
    const-string v4, "download_list"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2590
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_2d} :catch_2e

    .line 2599
    :goto_2d
    return-void

    .line 2592
    :catch_2e
    move-exception v0

    .line 2594
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2d
.end method

.method public a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2533
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2534
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2535
    const-string v2, "pkg_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-string v2, "version"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    const-string v2, "version_int"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2539
    const-string v2, "sign"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v2, "file_md5"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-string v2, "pkg_name=? AND download_id=?"

    .line 2546
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2547
    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2549
    const-string v4, "download_list"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2554
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_43} :catch_44

    .line 2566
    :goto_43
    return-void

    .line 2556
    :catch_44
    move-exception v0

    .line 2558
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_43
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 1863
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v1

    .line 1864
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1868
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1870
    invoke-direct {p0, v1, p1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v2

    .line 1873
    invoke-direct {p0, v1, p1}, Lcom/duoku/platform/d/b;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1875
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1877
    const-string v4, "is_start"

    if-nez v2, :cond_4b

    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1879
    const-string v0, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1884
    const-string v0, "installed_list"

    const-string v2, "pkg_name = ? "

    .line 1885
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1886
    aput-object p1, v4, v5

    .line 1884
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1892
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_42} :catch_4e
    .catchall {:try_start_b .. :try_end_42} :catchall_5e

    .line 1902
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1903
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 1908
    :cond_4a
    :goto_4a
    return-void

    .line 1877
    :cond_4b
    add-int/lit8 v0, v2, 0x1

    goto :goto_1e

    .line 1895
    :catch_4e
    move-exception v0

    .line 1897
    :try_start_4f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1898
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_5e

    .line 1902
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1903
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    goto :goto_4a

    .line 1901
    :catchall_5e
    move-exception v0

    .line 1902
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1903
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 1907
    :cond_67
    throw v0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Long;Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V
    .registers 11

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2642
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2643
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2653
    const-string v2, "install_status"

    invoke-virtual {p3}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2654
    sget-object v2, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne p3, v2, :cond_2c

    .line 2656
    const-string v2, "error_reason"

    const/4 v3, 0x0

    aget v3, p4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2658
    :cond_2c
    const-string v2, "pkg_name=? AND download_id=?"

    .line 2660
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2661
    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2663
    const-string v4, "download_list"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2664
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_43} :catch_44

    .line 2676
    :goto_43
    return-void

    .line 2666
    :catch_44
    move-exception v0

    .line 2668
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_43
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1608
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 1612
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1613
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1614
    const-string v4, "ignore_update"

    if-eqz p2, :cond_2c

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    if-eqz p1, :cond_2e

    .line 1617
    const-string v0, "updatable_list"

    const-string v1, "pkg_name= ?"

    .line 1618
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1619
    aput-object p1, v4, v5

    .line 1617
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1636
    :goto_2b
    return-void

    :cond_2c
    move v0, v1

    .line 1614
    goto :goto_15

    .line 1624
    :cond_2e
    const-string v0, "updatable_list"

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_2b

    .line 1628
    :catch_36
    move-exception v0

    .line 1630
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2b
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2089
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/d/b;->a(Ljava/util/List;Z)V

    .line 2090
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4998
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 5002
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_9} :catch_39

    move-result-object v2

    .line 5005
    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2d

    .line 5007
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 5013
    :goto_13
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5014
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5015
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 5034
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_29} :catch_31
    .catchall {:try_start_a .. :try_end_29} :catchall_97

    .line 5042
    :try_start_29
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2c} :catch_39

    .line 5053
    :goto_2c
    return-void

    .line 5011
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_97

    goto :goto_13

    .line 5036
    :catch_31
    move-exception v0

    .line 5038
    :try_start_32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_97

    .line 5042
    :try_start_35
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2c

    .line 5046
    :catch_39
    move-exception v0

    .line 5048
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2c

    .line 5015
    :cond_3e
    :try_start_3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5017
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5018
    if-eqz v1, :cond_51

    .line 5020
    const-string v5, "game_id"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5022
    :cond_51
    const-string v5, "is_game"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5023
    const-string v5, "installed_list"

    const-string v6, "pkg_name= ?"

    .line 5024
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 5025
    aput-object v0, v7, v8

    .line 5023
    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5027
    const-string v6, "com.mas.wawagame.BDDKlord"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 5029
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_93

    .line 5030
    const-string v0, "wangliangtest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[AppDaoImpl#updateInstalledGameIds]update com.mas.wawagame.BDDKlord:affect lines:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gameId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    :cond_93
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_96} :catch_31
    .catchall {:try_start_3e .. :try_end_96} :catchall_97

    goto :goto_20

    .line 5041
    :catchall_97
    move-exception v0

    .line 5042
    :try_start_98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5043
    throw v0
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_9c} :catch_39
.end method

.method public a(ZJ)V
    .registers 12

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3055
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3056
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3057
    const-string v2, "is_deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3058
    if-eqz p1, :cond_2d

    .line 3060
    const-string v1, "download_list"

    .line 3064
    const-string v2, "download_id=?"

    .line 3065
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3066
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3060
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3084
    :goto_2c
    return-void

    .line 3071
    :cond_2d
    const-string v2, "download_list"

    const-string v3, "download_id=?"

    .line 3072
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3073
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3071
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_3e} :catch_3f

    goto :goto_2c

    .line 3080
    :catch_3f
    move-exception v0

    .line 3082
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2c
.end method

.method public a(ZLjava/lang/String;)V
    .registers 9

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3000
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3001
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3004
    const-string v2, "install_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3005
    if-eqz p1, :cond_29

    .line 3007
    const-string v1, "download_list"

    const-string v2, "pkg_name=? "

    .line 3008
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3009
    aput-object p2, v3, v4

    .line 3007
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3025
    :goto_28
    return-void

    .line 3014
    :cond_29
    const-string v2, "download_list"

    const-string v3, "pkg_name=? "

    .line 3015
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3016
    aput-object p2, v4, v5

    .line 3014
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_28

    .line 3021
    :catch_37
    move-exception v0

    .line 3023
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_28
.end method

.method public varargs a(Z[J)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 3168
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v1

    .line 3172
    :try_start_7
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_36

    move-result-object v1

    .line 3175
    :try_start_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2d

    .line 3177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3183
    :goto_14
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3184
    const-string v3, "is_deleted"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3185
    array-length v3, p2

    :goto_24
    if-lt v0, v3, :cond_3b

    .line 3202
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_31

    .line 3206
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2c} :catch_36

    .line 3214
    :goto_2c
    return-void

    .line 3181
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_14

    .line 3205
    :catchall_31
    move-exception v0

    .line 3206
    :try_start_32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3207
    throw v0
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_36} :catch_36

    .line 3210
    :catch_36
    move-exception v0

    .line 3212
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2c

    .line 3185
    :cond_3b
    :try_start_3b
    aget-wide v4, p2, v0

    .line 3187
    if-eqz p1, :cond_53

    .line 3189
    const-string v6, "download_list"

    const-string v7, "download_id=?"

    .line 3190
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 3191
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    .line 3189
    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3185
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 3196
    :cond_53
    const-string v6, "download_list"

    const-string v7, "download_id=?"

    .line 3197
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 3198
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    .line 3196
    invoke-virtual {v1, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_3b .. :try_end_64} :catchall_31

    goto :goto_50
.end method

.method public varargs a(Z[Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 3117
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v1

    .line 3121
    :try_start_7
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_36

    move-result-object v1

    .line 3124
    :try_start_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2d

    .line 3126
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3132
    :goto_14
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3133
    const-string v3, "is_deleted"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3134
    array-length v3, p2

    :goto_24
    if-lt v0, v3, :cond_3b

    .line 3152
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_31

    .line 3156
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2c} :catch_36

    .line 3163
    :goto_2c
    return-void

    .line 3130
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_14

    .line 3155
    :catchall_31
    move-exception v0

    .line 3156
    :try_start_32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3157
    throw v0
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_36} :catch_36

    .line 3159
    :catch_36
    move-exception v0

    .line 3161
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2c

    .line 3134
    :cond_3b
    :try_start_3b
    aget-object v4, p2, v0

    .line 3136
    if-eqz p1, :cond_4f

    .line 3138
    const-string v5, "download_list"

    const-string v6, "game_id=?"

    .line 3139
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 3140
    aput-object v4, v7, v8

    .line 3138
    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3134
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 3145
    :cond_4f
    const-string v5, "download_list"

    const-string v6, "game_id=?"

    .line 3146
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 3147
    aput-object v4, v7, v8

    .line 3145
    invoke-virtual {v1, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_31

    goto :goto_4c
.end method

.method public varargs a([Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2682
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2686
    :try_start_7
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_2d

    move-result-object v3

    .line 2690
    :try_start_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_24

    .line 2692
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2698
    :goto_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2699
    array-length v5, p1

    move v2, v1

    :goto_1b
    if-lt v2, v5, :cond_32

    .line 2744
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_28

    .line 2748
    :try_start_20
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_23} :catch_2d

    .line 2762
    :goto_23
    return-void

    .line 2696
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_14

    .line 2747
    :catchall_28
    move-exception v0

    .line 2748
    :try_start_29
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2749
    throw v0
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 2752
    :catch_2d
    move-exception v0

    .line 2754
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_23

    .line 2699
    :cond_32
    :try_start_32
    aget-object v6, p1, v2

    .line 2701
    const-string v0, "game_id"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const-string v0, "pkg_name"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    const-string v0, "name"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v0, "name_pinyin"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    const-string v0, "version"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    const-string v0, "version_int"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2715
    const-string v0, "update_date"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2718
    const-string v0, "size"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2719
    const-string v0, "sign"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSign()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const-string v0, "file_md5"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    const-string v0, "icon_url"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    const-string v0, "extra"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    const-string v7, "need_login"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v0

    if-eqz v0, :cond_ed

    const/4 v0, 0x1

    :goto_b5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2730
    const-string v0, "download_date"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2733
    const-string v0, "download_id"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2736
    const-string v0, "download_url"

    invoke-virtual {v6}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    const-string v0, "download_list"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2742
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_e8
    .catchall {:try_start_32 .. :try_end_e8} :catchall_28

    .line 2699
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1b

    :cond_ed
    move v0, v1

    .line 2727
    goto :goto_b5
.end method

.method public b()I
    .registers 2

    .prologue
    .line 4927
    const-string v0, "updatable_list"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/d/b;->k(Ljava/lang/String;)I

    move-result v0

    .line 4928
    return v0
.end method

.method public b(Lcom/duoku/platform/download/mode/MergeMode;)J
    .registers 4

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/d/b$c;->a(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3726
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3728
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3732
    const/16 v1, 0x14

    :try_start_e
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3733
    const-string v3, "pkg_name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "game_id"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "name_pinyin"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "update_date"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    .line 3734
    const-string v3, "version"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "version_int"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "sign"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "size"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "download_url"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    .line 3735
    const-string v3, "icon_url"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "extra"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "download_date"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, "download_id"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "is_deleted"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    .line 3736
    const-string v3, "install_status"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string v3, "error_reason"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string v3, "need_login"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "is_diff_update"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    const-string v3, "file_md5"

    aput-object v3, v2, v1

    .line 3741
    if-eqz p2, :cond_ad

    .line 3744
    const-string v3, "game_id=? "

    .line 3746
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3747
    aput-object p1, v4, v1

    .line 3760
    :goto_8a
    const-string v1, "download_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "download_date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_93} :catch_b6
    .catchall {:try_start_e .. :try_end_93} :catchall_db

    move-result-object v1

    .line 3761
    :try_start_94
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v9, :cond_c8

    .line 3765
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_94 .. :try_end_9d} :catch_eb
    .catchall {:try_start_94 .. :try_end_9d} :catchall_e8

    move-result v0

    if-nez v0, :cond_c8

    .line 3779
    if-eqz v1, :cond_ab

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 3781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ab
    move-object v0, v8

    .line 3784
    :cond_ac
    :goto_ac
    return-object v0

    .line 3753
    :cond_ad
    :try_start_ad
    const-string v3, "game_id=? AND is_deleted = 0 "

    .line 3756
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3757
    aput-object p1, v4, v1
    :try_end_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ad .. :try_end_b5} :catch_b6
    .catchall {:try_start_ad .. :try_end_b5} :catchall_db

    goto :goto_8a

    .line 3772
    :catch_b6
    move-exception v0

    move-object v1, v8

    .line 3775
    :goto_b8
    :try_start_b8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_e8

    .line 3779
    if-eqz v1, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 3781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c6
    move-object v0, v8

    .line 3784
    goto :goto_ac

    .line 3769
    :cond_c8
    :try_start_c8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3770
    invoke-direct {p0, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_ce} :catch_eb
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_e8

    move-result-object v0

    .line 3779
    if-eqz v1, :cond_ac

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 3781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_ac

    .line 3778
    :catchall_db
    move-exception v0

    .line 3779
    :goto_dc
    if-eqz v8, :cond_e7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e7

    .line 3781
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3783
    :cond_e7
    throw v0

    .line 3778
    :catchall_e8
    move-exception v0

    move-object v8, v1

    goto :goto_dc

    .line 3772
    :catch_eb
    move-exception v0

    goto :goto_b8
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 3866
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_66

    move-result-object v0

    .line 3870
    :try_start_8
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_b} :catch_6b
    .catchall {:try_start_8 .. :try_end_b} :catchall_58

    move-result-object v2

    .line 3871
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_43

    .line 3873
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3879
    :goto_15
    invoke-virtual {p0, p1}, Lcom/duoku/platform/d/b;->h(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    .line 3880
    const-string v3, "installed_list"

    const-string v4, "pkg_name= ?"

    .line 3881
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3882
    aput-object p1, v5, v6

    .line 3880
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3884
    const-string v3, "my_installed_list"

    const-string v4, "pkg_name=?"

    .line 3885
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 3886
    aput-object p1, v5, v6

    .line 3884
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3888
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_36} :catch_47
    .catchall {:try_start_c .. :try_end_36} :catchall_69

    .line 3897
    if-eqz v2, :cond_41

    :try_start_38
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3899
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_66

    .line 3902
    :cond_41
    :goto_41
    monitor-exit p0

    return-object v0

    .line 3877
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_69

    goto :goto_15

    .line 3891
    :catch_47
    move-exception v0

    .line 3893
    :goto_48
    :try_start_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_69

    .line 3897
    if-eqz v2, :cond_56

    :try_start_4d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3899
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_56
    move-object v0, v1

    .line 3902
    goto :goto_41

    .line 3896
    :catchall_58
    move-exception v0

    move-object v2, v1

    .line 3897
    :goto_5a
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 3899
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3901
    :cond_65
    throw v0
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_66

    .line 3866
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3896
    :catchall_69
    move-exception v0

    goto :goto_5a

    .line 3891
    :catch_6b
    move-exception v0

    move-object v2, v1

    goto :goto_48
.end method

.method public b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2318
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/d/b;->a(Lcom/duoku/platform/download/mode/InstalledAppInfo;Z)V

    .line 2319
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/duoku/platform/d/b;->a(Lcom/duoku/platform/download/mode/InstalledAppInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 2320
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5069
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 5074
    :try_start_9
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5076
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5078
    invoke-virtual {p0}, Lcom/duoku/platform/d/b;->f()Ljava/util/List;

    move-result-object v0

    .line 5079
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5080
    if-eqz v0, :cond_27

    .line 5082
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 5087
    :cond_27
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_2c} :catch_71
    .catchall {:try_start_9 .. :try_end_2c} :catchall_87

    .line 5090
    :try_start_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_7b

    .line 5092
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 5098
    :goto_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 5100
    const-string v0, "updatable_list"

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5102
    :cond_42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_46
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 5151
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_4f} :catch_7f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_181

    .line 5159
    :try_start_4f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5161
    :goto_52
    invoke-virtual {p0, v5}, Lcom/duoku/platform/d/b;->a(Ljava/util/Map;)V
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_55} :catch_71
    .catchall {:try_start_4f .. :try_end_55} :catchall_87

    .line 5169
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 5174
    :cond_5a
    :goto_5a
    return-void

    .line 5082
    :cond_5b
    :try_start_5b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 5084
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isIgnoreUpdate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_70} :catch_71
    .catchall {:try_start_5b .. :try_end_70} :catchall_87

    goto :goto_21

    .line 5163
    :catch_71
    move-exception v0

    .line 5165
    :try_start_72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_87

    .line 5169
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    goto :goto_5a

    .line 5096
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7b .. :try_end_7e} :catch_7f
    .catchall {:try_start_7b .. :try_end_7e} :catchall_181

    goto :goto_35

    .line 5153
    :catch_7f
    move-exception v0

    .line 5155
    :try_start_80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_181

    .line 5159
    :try_start_83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_86
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_86} :catch_71
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_52

    .line 5168
    :catchall_87
    move-exception v0

    .line 5169
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 5173
    :cond_8d
    throw v0

    .line 5102
    :cond_8e
    :try_start_8e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 5104
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5108
    const-string v4, "pkg_name"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    const-string v4, "game_id"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5114
    const-string v4, "new_version"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5116
    const-string v4, "new_version_int"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersionInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5119
    const-string v4, "download_url"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5122
    const-string v4, "update_date"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPublishDate()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5125
    const-string v4, "server_sign"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getServerSign()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5128
    const-string v4, "new_size"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5131
    const-string v4, "icon_url"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5134
    const-string v4, "extra"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5135
    const-string v9, "need_login"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isNeedLogin()Z

    move-result v4

    if-eqz v4, :cond_186

    move v4, v3

    :goto_10e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5136
    const-string v9, "is_diff_update"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isDiffUpdate()Z

    move-result v4

    if-eqz v4, :cond_188

    move v4, v2

    :goto_11e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5137
    const-string v4, "patch_url"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPatchUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5141
    const-string v4, "ignore_update"

    if-nez v0, :cond_18a

    move v0, v2

    :goto_13d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5145
    const-string v0, "updatable_list"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5146
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_17c

    .line 5147
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_17c

    .line 5148
    const-string v0, "AppDaoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "updateUpdatableList "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "pkg_name"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ignore_update"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    :cond_17c
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V
    :try_end_17f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e .. :try_end_17f} :catch_7f
    .catchall {:try_start_8e .. :try_end_17f} :catchall_181

    goto/16 :goto_46

    .line 5158
    :catchall_181
    move-exception v0

    .line 5159
    :try_start_182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5160
    throw v0
    :try_end_186
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_182 .. :try_end_186} :catch_71
    .catchall {:try_start_182 .. :try_end_186} :catchall_87

    :cond_186
    move v4, v2

    .line 5135
    goto :goto_10e

    :cond_188
    move v4, v2

    .line 5136
    goto :goto_11e

    .line 5141
    :cond_18a
    :try_start_18a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_18d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18a .. :try_end_18d} :catch_7f
    .catchall {:try_start_18a .. :try_end_18d} :catchall_181

    move-result v0

    if-eqz v0, :cond_192

    move v0, v3

    goto :goto_13d

    :cond_192
    move v0, v2

    goto :goto_13d
.end method

.method public declared-synchronized c()I
    .registers 2

    .prologue
    .line 4934
    monitor-enter p0

    :try_start_1
    const-string v0, "installed_list"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/d/b;->k(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    .line 4935
    monitor-exit p0

    return v0

    .line 4934
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/duoku/platform/download/mode/MergeMode;)I
    .registers 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/d/b$c;->c(Landroid/content/Context;Lcom/duoku/platform/download/mode/MergeMode;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/duoku/platform/download/mode/UpdatableAppInfo;
    .registers 4

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3372
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3373
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 3380
    :goto_11
    return-object v0

    .line 3376
    :catch_12
    move-exception v0

    .line 3378
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 3380
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3471
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 3472
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3475
    :try_start_b
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3476
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3477
    const-string v4, "notified"

    if-eqz p2, :cond_2f

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3478
    if-eqz p1, :cond_31

    .line 3480
    const-string v0, "download_list"

    const-string v1, "download_url= ?"

    .line 3481
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3482
    aput-object p1, v4, v5

    .line 3480
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3498
    :goto_2e
    return-void

    :cond_2f
    move v0, v1

    .line 3477
    goto :goto_18

    .line 3487
    :cond_31
    const-string v0, "download_list"

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_38} :catch_39

    goto :goto_2e

    .line 3491
    :catch_39
    move-exception v0

    .line 3493
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2e
.end method

.method public c(Ljava/util/List;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MyDownloadedGame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2772
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_9} :catch_32

    move-result-object v2

    .line 2778
    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_29

    .line 2780
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2786
    :goto_13
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2787
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 2814
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2d

    .line 2818
    :try_start_25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_28} :catch_32

    .line 2832
    :goto_28
    return-void

    .line 2784
    :cond_29
    :try_start_29
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_13

    .line 2817
    :catchall_2d
    move-exception v0

    .line 2818
    :try_start_2e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2819
    throw v0
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_32} :catch_32

    .line 2822
    :catch_32
    move-exception v0

    .line 2824
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_28

    .line 2787
    :cond_37
    :try_start_37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/MyDownloadedGame;

    .line 2789
    const-string v1, "game_id"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v1, "pkg_name"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v1, "name"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v1, "icon_url"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    const-string v1, "game_key"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    const-string v1, "extra"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string v5, "need_login"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->isNeedLogin()Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v1, 0x1

    :goto_7c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    const-string v1, "my_downloaded_list"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2807
    const-string v1, "com.mas.wawagame.BDDKlord"

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 2809
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_bc

    .line 2810
    const-string v1, "wangliangtest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[AppDaoImpl#addMyDownloadedGames]save com.mas.wawagame.BDDKlord:rowid:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gameId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/MyDownloadedGame;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_bc
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_bf
    .catchall {:try_start_37 .. :try_end_bf} :catchall_2d

    goto/16 :goto_1c

    .line 2804
    :cond_c1
    const/4 v1, 0x0

    goto :goto_7c
.end method

.method public d(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 4

    .prologue
    .line 3568
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/duoku/platform/d/b$b;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 4

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3390
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3391
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 3398
    :goto_11
    return-object v0

    .line 3394
    :catch_12
    move-exception v0

    .line 3396
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 3398
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4855
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_23

    move-result-object v1

    .line 4859
    :try_start_8
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_b} :catch_18
    .catchall {:try_start_8 .. :try_end_b} :catchall_26

    move-result-object v2

    .line 4860
    const/4 v1, 0x1

    :try_start_d
    invoke-direct {p0, v2, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_10} :catch_31
    .catchall {:try_start_d .. :try_end_10} :catchall_2f

    move-result-object v0

    .line 4873
    if-eqz v2, :cond_16

    :try_start_13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_23

    .line 4878
    :cond_16
    :goto_16
    monitor-exit p0

    return-object v0

    .line 4867
    :catch_18
    move-exception v1

    move-object v2, v0

    .line 4869
    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    .line 4873
    if-eqz v2, :cond_16

    :try_start_1f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_16

    .line 4855
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4872
    :catchall_26
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 4873
    :goto_29
    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 4877
    :cond_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_23

    .line 4872
    :catchall_2f
    move-exception v0

    goto :goto_29

    .line 4867
    :catch_31
    move-exception v1

    goto :goto_1a
.end method

.method public d(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2082
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/d/b;->a(Ljava/util/List;Z)V

    .line 2083
    return-void
.end method

.method public declared-synchronized e()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4888
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_18

    move-result-object v1

    .line 4892
    :try_start_8
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4893
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_10} :catch_13
    .catchall {:try_start_8 .. :try_end_10} :catchall_18

    move-result-object v0

    .line 4899
    :goto_11
    monitor-exit p0

    return-object v0

    .line 4895
    :catch_13
    move-exception v1

    .line 4897
    :try_start_14
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_11

    .line 4888
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3089
    iget-object v2, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v2

    .line 3093
    :try_start_8
    invoke-virtual {v2}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3094
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3095
    const-string v4, "is_deleted"

    if-eqz p2, :cond_37

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3096
    if-eqz p2, :cond_29

    .line 3098
    const-string v0, "install_status"

    sget v1, Lcom/duoku/platform/d/b$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3100
    :cond_29
    const-string v0, "download_list"

    const-string v1, "pkg_name=? "

    .line 3101
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3102
    aput-object p1, v4, v5

    .line 3100
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_36} :catch_39

    .line 3112
    :goto_36
    return-void

    :cond_37
    move v0, v1

    .line 3095
    goto :goto_15

    .line 3108
    :catch_39
    move-exception v0

    .line 3110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_36
.end method

.method public e(Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3422
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3424
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3428
    const/4 v1, 0x1

    :try_start_e
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3429
    const-string v3, "notified"

    aput-object v3, v2, v1

    .line 3434
    const-string v3, "download_url=? "

    .line 3436
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3437
    aput-object p1, v4, v1

    .line 3439
    const-string v1, "download_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_25} :catch_58
    .catchall {:try_start_e .. :try_end_25} :catchall_69

    move-result-object v1

    .line 3440
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v8, :cond_3e

    .line 3443
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_2f} :catch_79
    .catchall {:try_start_26 .. :try_end_2f} :catchall_76

    move-result v0

    if-nez v0, :cond_3e

    .line 3458
    if-eqz v1, :cond_3d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3460
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3463
    :cond_3d
    :goto_3d
    return v9

    .line 3447
    :cond_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3448
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_45} :catch_79
    .catchall {:try_start_3e .. :try_end_45} :catchall_76

    move-result v0

    if-ne v0, v8, :cond_56

    move v0, v8

    .line 3458
    :goto_49
    if-eqz v1, :cond_54

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_54

    .line 3460
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    move v9, v0

    .line 3448
    goto :goto_3d

    :cond_56
    move v0, v9

    goto :goto_49

    .line 3451
    :catch_58
    move-exception v0

    move-object v1, v10

    .line 3454
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_76

    .line 3458
    if-eqz v1, :cond_3d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3460
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 3457
    :catchall_69
    move-exception v0

    .line 3458
    :goto_6a
    if-eqz v10, :cond_75

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_75

    .line 3460
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3462
    :cond_75
    throw v0

    .line 3457
    :catchall_76
    move-exception v0

    move-object v10, v1

    goto :goto_6a

    .line 3451
    :catch_79
    move-exception v0

    goto :goto_5a
.end method

.method public f()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4977
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 4981
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4982
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;Z)Ljava/util/List;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_e} :catch_10

    move-result-object v0

    .line 4988
    :goto_f
    return-object v0

    .line 4984
    :catch_10
    move-exception v0

    .line 4986
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 4988
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3034
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3035
    const-string v1, "download_list"

    const-string v2, "download_url=? "

    .line 3036
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3037
    aput-object p1, v3, v4

    .line 3035
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_17} :catch_18

    .line 3045
    :goto_17
    return-void

    .line 3041
    :catch_18
    move-exception v0

    .line 3043
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_17
.end method

.method public declared-synchronized g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3331
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    move-result-object v0

    .line 3335
    :try_start_7
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3336
    invoke-direct {p0, v0}, Lcom/duoku/platform/d/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_e} :catch_11
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    move-result-object v0

    .line 3342
    :goto_f
    monitor-exit p0

    return-object v0

    .line 3338
    :catch_11
    move-exception v0

    .line 3340
    :try_start_12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    .line 3342
    const/4 v0, 0x0

    goto :goto_f

    .line 3331
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2175
    if-nez p1, :cond_3

    .line 2196
    :goto_2
    return-void

    .line 2179
    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 2183
    :try_start_9
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2184
    const-string v1, "installed_list"

    const-string v2, "pkg_name=?"

    .line 2185
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2186
    aput-object p1, v3, v4

    .line 2184
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_2

    .line 2189
    :catch_1b
    move-exception v0

    .line 2191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2
.end method

.method public h(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 3

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3408
    :try_start_6
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3409
    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/d/b;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v0

    .line 3416
    :goto_e
    return-object v0

    .line 3412
    :catch_f
    move-exception v0

    .line 3414
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 3416
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public h()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MyDownloadedGame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v1

    .line 2839
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2841
    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2843
    const-string v4, "pkg_name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "game_id"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "game_key"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "icon_url"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    .line 2844
    const-string v4, "extra"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "need_login"

    aput-object v4, v3, v2

    .line 2848
    const/4 v4, 0x0

    .line 2849
    const/4 v5, 0x0

    .line 2850
    const/4 v9, 0x0

    .line 2853
    :try_start_35
    const-string v2, "my_downloaded_list"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_3d} :catch_d4
    .catchall {:try_start_35 .. :try_end_3d} :catchall_c1

    move-result-object v10

    .line 2854
    :try_start_3e
    const-string v1, "pkg_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 2855
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 2856
    const-string v1, "icon_url"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2857
    const-string v1, "extra"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2858
    const-string v1, "game_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2859
    const-string v1, "game_key"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 2861
    const-string v1, "need_login"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2865
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2866
    :goto_6d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_70} :catch_ad
    .catchall {:try_start_3e .. :try_end_70} :catchall_cf

    move-result v1

    if-nez v1, :cond_80

    .line 2890
    if-eqz v10, :cond_7e

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 2892
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7e
    move-object v1, v9

    .line 2895
    :goto_7f
    return-object v1

    .line 2868
    :cond_80
    :try_start_80
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2869
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2870
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2871
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2872
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2873
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2874
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_bf

    const/4 v8, 0x1

    .line 2876
    :goto_a4
    new-instance v1, Lcom/duoku/platform/download/mode/MyDownloadedGame;

    invoke-direct/range {v1 .. v8}, Lcom/duoku/platform/download/mode/MyDownloadedGame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2878
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_ac} :catch_ad
    .catchall {:try_start_80 .. :try_end_ac} :catchall_cf

    goto :goto_6d

    .line 2883
    :catch_ad
    move-exception v1

    move-object v2, v10

    .line 2886
    :goto_af
    :try_start_af
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_d1

    .line 2890
    if-eqz v2, :cond_bd

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 2892
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2895
    :cond_bd
    const/4 v1, 0x0

    goto :goto_7f

    .line 2874
    :cond_bf
    const/4 v8, 0x0

    goto :goto_a4

    .line 2889
    :catchall_c1
    move-exception v1

    move-object v10, v9

    .line 2890
    :goto_c3
    if-eqz v10, :cond_ce

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 2892
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2894
    :cond_ce
    throw v1

    .line 2889
    :catchall_cf
    move-exception v1

    goto :goto_c3

    :catchall_d1
    move-exception v1

    move-object v10, v2

    goto :goto_c3

    .line 2883
    :catch_d4
    move-exception v1

    move-object v2, v9

    goto :goto_af
.end method

.method public i(Ljava/lang/String;)Lcom/duoku/platform/download/mode/MergeMode;
    .registers 4

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/d/b$c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 1500
    :cond_e
    const/4 v0, 0x0

    .line 1502
    :goto_f
    return-object v0

    :cond_10
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/MergeMode;

    goto :goto_f
.end method

.method public i()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3908
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 3912
    :try_start_7
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3913
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2a

    .line 3915
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3921
    :goto_14
    const-string v0, "installed_list"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3922
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_1e} :catch_2e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_3e

    .line 3930
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3932
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3935
    :cond_29
    :goto_29
    return-void

    .line 3919
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3e

    goto :goto_14

    .line 3924
    :catch_2e
    move-exception v0

    .line 3926
    :try_start_2f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3e

    .line 3930
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3932
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_29

    .line 3929
    :catchall_3e
    move-exception v0

    .line 3930
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3932
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3934
    :cond_4a
    throw v0
.end method

.method public j(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 2202
    if-nez p1, :cond_4

    .line 2233
    :goto_3
    return v0

    .line 2206
    :cond_4
    iget-object v1, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v1

    .line 2207
    invoke-virtual {v1}, Lcom/duoku/platform/d/b$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2208
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2211
    :try_start_11
    const-string v1, "updatable_list"

    const-string v3, "pkg_name= ?"

    .line 2212
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 2213
    aput-object p1, v4, v5

    .line 2211
    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2215
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_22} :catch_29
    .catchall {:try_start_11 .. :try_end_22} :catchall_31

    .line 2216
    if-lez v1, :cond_36

    .line 2227
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 2218
    goto :goto_3

    .line 2221
    :catch_29
    move-exception v1

    .line 2223
    :try_start_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 2227
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 2226
    :catchall_31
    move-exception v0

    .line 2227
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2232
    throw v0

    .line 2227
    :cond_36
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/MergeMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized k(Ljava/lang/String;)I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4940
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_41

    move-result-object v0

    .line 4945
    :try_start_9
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4947
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4948
    const-string v3, "count(*)"

    aput-object v3, v2, v1

    .line 4949
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 4946
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1e} :catch_2e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3a

    move-result-object v1

    .line 4950
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4951
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_26} :catch_47
    .catchall {:try_start_1f .. :try_end_26} :catchall_44

    move-result v0

    .line 4959
    if-eqz v1, :cond_2c

    .line 4961
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_41

    .line 4964
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v0

    .line 4953
    :catch_2e
    move-exception v0

    move-object v1, v9

    .line 4955
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_44

    .line 4959
    if-eqz v1, :cond_38

    .line 4961
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    move v0, v8

    .line 4964
    goto :goto_2c

    .line 4958
    :catchall_3a
    move-exception v0

    .line 4959
    :goto_3b
    if-eqz v9, :cond_40

    .line 4961
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4963
    :cond_40
    throw v0
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_41

    .line 4940
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4958
    :catchall_44
    move-exception v0

    move-object v9, v1

    goto :goto_3b

    .line 4953
    :catch_47
    move-exception v0

    goto :goto_30
.end method
