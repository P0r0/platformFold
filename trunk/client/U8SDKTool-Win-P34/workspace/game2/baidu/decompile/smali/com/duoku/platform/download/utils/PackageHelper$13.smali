.class Lcom/duoku/platform/download/utils/PackageHelper$13;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:[J


# direct methods
.method constructor <init>([J)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$13;->a:[J

    .line 1683
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1688
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1689
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$13;->a:[J

    if-eqz v1, :cond_f

    .line 1691
    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageHelper$13;->a:[J

    invoke-static {v0, v1}, Lcom/duoku/platform/download/DownloadUtil;->pauseDownload(Landroid/content/Context;[J)V

    .line 1694
    :cond_f
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1696
    if-eqz v0, :cond_1f

    .line 1698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1724
    :cond_1f
    return-void

    .line 1698
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1700
    iget-object v4, p0, Lcom/duoku/platform/download/utils/PackageHelper$13;->a:[J

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_2b
    if-ge v2, v5, :cond_19

    aget-wide v6, v4, v2

    .line 1702
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_3f

    .line 1706
    :try_start_39
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v1

    .line 1707
    if-nez v1, :cond_43

    .line 1700
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    .line 1711
    :cond_43
    const/16 v6, 0x10

    iput v6, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1712
    const/16 v6, 0x323

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1713
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1714
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_55} :catch_56

    goto :goto_3f

    .line 1716
    :catch_56
    move-exception v1

    .line 1718
    sget-object v6, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v7, "pauseDownloadGames error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method
