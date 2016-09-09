.class Lcom/duoku/platform/download/utils/PackageHelper$11;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$11;->a:[Ljava/lang/String;

    .line 1630
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 1635
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1636
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1637
    if-eqz v1, :cond_17

    .line 1639
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1667
    :cond_17
    return-void

    .line 1639
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1641
    iget-object v6, p0, Lcom/duoku/platform/download/utils/PackageHelper$11;->a:[Ljava/lang/String;

    array-length v7, v6

    move v3, v4

    :goto_22
    if-ge v3, v7, :cond_11

    aget-object v2, v6, v3

    .line 1643
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1647
    const/4 v2, 0x1

    :try_start_33
    new-array v2, v2, [J

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v10

    aput-wide v10, v2, v8

    invoke-static {v0, v2}, Lcom/duoku/platform/download/DownloadUtil;->pauseDownload(Landroid/content/Context;[J)V

    .line 1648
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->formPackageMode(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v2

    .line 1649
    if-nez v2, :cond_49

    .line 1641
    :cond_45
    :goto_45
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_22

    .line 1653
    :cond_49
    const/16 v8, 0x10

    iput v8, v2, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 1654
    const/16 v8, 0x323

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v2, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 1655
    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 1656
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->updateNotificationForDownload()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_5c

    goto :goto_45

    .line 1658
    :catch_5c
    move-exception v2

    .line 1660
    sget-object v8, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v9, "pauseDownloadGames error"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45
.end method
