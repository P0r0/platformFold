.class Lcom/duoku/platform/download/utils/PackageHelper$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:[J

.field private final synthetic b:Lcom/duoku/platform/download/listener/DownloadCallback;


# direct methods
.method constructor <init>([JLcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->a:[J

    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    .line 1340
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 1345
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1346
    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->a:[J

    if-eqz v2, :cond_10

    .line 1348
    iget-object v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->a:[J

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 1350
    :cond_10
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1351
    if-eqz v2, :cond_1b

    .line 1353
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->a:[J

    array-length v3, v0

    .line 1354
    :goto_19
    if-lt v1, v3, :cond_1f

    .line 1390
    :cond_1b
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 1391
    return-void

    .line 1356
    :cond_1f
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->a:[J

    aget-wide v4, v0, v1

    .line 1357
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_27
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1354
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 1357
    :cond_31
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1359
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-nez v7, :cond_27

    .line 1363
    :try_start_41
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v8

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(J)I
    invoke-static {v8, v9}, Lcom/duoku/platform/download/utils/PackageHelper;->access$6(J)I

    move-result v7

    .line 1364
    const/4 v8, -0x1

    if-eq v7, v8, :cond_68

    .line 1366
    iget-object v8, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    if-eqz v8, :cond_27

    .line 1368
    iget-object v8, p0, Lcom/duoku/platform/download/utils/PackageHelper$6;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v0, v9, v7}, Lcom/duoku/platform/download/listener/DownloadCallback;->onResumeDownloadResult(Ljava/lang/String;ZLjava/lang/Integer;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_5f

    goto :goto_27

    .line 1382
    :catch_5f
    move-exception v0

    .line 1384
    sget-object v7, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v8, "pauseDownloadGames error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1373
    :cond_68
    :try_start_68
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 1374
    if-eqz v0, :cond_27

    .line 1378
    const/4 v7, 0x4

    iput v7, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1379
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1380
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_77} :catch_5f

    goto :goto_27
.end method
