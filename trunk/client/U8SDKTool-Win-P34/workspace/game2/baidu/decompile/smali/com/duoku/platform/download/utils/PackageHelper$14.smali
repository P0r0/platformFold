.class Lcom/duoku/platform/download/utils/PackageHelper$14;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$14;->a:J

    .line 1736
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1741
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1742
    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$14;->a:J

    aput-wide v2, v1, v4

    invoke-static {v0, v1}, Lcom/duoku/platform/download/DownloadUtil;->pauseDownload(Landroid/content/Context;[J)V

    .line 1743
    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$14;->a:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 1745
    if-eqz v0, :cond_1f

    .line 1749
    :try_start_19
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 1750
    if-nez v0, :cond_20

    .line 1770
    :cond_1f
    :goto_1f
    return-void

    .line 1754
    :cond_20
    const/16 v1, 0x10

    iput v1, v0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1755
    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1756
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1758
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V

    .line 1760
    sget-boolean v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1762
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "[pauseDownloadGames] current size:%s,total size:%s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, v0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v0, v0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5b} :catch_5c

    goto :goto_1f

    .line 1765
    :catch_5c
    move-exception v0

    .line 1767
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "pauseDownloadGames error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
