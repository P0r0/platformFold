.class public Lcom/vivo/upgrade/utils/MdFiveCheckTask;
.super Landroid/os/AsyncTask;
.source "MdFiveCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Upgrade.MdFiveCheckTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mFilePath:Ljava/lang/String;

.field private mLevel:I

.field private mMode:I

.field private mOlderFile:Ljava/io/File;

.field private mReturnCode:I

.field private mSourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "BspatchApk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    .line 19
    iput-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mOlderFile:Ljava/io/File;

    .line 20
    iput v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mLevel:I

    .line 21
    iput v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mReturnCode:I

    .line 22
    iput-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mMode:I

    .line 30
    iput-object p1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mLevel:I

    .line 32
    iput p3, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mMode:I

    .line 33
    return-void
.end method

.method static synthetic access$2(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 41
    aget-object v9, p1, v7

    iput-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    .line 42
    const/4 v9, 0x1

    aget-object v4, p1, v9

    .line 43
    .local v4, "md5":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v3, p1, v9

    .line 44
    .local v3, "lowerMd5":Ljava/lang/String;
    const-string v9, "Upgrade.MdFiveCheckTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mFilePath "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " md5 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lowerMd5 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v6, -0x1

    .line 46
    .local v6, "retMd":I
    const/4 v2, -0x1

    .line 47
    .local v2, "lowRetMd":I
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/upgrade/CheckUpdateManager;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    .line 49
    const-string v9, "Upgrade.MdFiveCheckTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sourcePath = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFilePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    if-eqz v9, :cond_104

    iget v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mMode:I

    if-nez v9, :cond_104

    .line 52
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mOlderFile:Ljava/io/File;

    .line 53
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mOlderFile:Ljava/io/File;

    invoke-static {v3, v9, v7}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v9

    if-eqz v9, :cond_f4

    move v2, v7

    .line 54
    :goto_82
    if-eq v2, v8, :cond_c9

    .line 55
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    .line 56
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    invoke-static {v4, v9, v7}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v9

    if-eqz v9, :cond_f6

    move v6, v7

    .line 57
    :goto_96
    const-string v9, "Upgrade.MdFiveCheckTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "retMd   111   = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eq v6, v8, :cond_c9

    .line 60
    :try_start_ac
    new-instance v0, Lcom/bbk/appstore/download/BspatchApk;

    invoke-direct {v0}, Lcom/bbk/appstore/download/BspatchApk;-><init>()V

    .line 61
    .local v0, "bsdiff":Lcom/bbk/appstore/download/BspatchApk;
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    const-string v10, ".zip"

    const-string v11, ".apk"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "newPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mSourcePath:Ljava/lang/String;

    iget-object v10, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v9, v5, v10}, Lcom/bbk/appstore/download/BspatchApk;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object v5, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    .line 64
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c9} :catch_f8

    .line 76
    .end local v0    # "bsdiff":Lcom/bbk/appstore/download/BspatchApk;
    .end local v5    # "newPath":Ljava/lang/String;
    :cond_c9
    :goto_c9
    if-eq v2, v8, :cond_cd

    if-ne v6, v8, :cond_11a

    .line 77
    :cond_cd
    iput v8, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mReturnCode:I

    .line 81
    :goto_cf
    const-string v7, "Upgrade.MdFiveCheckTask"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downapk: MdFiveCheckTask,retMd="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lowRetMd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v7, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mReturnCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    :cond_f4
    move v2, v8

    .line 53
    goto :goto_82

    :cond_f6
    move v6, v8

    .line 56
    goto :goto_96

    .line 65
    :catch_f8
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const-string v9, "Upgrade.MdFiveCheckTask"

    const-string v10, "BspatchApk is failed\uff01"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_104
    const/4 v2, 0x0

    .line 73
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    .line 74
    iget-object v9, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFile:Ljava/io/File;

    invoke-static {v4, v9, v7}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v9

    if-eqz v9, :cond_118

    move v6, v7

    :goto_117
    goto :goto_c9

    :cond_118
    move v6, v8

    goto :goto_117

    .line 79
    :cond_11a
    iput v7, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mReturnCode:I

    goto :goto_cf
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    .line 90
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v0

    const-string v1, "com.vivo.upgrade.ikey.KEY_CHECK_MD5_FAIL"

    invoke-virtual {v0, v1, v4}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    iget v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mLevel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->isVivoPhone()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;

    invoke-direct {v1, p0}, Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;-><init>(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    :cond_2c
    :goto_2c
    return-void

    .line 101
    :cond_2d
    iget-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/PackageUtils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 107
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/CheckUpdateManager;->exitApp(Landroid/content/Context;)V

    goto :goto_2c

    .line 112
    :cond_43
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v0

    const-string v1, "com.vivo.upgrade.ikey.KEY_CHECK_MD5_FAIL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_upgrade_error_appnotavailable"

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    :try_start_60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vivo/upgrade/utils/Util;->delete(Ljava/io/File;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_2c

    .line 116
    :catch_6b
    move-exception v0

    goto :goto_2c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    return-void
.end method
