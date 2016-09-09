.class Lcom/duoku/platform/download/utils/PackageHelper$7;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/duoku/platform/download/listener/DownloadCallback;


# direct methods
.method constructor <init>(JLcom/duoku/platform/download/listener/DownloadCallback;)V
    .registers 5

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->a:J

    iput-object p3, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1410
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1411
    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->a:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v1

    .line 1412
    if-eqz v1, :cond_46

    .line 1416
    :try_start_e
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v2

    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->checkDownload(J)I
    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->access$6(J)I

    move-result v2

    .line 1417
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    .line 1419
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    if-eqz v0, :cond_2b

    .line 1421
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->b:Lcom/duoku/platform/download/listener/DownloadCallback;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/duoku/platform/download/listener/DownloadCallback;->onResumeDownloadResult(Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 1443
    :cond_2b
    :goto_2b
    return-void

    .line 1426
    :cond_2c
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/PackageHelper$7;->a:J

    aput-wide v4, v2, v3

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadUtil;->resumeDownload(Landroid/content/Context;[J)V

    .line 1427
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_2b

    .line 1432
    const/4 v1, 0x4

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1433
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1434
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_46} :catch_4a

    .line 1441
    :cond_46
    :goto_46
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    goto :goto_2b

    .line 1436
    :catch_4a
    move-exception v0

    .line 1438
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "pauseDownloadGames error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method
