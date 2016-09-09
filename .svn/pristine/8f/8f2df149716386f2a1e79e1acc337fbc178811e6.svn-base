.class Lcom/duoku/platform/download/utils/PackageHelper$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:[Ljava/lang/String;

.field private final synthetic b:Lcom/duoku/platform/download/listener/DownloadCallback;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    .line 1207
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 1211
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->a:[Ljava/lang/String;

    array-length v3, v0

    .line 1212
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1213
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 1214
    if-eqz v4, :cond_13

    move v2, v1

    .line 1216
    :goto_11
    if-lt v2, v3, :cond_17

    .line 1255
    :cond_13
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 1256
    return-void

    .line 1218
    :cond_17
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->a:[Ljava/lang/String;

    aget-object v5, v1, v2

    .line 1219
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1216
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 1219
    :cond_29
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1221
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1225
    :try_start_3b
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v8

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(J)I
    invoke-static {v8, v9}, Lcom/duoku/platform/download/utils/PackageHelper;->access$6(J)I

    move-result v7

    .line 1226
    const/4 v8, -0x1

    if-eq v7, v8, :cond_5e

    .line 1228
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    if-eqz v1, :cond_1f

    .line 1230
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$4;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    const/4 v8, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v8, v7}, Lcom/duoku/platform/download/listener/DownloadCallback;->onResumeDownloadResult(Ljava/lang/String;ZLjava/lang/Integer;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_54} :catch_55

    goto :goto_1f

    .line 1247
    :catch_55
    move-exception v1

    .line 1249
    sget-object v7, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v8, "pauseDownloadGames error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 1235
    :cond_5e
    const/4 v7, 0x1

    :try_start_5f
    new-array v7, v7, [J

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v10

    aput-wide v10, v7, v8

    invoke-static {v0, v7}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 1237
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_1f

    .line 1242
    const/4 v7, 0x4

    iput v7, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1243
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1244
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_55

    goto :goto_1f
.end method
