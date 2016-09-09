.class public Lcom/duoku/platform/download/utils/AppManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/utils/AppManager$GameStatus;,
        Lcom/duoku/platform/download/utils/AppManager$OnAppStatusChangedListener;
    }
.end annotation


# static fields
.field private static final CHECK_STATUS:Ljava/lang/String; = "check_status"

.field private static final CHECK_STATUS_FILE:Ljava/lang/String; = "check_status_file"

.field public static final DOWNLOAD_FOLDER:Ljava/lang/String; = "/duoku/sdk/download"

.field static final ERROR_INSUFFICIENT_SPACE:I = 0x12d

.field private static INSTANCE:Lcom/duoku/platform/download/utils/AppManager; = null

.field static final MEDIA_UN_MOUNTED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "AppMananager"

.field public static fileMimeType:Ljava/lang/String;


# instance fields
.field private allUpdateGames:I

.field private context:Landroid/content/Context;

.field private defaultDownloadDest:Ljava/lang/String;

.field handler:Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/utils/AppManager$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/duoku/platform/util/Constants;->APK_MIME_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/AppManager;->fileMimeType:Ljava/lang/String;

    .line 377
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    .line 380
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/download/utils/AppManager$1;-><init>(Lcom/duoku/platform/download/utils/AppManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->handler:Landroid/os/Handler;

    .line 87
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/AppManager;->init()V

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/AppManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private varargs addDownloadRecords([Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 3

    .prologue
    .line 849
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 850
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->a([Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 851
    return-void
.end method

.method private buildSaveName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/Md5Tools;->toMd5([BZ)Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method private checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 886
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    .line 887
    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 889
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    .line 890
    if-nez p2, :cond_2c

    .line 892
    invoke-interface {v1, v8, v2, v3}, Lcom/duoku/platform/d/a;->a(ZJ)V

    .line 894
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V

    move-object p1, v0

    .line 929
    :goto_2b
    return-object p1

    .line 897
    :cond_2c
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->splitPackageFromAppData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_77

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 902
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_73

    .line 903
    const-string v0, "AppMananager"

    const-string v4, "app package name:%s file extra:%s, app download id:%s,file download id:%s,"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v1, v5, v8

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_73
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/utils/AppManager;->setDownloadData(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    goto :goto_2b

    .line 908
    :cond_77
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_92

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 910
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_90

    .line 914
    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->remove(J)V

    :cond_90
    :goto_90
    move-object p1, v0

    .line 929
    goto :goto_2b

    .line 916
    :cond_92
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    goto :goto_90

    .line 925
    :cond_a0
    if-eqz p2, :cond_90

    .line 927
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->remove(J)V

    goto :goto_90
.end method

.method private checkDownloadSpace(J)V
    .registers 4

    .prologue
    .line 404
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/duoku/platform/download/utils/AppManager$2;-><init>(Lcom/duoku/platform/download/utils/AppManager;J)V

    .line 430
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager$2;->start()V

    .line 432
    return-void
.end method

.method private checkDownloads(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1187
    return-void

    .line 1142
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1146
    :try_start_11
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v2

    .line 1147
    if-eqz v2, :cond_4

    .line 1154
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    .line 1155
    sget-object v3, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v0, v3, :cond_4

    .line 1157
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_2d

    goto :goto_4

    .line 1181
    :catch_2d
    move-exception v0

    .line 1183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private checkStatusDownloading(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1091
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1092
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1094
    invoke-static {p1}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatusForDownloads(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 1095
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1095
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1097
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/PackageMode;

    .line 1098
    iget v5, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eqz v5, :cond_47

    iget v5, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_47

    iget v5, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_47

    iget v5, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_47

    .line 1099
    iget v1, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    const/16 v5, 0x20

    if-ne v1, v5, :cond_11

    .line 1101
    :cond_47
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private filterData(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2012
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2013
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2051
    return-void

    .line 2015
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 2016
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isIgnoreUpdate()Z

    move-result v2

    .line 2017
    if-eqz p2, :cond_1d

    if-eqz v2, :cond_1d

    .line 2019
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2021
    :cond_1d
    if-nez p2, :cond_25

    if-nez v2, :cond_25

    .line 2023
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2029
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2030
    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2032
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    const-string v2, ""

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2034
    :cond_48
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2035
    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->setName(Ljava/lang/String;)V

    .line 2038
    :cond_59
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2040
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2041
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->setPinyinName(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_72} :catch_73

    goto :goto_4

    .line 2044
    :catch_73
    move-exception v0

    .line 2046
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private find(Ljava/util/List;Lcom/duoku/platform/download/mode/InstalledAppInfo;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2177
    if-nez p2, :cond_5

    move v0, v1

    .line 2188
    :goto_4
    return v0

    .line 2181
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 2188
    goto :goto_4

    .line 2181
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2183
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2185
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;
    .registers 4

    .prologue
    .line 111
    const-class v1, Lcom/duoku/platform/download/utils/AppManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;

    if-nez v0, :cond_e

    .line 113
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/AppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;

    .line 115
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1c

    .line 117
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    .line 119
    :cond_1c
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs declared-synchronized notifyAppIgnoreStatusChanged(Z[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2113
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 2114
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->refreshUpdatable(Landroid/content/Context;)V

    .line 2116
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 2117
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyIgnoredStatedChanged(Z[Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 2119
    monitor-exit p0

    return-void

    .line 2113
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyForFileMissed(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 18

    .prologue
    .line 1191
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 1194
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    .line 1197
    iget v10, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1196
    invoke-static/range {v1 .. v13}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1202
    return-void
.end method

.method private notifyPackageAdded(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 18

    .prologue
    .line 1589
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v7

    .line 1590
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    const/16 v10, 0x1000

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1589
    invoke-static/range {v1 .. v13}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1594
    return-void
.end method

.method private varargs notifyPakcageStatusForInstall(JLcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V
    .registers 12

    .prologue
    .line 516
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_46

    .line 520
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v6

    .line 521
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    iget-object v1, v6, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    iget v3, v6, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    iget-object v4, v6, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    iget-object v5, v6, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 523
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    .line 524
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 526
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALL_ERROR:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne p3, v1, :cond_4b

    .line 528
    const/16 v1, 0x800

    iput v1, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 529
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->getFinalInstallErrorReason(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 530
    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    iget v2, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v1, v2, :cond_47

    .line 532
    invoke-static {v6}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 566
    :cond_46
    :goto_46
    return-void

    .line 536
    :cond_47
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_46

    .line 539
    :cond_4b
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne p3, v1, :cond_61

    .line 541
    const/16 v1, 0x1000

    iput v1, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 542
    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    iget v2, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v1, v2, :cond_5d

    .line 544
    invoke-static {v6}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_46

    .line 548
    :cond_5d
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_46

    .line 551
    :cond_61
    sget-object v1, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;->INSTALLING:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    if-ne p3, v1, :cond_46

    .line 553
    const/16 v1, 0x400

    iput v1, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 554
    iget v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    iget v2, v6, Lcom/duoku/platform/download/PackageMode;->status:I

    if-eq v1, v2, :cond_73

    .line 556
    invoke-static {v6}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_46

    .line 560
    :cond_73
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_46
.end method

.method private passData(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method

.method private remove(J)V
    .registers 8

    .prologue
    .line 869
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 870
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/duoku/platform/d/a;->a(ZJ)V

    .line 871
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a

    .line 873
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 876
    :cond_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 882
    :goto_1f
    return-void

    .line 878
    :catch_20
    move-exception v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private setDownloadData(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    .registers 5

    .prologue
    .line 1462
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v0

    .line 1464
    if-eqz v0, :cond_35

    .line 1466
    iget-object v1, v0, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 1467
    iget-boolean v0, v0, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    .line 1468
    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setDiffUpdate(Z)V

    .line 1476
    :goto_11
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getCurrentBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setCurrtentSize(J)V

    .line 1477
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setTotalSize(J)V

    .line 1478
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setSaveDest(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V

    .line 1480
    invoke-virtual {p2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)V

    .line 1482
    return-void

    .line 1474
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setDiffUpdate(Z)V

    goto :goto_11
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    if-eqz p2, :cond_11

    .line 73
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    :cond_11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    :cond_14
    return-void
.end method


# virtual methods
.method addDownloadRecord(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J
    .registers 4

    .prologue
    .line 782
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 783
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->a(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 789
    :goto_8
    return-wide v0

    .line 785
    :catch_9
    move-exception v0

    .line 789
    const-wide/16 v0, -0x1

    goto :goto_8
.end method

.method public addInstalledAppRecord(Lcom/duoku/platform/download/mode/InstalledAppInfo;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 7

    .prologue
    .line 1606
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    .line 1608
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 1610
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPinyinName(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1615
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/duoku/platform/d/a;->d(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_50

    .line 1620
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1621
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 1624
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    .line 1629
    invoke-interface {v1, p1}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 1631
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->notifyPackageAdded(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 1678
    :goto_4f
    return-object v0

    .line 1637
    :cond_50
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 1638
    if-eqz v0, :cond_96

    .line 1642
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1643
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 1646
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    .line 1655
    invoke-interface {v1, p1}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 1656
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->notifyPackageAdded(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_4f

    .line 1674
    :catch_90
    move-exception v0

    .line 1676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1678
    :goto_94
    const/4 v0, 0x0

    goto :goto_4f

    .line 1662
    :cond_96
    :try_start_96
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    move-result-object v0

    .line 1663
    if-eqz v0, :cond_b0

    .line 1665
    iget-boolean v2, v0, Lcom/duoku/platform/download/mode/OwnGameAction;->hasAccount:Z

    invoke-virtual {p1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1666
    iget-object v0, v0, Lcom/duoku/platform/download/mode/OwnGameAction;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1668
    :cond_b0
    invoke-interface {v1, p1}, Lcom/duoku/platform/d/a;->a(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b3} :catch_90

    goto :goto_94
.end method

.method public addInstalledAppRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 8

    .prologue
    .line 1506
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    .line 1507
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v2

    .line 1508
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 1510
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPinyinName(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1514
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/duoku/platform/d/a;->d(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 1515
    if-eqz v0, :cond_53

    .line 1519
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1520
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 1523
    iget-object v3, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    .line 1531
    invoke-interface {v1, v2}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 1577
    :goto_52
    return-object v0

    .line 1537
    :cond_53
    const/4 v0, 0x1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 1538
    if-eqz v0, :cond_82

    .line 1542
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1543
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 1546
    iget-object v3, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    .line 1555
    invoke-interface {v1, v2}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    goto :goto_52

    .line 1573
    :catch_7c
    move-exception v0

    .line 1575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1577
    :goto_80
    const/4 v0, 0x0

    goto :goto_52

    .line 1561
    :cond_82
    :try_start_82
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_98

    .line 1564
    iget-boolean v3, v0, Lcom/duoku/platform/download/mode/OwnGameAction;->hasAccount:Z

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1565
    iget-object v0, v0, Lcom/duoku/platform/download/mode/OwnGameAction;->action:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1567
    :cond_98
    invoke-interface {v1, v2}, Lcom/duoku/platform/d/a;->a(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9b} :catch_7c

    goto :goto_80
.end method

.method public addInstalledGameRecord(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1690
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1691
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v1

    .line 1692
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1693
    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 1694
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPinyinName(Ljava/lang/String;)V

    .line 1700
    const/4 v2, 0x1

    .line 1698
    invoke-interface {v0, p2, v2}, Lcom/duoku/platform/d/a;->a(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v2

    .line 1701
    if-eqz v2, :cond_3c

    .line 1707
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setNeedLogin(Z)V

    .line 1708
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setExtra(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 1711
    :cond_3c
    invoke-interface {v0, v1}, Lcom/duoku/platform/d/a;->b(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 1712
    if-nez v2, :cond_43

    const/4 v0, 0x0

    :goto_42
    return-object v0

    :cond_43
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method public declared-synchronized addOnAppStatusChangedListener(Lcom/duoku/platform/download/utils/AppManager$OnAppStatusChangedListener;)V
    .registers 3

    .prologue
    .line 2063
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->observers:Ljava/util/List;

    if-nez v0, :cond_c

    .line 2065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->observers:Ljava/util/List;

    .line 2067
    :cond_c
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 2068
    monitor-exit p0

    return-void

    .line 2063
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public downloadGame(Lcom/duoku/platform/download/mode/DownloadItemInput;)J
    .registers 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    sget-boolean v2, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 444
    const-string v2, "PopNumber"

    const-string v3, "downloadGame"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 447
    :cond_33
    const-wide/16 v16, -0x1

    .line 478
    :cond_35
    :goto_35
    return-wide v16

    .line 450
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->checkDownloadSpace(J)V

    .line 451
    const-wide/16 v16, -0x1

    .line 454
    :try_start_41
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Ljava/lang/String;J)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/utils/AppManager;->fileMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSaveName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/duoku/platform/download/DownloadUtil;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6b} :catch_db

    move-result-wide v16

    .line 462
    :goto_6c
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_35

    .line 467
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getVersionInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPublishDate()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isNeedLogin()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getSize()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getDownloadUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getIconUrl()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getGameId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload()Z

    move-result v23

    const/16 v24, 0x0

    .line 467
    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->addDownloadRecord(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v2

    .line 472
    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadItemInput;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_35

    .line 458
    :catch_db
    move-exception v2

    goto :goto_6c
.end method

.method public downloadGameForUpdate(Lcom/duoku/platform/download/mode/UpdatableAppInfo;)J
    .registers 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 658
    :cond_1e
    const-wide/16 v16, -0x1

    .line 697
    :cond_20
    :goto_20
    return-wide v16

    .line 660
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->checkDownloadSpace(J)V

    .line 669
    const-wide/16 v16, -0x1

    .line 672
    :try_start_2c
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Ljava/lang/String;J)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/utils/AppManager;->fileMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/duoku/platform/download/utils/AppManager;->buildSaveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/duoku/platform/download/DownloadUtil;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5c} :catch_d1

    move-result-wide v16

    .line 679
    :goto_5d
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_20

    .line 685
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersionInt()I

    move-result v7

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v10

    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isNeedLogin()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getServerSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isDiffUpdate()Z

    move-result v23

    const/16 v24, 0x0

    .line 685
    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->addDownloadRecord(Lcom/duoku/platform/download/mode/DownloadAppInfo;)J

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v2

    .line 690
    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_20

    .line 675
    :catch_d1
    move-exception v2

    goto :goto_5d
.end method

.method public downloadGameForUpdate(Ljava/util/List;)[Ljava/lang/String;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 712
    :cond_8
    const/4 v2, 0x0

    .line 774
    :goto_9
    return-object v2

    .line 714
    :cond_a
    const-wide/16 v2, 0x0

    .line 715
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 719
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/duoku/platform/download/utils/AppManager;->checkDownloadSpace(J)V

    .line 721
    const-wide/16 v16, -0x1

    .line 724
    :try_start_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 725
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 727
    const/4 v2, 0x0

    .line 728
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    move/from16 v26, v2

    :cond_37
    :goto_37
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 756
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 758
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 759
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 760
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 761
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 763
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->addDownloadRecords([Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v3

    .line 765
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6a} :catch_6b

    goto :goto_9

    .line 770
    :catch_6b
    move-exception v2

    .line 774
    :cond_6c
    const/4 v2, 0x0

    goto :goto_9

    .line 715
    :cond_6e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 717
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v2

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_11

    .line 728
    :cond_7b
    :try_start_7b
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    move-object/from16 v25, v0

    .line 730
    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 735
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Ljava/lang/String;J)V

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/utils/AppManager;->fileMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/duoku/platform/download/utils/AppManager;->buildSaveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/duoku/platform/download/DownloadUtil;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    .line 737
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_37

    .line 742
    new-instance v3, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewVersionInt()I

    move-result v7

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v10

    .line 743
    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isNeedLogin()Z

    move-result v11

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getServerSign()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v14

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    .line 744
    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isDiffUpdate()Z

    move-result v23

    const/16 v24, 0x0

    .line 742
    invoke-direct/range {v3 .. v24}, Lcom/duoku/platform/download/mode/DownloadAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V

    .line 745
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-virtual/range {v25 .. v25}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_12e} :catch_6b

    .line 748
    add-int/lit8 v2, v26, 0x1

    move/from16 v26, v2

    goto/16 :goto_37
.end method

.method public getAllUpdatableGames()Ljava/util/List;
    .registers 2
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
    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGames(Z)Ljava/util/List;

    move-result-object v0

    .line 2000
    return-object v0
.end method

.method public getAllUpdatableGames(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1830
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 1831
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->isInitialize()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1833
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->getUnpdatable()Ljava/util/List;

    move-result-object v0

    .line 1835
    if-eqz p1, :cond_16

    if-eqz v0, :cond_16

    .line 1837
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->filterData(Ljava/util/List;Z)V

    .line 1843
    :cond_16
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGamesFromDB(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method public getAllUpdatableGamesFromDB(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->f()Ljava/util/List;

    move-result-object v0

    .line 1858
    if-nez v0, :cond_f

    .line 1860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/download/utils/AppManager;->allUpdateGames:I

    .line 1863
    if-eqz p1, :cond_23

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 1865
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->filterData(Ljava/util/List;Z)V

    .line 1867
    :cond_23
    return-object v0
.end method

.method public getAllUpdateGames()I
    .registers 2

    .prologue
    .line 2377
    iget v0, p0, Lcom/duoku/platform/download/utils/AppManager;->allUpdateGames:I

    return v0
.end method

.method public getAndCheckDownloadGames()Ljava/util/List;
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
    .line 1053
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGames(Z)Ljava/util/List;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_a

    .line 1057
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownloads(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    .line 1065
    :cond_a
    :goto_a
    return-object v0

    .line 1061
    :catch_b
    move-exception v0

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1065
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAndCheckDownloadGames(Z)Ljava/util/List;
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
    .line 1117
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGames(Z)Ljava/util/List;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_9

    .line 1120
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownloads(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1128
    :cond_9
    :goto_9
    return-object v0

    .line 1124
    :catch_a
    move-exception v0

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1128
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getAppNameByPakageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 2396
    const-string v0, ""

    .line 2399
    :try_start_2
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2400
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2401
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v0

    .line 2411
    :goto_16
    return-object v0

    .line 2403
    :catch_17
    move-exception v0

    .line 2405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2406
    const-string v0, ""

    goto :goto_16
.end method

.method public getCheckStatus(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 248
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    const-string v1, "check_status_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 251
    return v0
.end method

.method public getCheckStatus()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 257
    const-string v1, "check_status_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public getDownloadGame(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 7

    .prologue
    .line 940
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 941
    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/d/a;->a(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 943
    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 9

    .prologue
    .line 975
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 976
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 977
    const/4 v0, 0x0

    .line 978
    if-eqz v1, :cond_15

    .line 980
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 982
    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadGame(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 7

    .prologue
    .line 954
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 955
    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/d/a;->d(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 956
    const/4 v0, 0x0

    .line 957
    if-eqz v1, :cond_15

    .line 959
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 961
    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadGameForId(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 7

    .prologue
    .line 994
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 995
    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/d/a;->b(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 996
    const/4 v0, 0x0

    .line 997
    if-eqz v1, :cond_15

    .line 999
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 1001
    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadGameForUrl(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1012
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    .line 1013
    invoke-interface {v1, p1, v0, p2}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 1015
    if-eqz v1, :cond_15

    .line 1017
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 1019
    :cond_15
    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkDownload(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method getDownloadGames(Z)Ljava/util/List;
    .registers 4
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
    .line 1030
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->isInitialize()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1033
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->getDownloads()Ljava/util/List;

    move-result-object v0

    .line 1039
    :goto_e
    return-object v0

    .line 1038
    :cond_f
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGamesFromDB(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method public getDownloadGamesFromDB(Z)Ljava/util/List;
    .registers 16
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
    .line 1337
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v5

    .line 1341
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Lcom/duoku/platform/d/a;->a(Z)Ljava/util/List;

    move-result-object v4

    .line 1344
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1346
    :cond_11
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1348
    const-string v0, "MyTest"

    const-string v1, "getDownloadGamesFromDB return null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_1c
    const/4 v0, 0x0

    .line 1450
    :goto_1d
    return-object v0

    .line 1356
    :cond_1e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1365
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_50

    .line 1366
    const-string v1, "AppInstaller"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getDownloadGamesFromDB "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " allDownloadApps"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    :goto_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_50
    if-eqz v4, :cond_58

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6e

    .line 1370
    :cond_58
    const/4 v0, 0x0

    goto :goto_1d

    .line 1358
    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1359
    if-nez p1, :cond_22

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isMarkDeleted()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1361
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 1366
    :cond_6c
    const/4 v0, 0x0

    goto :goto_45

    .line 1373
    :cond_6e
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 1376
    if-nez v6, :cond_97

    .line 1381
    :try_start_76
    new-array v2, v3, [J

    .line 1382
    const/4 v0, 0x0

    move v1, v0

    :goto_7a
    if-lt v1, v3, :cond_82

    .line 1386
    const/4 v0, 0x1

    invoke-interface {v5, v0, v2}, Lcom/duoku/platform/d/a;->a(Z[J)V

    .line 1393
    :goto_80
    const/4 v0, 0x0

    goto :goto_1d

    .line 1384
    :cond_82
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    aput-wide v6, v2, v1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8e} :catch_92

    .line 1382
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7a

    .line 1388
    :catch_92
    move-exception v0

    .line 1390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    .line 1396
    :cond_97
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a0
    :goto_a0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 1427
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 1448
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_d5

    .line 1449
    const-string v1, "AppInstaller"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getDownloadGamesFromDB "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " finally return :allDownloadApps"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v4, :cond_14b

    move v0, v3

    :goto_ca
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    move-object v0, v4

    .line 1450
    goto/16 :goto_1d

    .line 1399
    :cond_d8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1402
    const/4 v1, 0x0

    .line 1403
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v10

    .line 1405
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v1

    :cond_e8
    :goto_e8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f6

    .line 1417
    if-nez v2, :cond_a0

    .line 1420
    if-nez p1, :cond_a0

    .line 1422
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 1405
    :cond_f6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1411
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-nez v12, :cond_e8

    .line 1413
    invoke-direct {p0, v0, v1}, Lcom/duoku/platform/download/utils/AppManager;->setDownloadData(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V

    .line 1414
    const/4 v1, 0x1

    move v2, v1

    goto :goto_e8

    .line 1427
    :cond_10a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1431
    :try_start_110
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1432
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/duoku/platform/d/a;->f(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_134

    .line 1435
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v10

    aput-wide v10, v7, v8

    invoke-static {v2, v6, v7}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 1438
    :cond_134
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    invoke-static {v2, v6, v8, v9}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_143} :catch_145

    goto/16 :goto_aa

    .line 1441
    :catch_145
    move-exception v0

    .line 1443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_aa

    .line 1449
    :cond_14b
    const/4 v0, 0x0

    goto/16 :goto_ca
.end method

.method public getDownloadingSize()I
    .registers 2

    .prologue
    .line 1322
    const/4 v0, 0x0

    .line 1324
    return v0
.end method

.method public getGameCounts()I
    .registers 2

    .prologue
    .line 1075
    .line 1076
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v0

    .line 1077
    if-eqz v0, :cond_b

    .line 1078
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->checkStatusDownloading(Ljava/util/List;)I

    move-result v0

    .line 1080
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getGameStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/duoku/platform/download/utils/AppManager$GameStatus;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppManager;->getInstalledGame(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_b

    .line 302
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 371
    :goto_a
    return-object v0

    .line 306
    :cond_b
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_1d

    .line 312
    invoke-virtual {p0, v2}, Lcom/duoku/platform/download/utils/AppManager;->updateInstalledGameRecord(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V

    .line 313
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    goto :goto_a

    .line 317
    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGameForId(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_a1

    move-result-object v2

    .line 320
    if-eqz v2, :cond_9d

    .line 325
    :try_start_24
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v3

    .line 326
    if-nez v3, :cond_6c

    move v0, v1

    .line 341
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_8d

    .line 343
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 344
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 346
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_61

    .line 348
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    aput-wide v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 350
    :cond_61
    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Lcom/duoku/platform/d/a;->a(ZJ)V

    .line 351
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    goto :goto_a

    .line 332
    :cond_6c
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v4

    .line 333
    sget-object v5, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v4, v5, :cond_2b

    .line 335
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_84} :catch_89

    move-result v3

    if-nez v3, :cond_2b

    move v0, v1

    goto :goto_2b

    .line 355
    :catch_89
    move-exception v0

    .line 357
    :try_start_8a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :cond_8d
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v0, v1, :cond_99

    .line 363
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DONWLOADED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    goto/16 :goto_a

    .line 365
    :cond_99
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DOWNLOADING:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    goto/16 :goto_a

    .line 367
    :cond_9d
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9f} :catch_a1

    goto/16 :goto_a

    .line 369
    :catch_a1
    move-exception v0

    .line 371
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    goto/16 :goto_a
.end method

.method public getIgnoredGames(Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1903
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGames(Z)Ljava/util/List;

    move-result-object v2

    .line 1904
    invoke-direct {p0, v2, v0}, Lcom/duoku/platform/download/utils/AppManager;->filterData(Ljava/util/List;Z)V

    .line 1905
    if-eqz p1, :cond_1c

    if-eqz v2, :cond_1c

    .line 1907
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGames(Z)Ljava/util/List;

    move-result-object v3

    .line 1908
    if-eqz v3, :cond_1c

    .line 1910
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1911
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1934
    :cond_1c
    return-object v2

    .line 1913
    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 1914
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1919
    :try_start_33
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1921
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_52} :catch_53

    goto :goto_27

    .line 1924
    :catch_53
    move-exception v1

    .line 1926
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public getInstalledGame(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 3

    .prologue
    .line 2289
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2291
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->d(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledGames()Ljava/util/List;
    .registers 13
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2198
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 2200
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->isInitialize()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2204
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->getInstalleds()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 2210
    :goto_1d
    if-eqz v3, :cond_80

    .line 2212
    const/4 v1, 0x0

    .line 2214
    const-string v0, ""

    .line 2216
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v1

    move-object v1, v0

    :cond_28
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_87

    .line 2236
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_109

    .line 2248
    if-eqz v2, :cond_3d

    .line 2250
    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2253
    :cond_3d
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_80

    .line 2255
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2259
    :try_start_4e
    const-string v4, "\r\n------------------------\r\n\tDATE: %s\r\n\tINSTALLED GAMES: %s\r\n\tREMOVED: %s"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v7, 0x2

    if-nez v2, :cond_11f

    const-string v0, "NULL"

    :goto_5e
    aput-object v0, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_125

    move-result-object v0

    .line 2266
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0.test.installeds.all.log."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "yyyy.MM.dd.HH"

    invoke-static {v2, v3, v4}, Lcom/duoku/platform/download/utils/DateUtil;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/duoku/platform/download/utils/FileHelper;->saveResultToLogFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2270
    :cond_80
    return-object v5

    .line 2208
    :cond_81
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/AppManager;->getInstalledGamesFromDB()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_1d

    .line 2216
    :cond_87
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ">, "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2221
    iget-object v7, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    move-object v2, v0

    .line 2224
    goto/16 :goto_28

    .line 2226
    :cond_dd
    iget-object v7, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/duoku/platform/download/utils/AppUtil;->loadApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2227
    invoke-virtual {v0, v7}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2229
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 2231
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2232
    invoke-static {v7}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPinyinName(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 2236
    :cond_109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2240
    :try_start_10f
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2241
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_11a} :catch_11c

    goto/16 :goto_32

    .line 2243
    :catch_11c
    move-exception v0

    goto/16 :goto_32

    .line 2259
    :cond_11f
    :try_start_11f
    invoke-virtual {v2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_125

    move-result-object v0

    goto/16 :goto_5e

    .line 2261
    :catch_125
    move-exception v0

    .line 2263
    const-string v0, "\r\n------------------------\r\n\tDATE: %s\r\n\tINSTALLED GAMES: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v3, v2, v9

    aput-object v1, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_64
.end method

.method public getInstalledGamesFromDB()Ljava/util/List;
    .registers 2
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
    .line 2275
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2277
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->d()Ljava/util/List;

    move-result-object v0

    .line 2278
    return-object v0
.end method

.method public getInstalledListCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2371
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2372
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->c()I

    move-result v0

    return v0
.end method

.method public getMyDownloadedGames()Ljava/util/List;
    .registers 2
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
    .line 2346
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2347
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyStatus(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 861
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 862
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPopNumber()I
    .registers 3

    .prologue
    .line 1266
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->isInitialize()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1269
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->getPopNumber(Landroid/content/Context;)I

    move-result v0

    .line 1274
    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/AppManager;->getPopNumberFromDB()I

    move-result v0

    goto :goto_10
.end method

.method public getPopNumberFromDB()I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGames(Z)Ljava/util/List;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_8a

    .line 1285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1298
    :goto_18
    invoke-virtual {p0}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v4

    .line 1301
    if-eqz v4, :cond_2e

    .line 1303
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1310
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1311
    add-int v0, v1, v2

    .line 1315
    :cond_2e
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_54

    .line 1316
    const-string v0, "PopNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[AppManager]Get PopNumber from DB:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " download size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1285
    :cond_59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 1287
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->isIgnoreUpdate()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1289
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_72

    .line 1291
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 1303
    :cond_76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1305
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 1307
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_8a
    move v1, v2

    goto :goto_18
.end method

.method public getSilentInstallList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/duoku/platform/download/mode/InstallPacket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstnce()Lcom/duoku/platform/download/utils/AppSilentInstaller;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppSilentInstaller;->getInstallDataSet()Ljava/util/Set;

    move-result-object v0

    .line 1261
    return-object v0
.end method

.method public getUpdatableCount()I
    .registers 2

    .prologue
    .line 2357
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2358
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->b()I

    move-result v0

    return v0
.end method

.method public getUpdatableGame(Ljava/lang/String;)Lcom/duoku/platform/download/mode/UpdatableAppInfo;
    .registers 5

    .prologue
    .line 1878
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppCache;->getUnpdatable()Ljava/util/List;

    move-result-object v0

    .line 1880
    if-eqz v0, :cond_14

    .line 1882
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1890
    :cond_14
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1891
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->c(Ljava/lang/String;)Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 1882
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 1884
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1c
.end method

.method public getUpdatableGames(Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/UpdatableAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getAllUpdatableGames(Z)Ljava/util/List;

    move-result-object v2

    .line 1948
    if-eqz p1, :cond_1a

    if-eqz v2, :cond_1a

    .line 1950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGames(Z)Ljava/util/List;

    move-result-object v3

    .line 1951
    if-eqz v3, :cond_1a

    .line 1953
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1954
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1976
    :cond_1a
    return-object v2

    .line 1956
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    .line 1957
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1962
    :try_start_31
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4a} :catch_4b

    goto :goto_25

    .line 1967
    :catch_4b
    move-exception v1

    .line 1969
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public getWhiteListCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2364
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2365
    invoke-interface {v0}, Lcom/duoku/platform/d/a;->a()I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    if-nez v0, :cond_45

    .line 95
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 98
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/duoku/sdk/download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_3f
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->defaultDownloadDest:Ljava/lang/String;

    .line 107
    :cond_45
    return-void
.end method

.method public loadAndSaveInstalledApps(Z)V
    .registers 7

    .prologue
    .line 2128
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppManager;->loadInstalledList(Z)Ljava/util/List;

    move-result-object v1

    .line 2131
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v2

    .line 2133
    invoke-interface {v2}, Lcom/duoku/platform/d/a;->e()Ljava/util/List;

    move-result-object v0

    .line 2136
    invoke-interface {v2, v1}, Lcom/duoku/platform/d/a;->a(Ljava/util/List;)V

    .line 2137
    if-eqz v0, :cond_1b

    .line 2139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2152
    :cond_1b
    return-void

    .line 2139
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2141
    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/download/utils/AppManager;->find(Ljava/util/List;Lcom/duoku/platform/download/mode/InstalledAppInfo;)Z

    move-result v4

    .line 2142
    if-nez v4, :cond_15

    if-eqz v0, :cond_15

    .line 2144
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/duoku/platform/d/a;->g(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public loadInstalledList(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/InstalledAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/duoku/platform/download/utils/AppUtil;->loadAppInfoList(Landroid/content/pm/PackageManager;ZZ)Ljava/util/List;

    move-result-object v1

    .line 2162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2171
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2172
    return-object v1

    .line 2162
    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    .line 2164
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2166
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/download/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2167
    invoke-virtual {v0, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setName(Ljava/lang/String;)V

    .line 2168
    invoke-static {v3}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setPinyinName(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public notifyForAppRemoved(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1797
    .line 1798
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1800
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getFileMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGame(Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    .line 1802
    :goto_10
    if-nez v0, :cond_70

    .line 1804
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v0

    move-object v5, v0

    .line 1807
    :goto_27
    if-eqz v5, :cond_50

    .line 1809
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v3

    invoke-virtual {v5}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 1811
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1819
    :goto_4f
    return-void

    .line 1815
    :cond_50
    new-instance v0, Lcom/duoku/platform/download/mode/QueryInput;

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getVersionInt()I

    move-result v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/QueryInput;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->queryPackageStatus(Lcom/duoku/platform/download/mode/QueryInput;)Ljava/util/Map;

    move-result-object v1

    .line 1817
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/PackageMode;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    goto :goto_4f

    :cond_70
    move-object v5, v0

    goto :goto_27

    :cond_72
    move-object v0, v4

    goto :goto_10
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/duoku/platform/download/utils/AppManager;->INSTANCE:Lcom/duoku/platform/download/utils/AppManager;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs pauseDownloadGames([J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/download/DownloadUtil;->pauseDownload(Landroid/content/Context;[J)V

    .line 620
    return-void
.end method

.method public removeAllCheckStatus()V
    .registers 4

    .prologue
    .line 235
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 236
    const-string v1, "check_status_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method

.method public removeCheckStatus(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 228
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    const-string v1, "check_status_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public removeDownloadGames(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 576
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 577
    const-string v0, "PopNumber"

    const-string v2, "[AppManager#removeDownloadGames]"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v3

    .line 581
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_55

    .line 590
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 591
    const-string v0, "PopNumber"

    const-string v2, "[AppManager#removeDownloadGames]appDbHandler.removeDownloadGames"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_32
    const/4 v0, 0x1

    invoke-interface {v3, v0, v4}, Lcom/duoku/platform/d/a;->a(Z[J)V

    .line 593
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_41

    .line 594
    const-string v0, "PopNumber"

    const-string v2, "[AppManager#removeDownloadGames]DownloadUtil.removeDownload"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_41
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, v4}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 597
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 598
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 599
    array-length v2, v5

    .line 600
    :goto_52
    if-lt v1, v2, :cond_6b

    .line 609
    :goto_54
    return-void

    .line 584
    :cond_55
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 586
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v8

    aput-wide v8, v4, v2

    .line 587
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 588
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    .line 602
    :cond_6b
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v3, v0}, Lcom/duoku/platform/download/utils/BackAppListener;->cancleNotification(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_78} :catch_7c

    .line 600
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 605
    :catch_7c
    move-exception v0

    goto :goto_54
.end method

.method public removeDownloadRecordIfNecessary(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1728
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1729
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isDeletePkgAfterInstallation()Z

    move-result v1

    .line 1731
    if-eqz v1, :cond_17

    .line 1733
    if-eqz p1, :cond_13

    .line 1735
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1737
    :cond_13
    invoke-interface {v0, v3, p1}, Lcom/duoku/platform/d/a;->a(ZLjava/lang/String;)V

    .line 1747
    :goto_16
    return-void

    .line 1745
    :cond_17
    invoke-interface {v0, v3, p1}, Lcom/duoku/platform/d/a;->a(ZLjava/lang/String;)V

    goto :goto_16
.end method

.method public removeDownloadRecordIfNecessary(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1756
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1757
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isDeletePkgAfterInstallation()Z

    move-result v1

    .line 1760
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    if-eqz v1, :cond_37

    .line 1762
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    new-array v2, v6, [J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v7

    invoke-static {v1, v6, v2}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 1764
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v6, v2, v3}, Lcom/duoku/platform/d/a;->a(ZJ)V

    .line 1771
    :goto_2b
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v8, v8, v2, v3}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)I

    .line 1773
    return-void

    .line 1768
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v7, v2, v3}, Lcom/duoku/platform/d/a;->a(ZJ)V

    goto :goto_2b
.end method

.method public removeInstallAppRecord(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;
    .registers 3

    .prologue
    .line 1491
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1492
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->b(Ljava/lang/String;)Lcom/duoku/platform/download/mode/InstalledAppInfo;

    move-result-object v0

    .line 1493
    return-object v0
.end method

.method public declared-synchronized removeOnAppStatusChangedListener(Lcom/duoku/platform/download/utils/AppManager$OnAppStatusChangedListener;)V
    .registers 3

    .prologue
    .line 2072
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->observers:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2074
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 2076
    :cond_a
    monitor-exit p0

    return-void

    .line 2072
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeUpdateRecordIfNecessary(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 2383
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2384
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->j(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs restartDownload([J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/download/DownloadUtil;->restartDownload(Landroid/content/Context;[J)V

    .line 642
    return-void
.end method

.method public varargs resumeDownload([J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 631
    return-void
.end method

.method public saveCheckStatus(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 216
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    const-string v1, "check_status_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public saveMyDownloadedGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 13

    .prologue
    .line 2315
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p3, v0}, Lcom/duoku/platform/download/utils/AppManager;->getDownloadGame(Ljava/lang/Long;Z)Lcom/duoku/platform/download/mode/DownloadAppInfo;

    move-result-object v1

    .line 2316
    if-nez v1, :cond_8

    .line 2337
    :goto_7
    return-void

    .line 2323
    :cond_8
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v8

    .line 2325
    new-instance v0, Lcom/duoku/platform/download/mode/MyDownloadedGame;

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/duoku/platform/download/mode/MyDownloadedGame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2327
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2328
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    invoke-interface {v8, v1}, Lcom/duoku/platform/d/a;->c(Ljava/util/List;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_7

    .line 2332
    :catch_31
    move-exception v0

    .line 2334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public saveUpdatableList(Ljava/util/List;)V
    .registers 3
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
    .line 2301
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2302
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->b(Ljava/util/List;)V

    .line 2303
    return-void
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 149
    invoke-static {p2, v2}, Lcom/duoku/platform/download/utils/AppUtil;->getIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 172
    :goto_b
    return-void

    .line 156
    :catch_c
    move-exception v0

    .line 160
    invoke-static {v2, p2}, Lcom/duoku/platform/download/utils/AppUtil;->tryLoadOwnGame(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/duoku/platform/download/mode/OwnGameAction;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_1c

    .line 163
    iget-object v1, v2, Lcom/duoku/platform/download/mode/OwnGameAction;->action:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getOwnIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 164
    invoke-direct {p0, v1}, Lcom/duoku/platform/download/utils/AppManager;->passData(Landroid/content/Intent;)V

    .line 169
    :cond_1c
    if-eqz v1, :cond_23

    .line 171
    :try_start_1e
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_b

    .line 175
    :catch_22
    move-exception v0

    .line 179
    :cond_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startOwnActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/duoku/platform/download/mode/StartGame;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/StartGame;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/StartGame;->startGame()V

    .line 203
    return-void
.end method

.method public varargs updateAllIgnoreState(Z[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2100
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2101
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Z)V

    .line 2102
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/utils/AppManager;->notifyAppIgnoreStatusChanged(Z[Ljava/lang/String;)V

    .line 2103
    return-void
.end method

.method updateDownloadRecord(JLjava/lang/String;ZJ)I
    .registers 16

    .prologue
    .line 812
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    .line 813
    invoke-interface/range {v1 .. v7}, Lcom/duoku/platform/d/a;->a(JLjava/lang/String;ZJ)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 820
    :goto_c
    return v0

    .line 815
    :catch_d
    move-exception v0

    .line 820
    const/4 v0, 0x0

    goto :goto_c
.end method

.method updateDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZJ)I
    .registers 12

    .prologue
    .line 797
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 798
    invoke-interface/range {v0 .. v5}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/String;ZJ)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 804
    :goto_c
    return v0

    .line 800
    :catch_d
    move-exception v0

    .line 804
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public updateDownloadRecord(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 26

    .prologue
    .line 841
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v5

    .line 842
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-interface/range {v5 .. v12}, Lcom/duoku/platform/d/a;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p3

    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/duoku/platform/download/utils/PackageHelper;->formDownloadAppData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 844
    iget-object v6, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v6, v0, v1, v5}, Lcom/duoku/platform/download/DownloadUtil;->updateDownload(Landroid/content/Context;JLjava/lang/String;)I

    .line 845
    return-void
.end method

.method public updateDownloadRecordIfNecessary(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1783
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1787
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/duoku/platform/d/a;->e(Ljava/lang/String;Z)V

    .line 1788
    return-void
.end method

.method public varargs updateGameInstallStatus(Ljava/lang/String;JLcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V
    .registers 8

    .prologue
    .line 491
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 492
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4, p5}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Ljava/lang/Long;Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V

    .line 497
    invoke-static {}, Lcom/duoku/platform/download/utils/AppCache;->getInstance()Lcom/duoku/platform/download/utils/AppCache;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->refreshDownload(Landroid/content/Context;)V

    .line 499
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/utils/AppCache;->refreshInstall(Landroid/content/Context;)V

    .line 501
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyInstallChanged()V

    .line 504
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/duoku/platform/download/utils/AppManager;->notifyPakcageStatusForInstall(JLcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;[I)V

    .line 505
    return-void
.end method

.method public updateGameLauncherOrder(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2416
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2417
    invoke-interface {v0, p1}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;)V

    .line 2418
    return-void
.end method

.method public updateIgnoreState(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 2086
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 2087
    invoke-interface {v0, p2, p1}, Lcom/duoku/platform/d/a;->a(Ljava/lang/String;Z)V

    .line 2088
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/utils/AppManager;->notifyAppIgnoreStatusChanged(Z[Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method public updateInstalledGameRecord(Lcom/duoku/platform/download/mode/InstalledAppInfo;)V
    .registers 4

    .prologue
    .line 1717
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 1718
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/duoku/platform/d/a;->a(Lcom/duoku/platform/download/mode/InstalledAppInfo;Z)V

    .line 1719
    return-void
.end method

.method public updateNotifyStatus(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 855
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v0

    .line 856
    invoke-interface {v0, p1, p2}, Lcom/duoku/platform/d/a;->c(Ljava/lang/String;Z)V

    .line 857
    return-void
.end method
