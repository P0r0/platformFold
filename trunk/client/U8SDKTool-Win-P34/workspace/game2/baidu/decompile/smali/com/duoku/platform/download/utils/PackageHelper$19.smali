.class Lcom/duoku/platform/download/utils/PackageHelper$19;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->removeDownloadGames([Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$19;->a:[Ljava/lang/String;

    .line 608
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 614
    :try_start_0
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 615
    invoke-static {v0}, Lcom/duoku/platform/download/DownloadUtil;->getAllDownloads(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 616
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v3

    .line 617
    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    .line 620
    if-eqz v1, :cond_1d

    .line 622
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_7a

    move-result v1

    if-nez v1, :cond_2d

    .line 645
    :cond_1d
    :goto_1d
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 648
    return-void

    .line 622
    :cond_2d
    :try_start_2d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 624
    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v5

    .line 625
    iget-object v6, p0, Lcom/duoku/platform/download/utils/PackageHelper$19;->a:[Ljava/lang/String;

    array-length v7, v6

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v7, :cond_17

    aget-object v8, v6, v2

    .line 627
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 629
    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [J

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v12

    aput-wide v12, v10, v11

    invoke-interface {v3, v9, v10}, Lcom/duoku/platform/d/a;->a(Z[J)V

    .line 630
    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [J

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v12

    aput-wide v12, v10, v11

    invoke-static {v0, v9, v10}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    .line 632
    iget-object v9, v5, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v10

    invoke-static {v9, v8, v10, v11}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V

    .line 633
    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->notifyForRemoveDownload(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    invoke-static {v1}, Lcom/duoku/platform/download/utils/PackageHelper;->access$1(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_77} :catch_7a

    .line 625
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 641
    :catch_7a
    move-exception v0

    .line 643
    sget-object v1, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v2, "removeDownloadGames Error!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method
