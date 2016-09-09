.class Lcom/duoku/platform/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 944
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->UNINSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->getIndex()I

    move-result v0

    sput v0, Lcom/duoku/platform/d/b$b;->a:I

    .line 945
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->getIndex()I

    move-result v0

    sput v0, Lcom/duoku/platform/d/b$b;->b:I

    .line 946
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->getIndex()I

    move-result v0

    sput v0, Lcom/duoku/platform/d/b$b;->c:I

    .line 947
    sget-object v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->getIndex()I

    move-result v0

    sput v0, Lcom/duoku/platform/d/b$b;->d:I

    .line 953
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1023
    invoke-static {p0}, Lcom/duoku/platform/d/b$a;->a(Landroid/content/Context;)Lcom/duoku/platform/d/b$a;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lcom/duoku/platform/d/b$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1029
    const/16 v1, 0x14

    :try_start_c
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1030
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

    .line 1031
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

    .line 1032
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

    .line 1033
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

    .line 1034
    const-string v3, "file_md5"

    aput-object v3, v2, v1

    .line 1039
    if-eqz p2, :cond_ab

    .line 1042
    const-string v3, "file_md5=? "

    .line 1044
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1045
    aput-object p1, v4, v1

    .line 1058
    :goto_88
    const-string v1, "download_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "download_date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_91} :catch_b4
    .catchall {:try_start_c .. :try_end_91} :catchall_d9

    move-result-object v1

    .line 1059
    :try_start_92
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v9, :cond_c6

    .line 1063
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_9b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_92 .. :try_end_9b} :catch_e9
    .catchall {:try_start_92 .. :try_end_9b} :catchall_e6

    move-result v0

    if-nez v0, :cond_c6

    .line 1077
    if-eqz v1, :cond_a9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1079
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a9
    move-object v0, v8

    .line 1082
    :cond_aa
    :goto_aa
    return-object v0

    .line 1051
    :cond_ab
    :try_start_ab
    const-string v3, "file_md5=?  AND is_deleted = 0 "

    .line 1054
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1055
    aput-object p1, v4, v1
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_b3} :catch_b4
    .catchall {:try_start_ab .. :try_end_b3} :catchall_d9

    goto :goto_88

    .line 1070
    :catch_b4
    move-exception v0

    move-object v1, v8

    .line 1073
    :goto_b6
    :try_start_b6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_e6

    .line 1077
    if-eqz v1, :cond_c4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 1079
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c4
    move-object v0, v8

    .line 1082
    goto :goto_aa

    .line 1067
    :cond_c6
    :try_start_c6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1068
    invoke-static {v1}, Lcom/duoku/platform/d/b$b;->a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c6 .. :try_end_cc} :catch_e9
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_e6

    move-result-object v0

    .line 1077
    if-eqz v1, :cond_aa

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 1079
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_aa

    .line 1076
    :catchall_d9
    move-exception v0

    .line 1077
    :goto_da
    if-eqz v8, :cond_e5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e5

    .line 1079
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1081
    :cond_e5
    throw v0

    .line 1076
    :catchall_e6
    move-exception v0

    move-object v8, v1

    goto :goto_da

    .line 1070
    :catch_e9
    move-exception v0

    goto :goto_b6
.end method

.method private static a(Landroid/database/Cursor;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 32

    .prologue
    .line 958
    const-string v2, "pkg_name"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 959
    const-string v3, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 960
    const-string v4, "name_pinyin"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 961
    const-string v4, "update_date"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 962
    const-string v4, "version"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 963
    const-string v4, "version_int"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 964
    const-string v4, "sign"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 965
    const-string v4, "size"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 966
    const-string v4, "icon_url"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 967
    const-string v4, "extra"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 969
    const-string v4, "download_date"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 970
    const-string v4, "download_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 971
    const-string v4, "download_url"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 972
    const-string v4, "game_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 973
    const-string v4, "is_deleted"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 974
    const-string v4, "install_status"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 975
    const-string v4, "error_reason"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 976
    const-string v4, "need_login"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 978
    const-string v4, "is_diff_update"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 979
    const-string v4, "file_md5"

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 981
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 982
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 983
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 984
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 985
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 986
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 987
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 988
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 989
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 990
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 993
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 995
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 997
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 998
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 999
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1000
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_161

    const/4 v11, 0x1

    .line 1002
    :goto_122
    const/16 v23, 0x0

    .line 1003
    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_137

    .line 1005
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_163

    const/4 v2, 0x1

    :goto_135
    move/from16 v23, v2

    .line 1007
    :cond_137
    const/16 v24, 0x0

    .line 1008
    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_146

    .line 1010
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1013
    :cond_146
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 1015
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_165

    const/4 v2, 0x1

    :goto_151
    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setMarkDeleted(Z)V

    .line 1016
    invoke-static/range {v25 .. v25}, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->parse(I)Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstalleStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V

    .line 1017
    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setInstallErrorReason(I)V

    .line 1018
    return-object v3

    .line 1000
    :cond_161
    const/4 v11, 0x0

    goto :goto_122

    .line 1005
    :cond_163
    const/4 v2, 0x0

    goto :goto_135

    .line 1015
    :cond_165
    const/4 v2, 0x0

    goto :goto_151
.end method
