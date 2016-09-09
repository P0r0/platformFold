.class Lcom/duoku/platform/download/utils/PackageHelper$18;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageHelper;->removeDownloadGames(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Z


# direct methods
.method constructor <init>(JZ)V
    .registers 5

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    iput-boolean p3, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->b:Z

    .line 546
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 551
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    .line 554
    :try_start_5
    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v0

    .line 555
    invoke-static {}, Lcom/duoku/platform/d/g;->a()Lcom/duoku/platform/d/a;

    move-result-object v2

    .line 556
    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    aput-wide v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/duoku/platform/d/a;->a(Z[J)V

    .line 557
    iget-wide v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_54

    .line 559
    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    aput-wide v6, v3, v4

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/DownloadUtil;->removeDownload(Landroid/content/Context;Z[J)I

    move-result v2

    .line 560
    sget-boolean v3, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v3, :cond_54

    .line 562
    sget-object v3, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "removeDownloadGames success for :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " affect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_54
    if-eqz v0, :cond_6d

    iget-boolean v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->b:Z

    if-eqz v2, :cond_6d

    .line 568
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getAppData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v2

    .line 569
    iget-object v2, v2, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/duoku/platform/download/utils/PackageHelper;->removeMergeGame(Ljava/lang/String;Ljava/lang/String;J)V

    .line 572
    :cond_6d
    if-eqz v0, :cond_76

    iget-boolean v2, p0, Lcom/duoku/platform/download/utils/PackageHelper$18;->b:Z

    if-eqz v2, :cond_76

    .line 574
    # invokes: Lcom/duoku/platform/download/utils/PackageHelper;->notifyForRemoveDownload(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->access$1(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_76} :catch_80

    .line 582
    :cond_76
    :goto_76
    invoke-static {v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 583
    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyDownloadChanged(Z[Ljava/lang/String;)V

    .line 584
    return-void

    .line 578
    :catch_80
    move-exception v0

    .line 580
    sget-object v2, Lcom/duoku/platform/download/utils/PackageHelper;->DEBUG_TAG:Ljava/lang/String;

    const-string v3, "removeDownloadGames Error!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76
.end method
