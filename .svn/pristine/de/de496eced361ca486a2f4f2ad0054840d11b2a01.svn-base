.class public Lcom/duoku/platform/download/DownloadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadThread$a;,
        Lcom/duoku/platform/download/DownloadThread$b;,
        Lcom/duoku/platform/download/DownloadThread$c;,
        Lcom/duoku/platform/download/DownloadThread$d;
    }
.end annotation


# static fields
.field private static final RANG_SIZE:I = 0x4ac00


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/duoku/platform/download/DownloadInfo;

.field private final mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;Lcom/duoku/platform/download/DownloadInfo;)V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/duoku/platform/download/DownloadThread;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 72
    iput-object p3, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    .line 73
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1758
    invoke-static {p0}, Lcom/duoku/platform/download/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRequestHeaders(Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 6

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1658
    iget-boolean v0, p1, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    if-eqz v0, :cond_3b

    .line 1660
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 1662
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_1f
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_3b
    return-void

    .line 1653
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/Pair;

    .line 1655
    iget-object v1, v0, Lcom/duoku/platform/download/utils/Pair;->mFirst:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/duoku/platform/download/utils/Pair;->mSecond:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private cannotResume(Lcom/duoku/platform/download/DownloadThread$a;)Z
    .registers 3

    .prologue
    .line 1058
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-boolean v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private checkConnectivity(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/16 v0, 0xc4

    const/4 v4, 0x1

    .line 669
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    .line 670
    if-eq v2, v4, :cond_2b

    .line 672
    const/16 v1, 0xc3

    .line 673
    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 676
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v1, v4}, Lcom/duoku/platform/download/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 683
    :goto_15
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v3, v2}, Lcom/duoku/platform/download/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v1

    .line 678
    :cond_21
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    .line 681
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/duoku/platform/download/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_15

    .line 685
    :cond_2b
    return-void

    :cond_2c
    move v0, v1

    goto :goto_15
.end method

.method private checkPausedOrCanceled(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 895
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    monitor-enter v1

    .line 897
    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 901
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 895
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_16

    .line 904
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_28

    .line 906
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const-string v1, "download canceled"

    invoke-direct {v0, v3, v1}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 908
    :cond_28
    return-void
.end method

.method private cleanupDestination(Lcom/duoku/platform/download/DownloadThread$c;I)V
    .registers 5

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->closeDestination(Lcom/duoku/platform/download/DownloadThread$c;)V

    .line 759
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/16 v0, 0x1ea

    if-ne p2, v0, :cond_22

    .line 761
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 763
    if-nez v0, :cond_1f

    .line 765
    const-string v0, "DownloadManager"

    const-string v1, "cleanupDestination delete file failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    .line 769
    :cond_22
    return-void
.end method

.method private closeDestination(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 3

    .prologue
    .line 868
    :try_start_0
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_c

    .line 870
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 871
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 882
    :cond_c
    :goto_c
    return-void

    .line 874
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private executeDownload(Lcom/duoku/platform/download/DownloadThread$c;Lcom/baidu/android/common/net/ProxyHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v2, Lcom/duoku/platform/download/DownloadThread$a;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/duoku/platform/download/DownloadThread$a;-><init>(Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 398
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 400
    invoke-direct {p0, p1, v2}, Lcom/duoku/platform/download/DownloadThread;->setupDestinationFile(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 401
    invoke-direct {p0, v2, p3}, Lcom/duoku/platform/download/DownloadThread;->addRequestHeaders(Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/client/methods/HttpGet;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->checkConnectivity(Lcom/duoku/platform/download/DownloadThread$c;)V

    .line 406
    invoke-virtual {p2}, Lcom/baidu/android/common/net/ProxyHttpClient;->isWap()Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 412
    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/DownloadThread;->wapDownload(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lcom/baidu/android/common/net/ProxyHttpClient;Lorg/apache/http/client/methods/HttpGet;[B)V

    .line 427
    :goto_20
    return-void

    .line 416
    :cond_21
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadThread;->sendRequest(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 417
    invoke-direct {p0, p1, v2, v0}, Lcom/duoku/platform/download/DownloadThread;->handleExceptionalStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    .line 422
    invoke-direct {p0, p1, v2, v0}, Lcom/duoku/platform/download/DownloadThread;->processResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadThread;->openResponseEntity(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 424
    invoke-direct {p0, p1, v2, v5, v0}, Lcom/duoku/platform/download/DownloadThread;->transferData(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)V

    goto :goto_20
.end method

.method private finalizeDestinationFile(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->isDrmFile(Lcom/duoku/platform/download/DownloadThread$c;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 736
    const-string v0, "DownloadThread"

    const-string v1, "finalizeDestinationFile drm file failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_d
    return-void

    .line 743
    :cond_e
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->syncDestination(Lcom/duoku/platform/download/DownloadThread$c;)V

    goto :goto_d
.end method

.method private getFinalStatusForHttpError(Lcom/duoku/platform/download/DownloadThread$c;)I
    .registers 6

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->isNetworkAvailable(Lcom/baidu/bdgame/sdk/obf/nu;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1555
    const/16 v0, 0xc3

    .line 1565
    :goto_a
    return v0

    .line 1557
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    sget v1, Lcom/duoku/platform/download/Constants;->MAX_RETRIES:I

    if-ge v0, v1, :cond_19

    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    .line 1560
    const/16 v0, 0xc2

    goto :goto_a

    .line 1564
    :cond_19
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reached max retries for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/16 v0, 0x1ef

    goto :goto_a
.end method

.method private handleEndOfStream(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1011
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1014
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1017
    iget-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1019
    if-le v1, v0, :cond_2d

    .line 1022
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$b;

    invoke-direct {v0, v3}, Lcom/duoku/platform/download/DownloadThread$b;-><init>(Lcom/duoku/platform/download/DownloadThread$b;)V

    throw v0

    .line 1025
    :cond_2d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1026
    const-string v1, "current_bytes"

    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    iget-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    if-nez v1, :cond_4c

    .line 1029
    const-string v1, "total_bytes"

    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    :cond_4c
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1035
    iget-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_7c

    iget v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    iget-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_7c

    const/4 v0, 0x1

    .line 1036
    :goto_6a
    if-eqz v0, :cond_8a

    .line 1038
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/DownloadThread;->cannotResume(Lcom/duoku/platform/download/DownloadThread$a;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1040
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1e9

    const-string v2, "mismatched content length"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1035
    :cond_7c
    const/4 v0, 0x0

    goto :goto_6a

    .line 1044
    :cond_7e
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->getFinalStatusForHttpError(Lcom/duoku/platform/download/DownloadThread$c;)I

    move-result v1

    const-string v2, "closed socket before end of file"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1047
    :cond_8a
    return-void
.end method

.method private handleEndOfStreamForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 611
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 612
    const-string v1, "current_bytes"

    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    iget-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    if-nez v1, :cond_20

    .line 615
    const-string v1, "total_bytes"

    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    :cond_20
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private handleExceptionalStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1347
    const/16 v0, 0x1f7

    if-ne v1, v0, :cond_17

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    sget v2, Lcom/duoku/platform/download/Constants;->MAX_RETRIES:I

    if-ge v0, v2, :cond_17

    .line 1350
    invoke-direct {p0, p1, p3}, Lcom/duoku/platform/download/DownloadThread;->handleServiceUnavailable(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)V

    .line 1352
    :cond_17
    const/16 v0, 0x12d

    if-eq v1, v0, :cond_27

    const/16 v0, 0x12e

    if-eq v1, v0, :cond_27

    const/16 v0, 0x12f

    if-eq v1, v0, :cond_27

    const/16 v0, 0x133

    if-ne v1, v0, :cond_2a

    .line 1355
    :cond_27
    invoke-direct {p0, p1, p3, v1}, Lcom/duoku/platform/download/DownloadThread;->handleRedirect(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;I)V

    .line 1358
    :cond_2a
    iget-boolean v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    if-eqz v0, :cond_36

    const/16 v0, 0xce

    .line 1360
    :goto_30
    if-eq v1, v0, :cond_35

    .line 1362
    invoke-direct {p0, p1, p2, v1}, Lcom/duoku/platform/download/DownloadThread;->handleOtherStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;I)V

    .line 1364
    :cond_35
    return-void

    .line 1358
    :cond_36
    const/16 v0, 0xc8

    goto :goto_30
.end method

.method private handleOtherStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 1381
    invoke-static {p3}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, p3

    .line 1398
    :goto_7
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1385
    :cond_1c
    const/16 v0, 0x12c

    if-lt p3, v0, :cond_27

    const/16 v0, 0x190

    if-ge p3, v0, :cond_27

    .line 1388
    const/16 v0, 0x1ed

    .line 1389
    goto :goto_7

    .line 1390
    :cond_27
    iget-boolean v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    if-eqz v0, :cond_32

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_32

    .line 1392
    const/16 v0, 0x1e9

    .line 1393
    goto :goto_7

    .line 1396
    :cond_32
    const/16 v0, 0x1ee

    goto :goto_7
.end method

.method private handleRedirect(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    .line 1421
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_f

    .line 1423
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1f1

    const-string v2, "too many redirects"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1425
    :cond_f
    const-string v0, "Location"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1426
    if-nez v0, :cond_18

    .line 1428
    return-void

    .line 1438
    :cond_18
    :try_start_18
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URI;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_31} :catch_4b

    move-result-object v0

    .line 1448
    iget v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    .line 1449
    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->i:Ljava/lang/String;

    .line 1450
    const/16 v1, 0x12d

    if-eq p3, v1, :cond_42

    const/16 v1, 0x12f

    if-ne p3, v1, :cond_44

    .line 1454
    :cond_42
    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->g:Ljava/lang/String;

    .line 1456
    :cond_44
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/DownloadThread$b;-><init>(Lcom/duoku/platform/download/DownloadThread$b;)V

    throw v0

    .line 1440
    :catch_4b
    move-exception v0

    .line 1446
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1ef

    const-string v2, "Couldn\'t resolve redirect URI"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private handleServiceUnavailable(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const v2, 0x15180

    const/16 v1, 0x1e

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    .line 1477
    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1478
    if-eqz v0, :cond_21

    .line 1486
    :try_start_10
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    .line 1487
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    if-gez v0, :cond_2b

    .line 1489
    const/4 v0, 0x0

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_21} :catch_47

    .line 1511
    :cond_21
    :goto_21
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0xc2

    const-string v2, "got 503 Service Unavailable, will retry later"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1493
    :cond_2b
    :try_start_2b
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    if-ge v0, v1, :cond_4c

    .line 1495
    const/16 v0, 0x1e

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    .line 1501
    :cond_33
    :goto_33
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    sget-object v1, Lcom/duoku/platform/download/Helpers;->RANDOM:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    .line 1502
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_46} :catch_47

    goto :goto_21

    .line 1505
    :catch_47
    move-exception v0

    .line 1508
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_21

    .line 1497
    :cond_4c
    :try_start_4c
    iget v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    if-le v0, v2, :cond_33

    .line 1499
    const v0, 0x15180

    iput v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->e:I
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_55} :catch_47

    goto :goto_33
.end method

.method private isDrmFile(Lcom/duoku/platform/download/DownloadThread$c;)Z
    .registers 4

    .prologue
    .line 830
    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logNetworkState()V
    .registers 1

    .prologue
    .line 1134
    return-void
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1691
    invoke-direct/range {p0 .. p8}, Lcom/duoku/platform/download/DownloadThread;->notifyThroughDatabase(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadInfo;->sendIntentIfRequested(I)V

    .line 1695
    return-void
.end method

.method private notifyThroughDatabase(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 1719
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1720
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    if-eqz p7, :cond_16

    .line 1726
    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :cond_16
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v2}, Lcom/baidu/bdgame/sdk/obf/nu;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1730
    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1732
    if-nez p2, :cond_52

    .line 1734
    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1745
    :goto_42
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1746
    return-void

    .line 1736
    :cond_52
    if-eqz p5, :cond_5f

    .line 1738
    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_42

    .line 1742
    :cond_5f
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_42
.end method

.method private openResponseEntity(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 1116
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 1118
    :catch_9
    move-exception v0

    .line 1120
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadThread;->logNetworkState()V

    .line 1121
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->getFinalStatusForHttpError(Lcom/duoku/platform/download/DownloadThread$c;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while getting entity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseContentRange(Lorg/apache/http/Header;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 439
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_1a

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 442
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_1a
    return-object v0
.end method

.method private processResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 1151
    iget-boolean v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    if-eqz v0, :cond_5

    .line 1198
    :goto_4
    return-void

    .line 1157
    :cond_5
    iget-object v11, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    monitor-enter v11

    .line 1160
    :try_start_8
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadThread;->readResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_60

    .line 1164
    :try_start_b
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v2, v0, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v3, v0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v4, p2, Lcom/duoku/platform/download/DownloadThread$a;->e:Ljava/lang/String;

    iget-object v5, p2, Lcom/duoku/platform/download/DownloadThread$a;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    .line 1165
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v7, v0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    iget-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :goto_29
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-boolean v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mIsPublicApi:Z

    .line 1164
    invoke-static/range {v1 .. v10}, Lcom/duoku/platform/download/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;
    :try_end_33
    .catch Lcom/duoku/platform/download/Helpers$GenerateSaveFileError; {:try_start_b .. :try_end_33} :catch_55
    .catchall {:try_start_b .. :try_end_33} :catchall_60

    .line 1173
    :try_start_33
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1175
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_4a} :catch_6d
    .catchall {:try_start_33 .. :try_end_4a} :catchall_60

    .line 1193
    :goto_4a
    :try_start_4a
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->updateDatabaseFromHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 1157
    monitor-exit v11
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_60

    .line 1197
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->checkConnectivity(Lcom/duoku/platform/download/DownloadThread$c;)V

    goto :goto_4

    .line 1165
    :cond_52
    const-wide/16 v8, 0x0

    goto :goto_29

    .line 1167
    :catch_55
    move-exception v0

    .line 1169
    :try_start_56
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    iget v2, v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;->mStatus:I

    iget-object v0, v0, Lcom/duoku/platform/download/Helpers$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1157
    :catchall_60
    move-exception v0

    monitor-exit v11
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_60

    throw v0

    .line 1179
    :cond_63
    :try_start_63
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6c} :catch_6d
    .catchall {:try_start_63 .. :try_end_6c} :catchall_60

    goto :goto_4a

    .line 1183
    :catch_6d
    move-exception v0

    .line 1185
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1186
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while opening destination file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_60
.end method

.method private processResponseHeadersForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    monitor-enter v1

    .line 638
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/download/DownloadThread;->readResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    .line 642
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_10} :catch_18
    .catchall {:try_start_6 .. :try_end_10} :catchall_34

    .line 652
    :try_start_10
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->updateDatabaseFromHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 636
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_34

    .line 656
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->checkConnectivity(Lcom/duoku/platform/download/DownloadThread$c;)V

    .line 657
    return-void

    .line 644
    :catch_18
    move-exception v0

    .line 646
    :try_start_19
    new-instance v2, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "while opening destination file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 636
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private readFromResponse(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1081
    :try_start_1
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    return v0

    .line 1083
    :catch_6
    move-exception v0

    .line 1085
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadThread;->logNetworkState()V

    .line 1086
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1087
    const-string v2, "current_bytes"

    iget v3, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    invoke-direct {p0, p2}, Lcom/duoku/platform/download/DownloadThread;->cannotResume(Lcom/duoku/platform/download/DownloadThread$a;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "while reading response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    new-instance v2, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v3, 0x1e9

    invoke-direct {v2, v3, v1, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1096
    :cond_50
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->getFinalStatusForHttpError(Lcom/duoku/platform/download/DownloadThread$c;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while reading response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1241
    const-string v0, "Content-Disposition"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_f

    .line 1244
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->e:Ljava/lang/String;

    .line 1246
    :cond_f
    const-string v0, "Content-Location"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_1d

    .line 1249
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->f:Ljava/lang/String;

    .line 1252
    :cond_1d
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 1254
    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_33

    .line 1257
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    .line 1260
    :cond_33
    const-string v0, "ETag"

    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_41

    .line 1263
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    .line 1265
    :cond_41
    const/4 v0, 0x0

    .line 1266
    const-string v2, "Transfer-Encoding"

    invoke-interface {p3, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1267
    if-eqz v2, :cond_4e

    .line 1269
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1271
    :cond_4e
    if-nez v0, :cond_70

    .line 1273
    const-string v2, "Content-Length"

    invoke-interface {p3, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1274
    const-string v3, "Content-Range"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 1275
    if-eqz v3, :cond_9f

    .line 1277
    invoke-direct {p0, v3}, Lcom/duoku/platform/download/DownloadThread;->parseContentRange(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v2

    .line 1278
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    .line 1279
    iput-object v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    .line 1306
    :cond_70
    :goto_70
    iget-object v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    if-nez v2, :cond_b2

    if-eqz v0, :cond_7e

    const-string v2, "chunked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    :cond_7e
    move v0, v1

    .line 1309
    :goto_7f
    if-nez v0, :cond_b7

    .line 1311
    :try_start_81
    iget-object v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_86} :catch_b5

    move-result-wide v2

    .line 1312
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b7

    .line 1323
    :goto_8d
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-boolean v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_b4

    if-eqz v1, :cond_b4

    .line 1325
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1ef

    const-string v2, "can\'t know size of download, giving up"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1281
    :cond_9f
    if-eqz v2, :cond_70

    .line 1283
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    .line 1284
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v3, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    goto :goto_70

    .line 1306
    :cond_b2
    const/4 v0, 0x0

    goto :goto_7f

    .line 1327
    :cond_b4
    return-void

    .line 1318
    :catch_b5
    move-exception v0

    goto :goto_8d

    :cond_b7
    move v1, v0

    goto :goto_8d
.end method

.method private reportProgress(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 920
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a()J

    move-result-wide v0

    .line 921
    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    iget v3, p2, Lcom/duoku/platform/download/DownloadThread$a;->g:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1fa0

    if-le v2, v3, :cond_44

    iget-wide v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->h:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-lez v2, :cond_44

    .line 931
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 932
    const-string v3, "current_bytes"

    iget v4, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    iget v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    iput v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->g:I

    .line 935
    iput-wide v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->h:J

    .line 937
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadInfo;->sendRunningRequested()V

    .line 939
    :cond_44
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1762
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1765
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 1767
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 1773
    :cond_18
    :goto_18
    return-object v0

    .line 1771
    :catch_19
    move-exception v0

    .line 1773
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private sendRequest(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 1531
    :try_start_0
    invoke-interface {p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_21

    move-result-object v0

    return-object v0

    .line 1533
    :catch_5
    move-exception v0

    .line 1535
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while trying to execute request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1537
    :catch_21
    move-exception v0

    .line 1539
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadThread;->logNetworkState()V

    .line 1540
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->getFinalStatusForHttpError(Lcom/duoku/platform/download/DownloadThread$c;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while trying to execute request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupDestinationFile(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1ec

    const/4 v6, 0x1

    .line 1582
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 1585
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1588
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, v7, v1}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1591
    :cond_17
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1594
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1595
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_52

    .line 1599
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1600
    if-nez v0, :cond_3b

    .line 1602
    const-string v0, "DownloadManager"

    const-string v1, "setupDestinationFile delete file failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    .line 1637
    :cond_3e
    :goto_3e
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_51

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->isDrmFile(Lcom/duoku/platform/download/DownloadThread$c;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1639
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->closeDestination(Lcom/duoku/platform/download/DownloadThread$c;)V

    .line 1641
    :cond_51
    return-void

    .line 1620
    :cond_52
    :try_start_52
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_5c} :catch_7c

    .line 1626
    long-to-int v0, v2

    iput v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    .line 1627
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    .line 1629
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    .line 1631
    :cond_73
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    .line 1632
    iput-boolean v6, p2, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    goto :goto_3e

    .line 1622
    :catch_7c
    move-exception v0

    .line 1624
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "while opening destination for resuming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private syncDestination(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 7

    .prologue
    .line 779
    const/4 v2, 0x0

    .line 782
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_16
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_9} :catch_50
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_89
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_c5
    .catchall {:try_start_1 .. :try_end_9} :catchall_e8

    .line 783
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_123
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_10} :catch_11f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_10} :catch_118
    .catchall {:try_start_9 .. :try_end_10} :catchall_115

    .line 803
    if-eqz v1, :cond_15

    .line 807
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_101
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_10b

    .line 819
    :cond_15
    :goto_15
    return-void

    .line 785
    :catch_16
    move-exception v0

    move-object v1, v2

    .line 787
    :goto_18
    :try_start_18
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_115

    .line 803
    if-eqz v1, :cond_15

    .line 807
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3d} :catch_47

    goto :goto_15

    .line 809
    :catch_3e
    move-exception v0

    .line 811
    const-string v1, "DownloadManager"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 813
    :catch_47
    move-exception v0

    .line 815
    const-string v1, "DownloadManager"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 789
    :catch_50
    move-exception v0

    .line 791
    :goto_51
    :try_start_51
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sync failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_e8

    .line 803
    if-eqz v2, :cond_15

    .line 807
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_80

    goto :goto_15

    .line 809
    :catch_77
    move-exception v0

    .line 811
    const-string v1, "DownloadManager"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 813
    :catch_80
    move-exception v0

    .line 815
    const-string v1, "DownloadManager"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 793
    :catch_89
    move-exception v0

    .line 795
    :goto_8a
    :try_start_8a
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException trying to sync "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8a .. :try_end_aa} :catchall_e8

    .line 803
    if-eqz v2, :cond_15

    .line 807
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b1
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_af} :catch_bb

    goto/16 :goto_15

    .line 809
    :catch_b1
    move-exception v0

    .line 811
    const-string v1, "DownloadManager"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 813
    :catch_bb
    move-exception v0

    .line 815
    const-string v1, "DownloadManager"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 797
    :catch_c5
    move-exception v0

    .line 799
    :goto_c6
    :try_start_c6
    const-string v1, "DownloadManager"

    const-string v3, "exception while syncing file: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_e8

    .line 803
    if-eqz v2, :cond_15

    .line 807
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d4
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_d2} :catch_de

    goto/16 :goto_15

    .line 809
    :catch_d4
    move-exception v0

    .line 811
    const-string v1, "DownloadManager"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 813
    :catch_de
    move-exception v0

    .line 815
    const-string v1, "DownloadManager"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 802
    :catchall_e8
    move-exception v0

    .line 803
    :goto_e9
    if-eqz v2, :cond_ee

    .line 807
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_ee} :catch_f8

    .line 818
    :cond_ee
    :goto_ee
    throw v0

    .line 809
    :catch_ef
    move-exception v1

    .line 811
    const-string v2, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee

    .line 813
    :catch_f8
    move-exception v1

    .line 815
    const-string v2, "DownloadManager"

    const-string v3, "exception while closing file: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee

    .line 809
    :catch_101
    move-exception v0

    .line 811
    const-string v1, "DownloadManager"

    const-string v2, "IOException while closing synced file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 813
    :catch_10b
    move-exception v0

    .line 815
    const-string v1, "DownloadManager"

    const-string v2, "exception while closing file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 802
    :catchall_115
    move-exception v0

    move-object v2, v1

    goto :goto_e9

    .line 797
    :catch_118
    move-exception v0

    move-object v2, v1

    goto :goto_c6

    .line 793
    :catch_11b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8a

    .line 789
    :catch_11f
    move-exception v0

    move-object v2, v1

    goto/16 :goto_51

    .line 785
    :catch_123
    move-exception v0

    goto/16 :goto_18
.end method

.method private transferData(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    .line 706
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/download/DownloadThread;->readFromResponse(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)I

    move-result v0

    .line 707
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->handleEndOfStream(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 710
    return-void

    .line 713
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    .line 714
    invoke-direct {p0, p1, p3, v0}, Lcom/duoku/platform/download/DownloadThread;->writeDataToDestination(Lcom/duoku/platform/download/DownloadThread$c;[BI)V

    .line 715
    iget v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->reportProgress(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->checkPausedOrCanceled(Lcom/duoku/platform/download/DownloadThread$c;)V

    goto :goto_0
.end method

.method private transferDataForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 579
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/download/DownloadThread;->readFromResponse(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)I

    move-result v0

    .line 580
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->handleEndOfStreamForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 583
    return-void

    .line 585
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    .line 586
    invoke-direct {p0, p1, p3, v0}, Lcom/duoku/platform/download/DownloadThread;->writeDataToDestination(Lcom/duoku/platform/download/DownloadThread$c;[BI)V

    .line 587
    iget v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadThread;->reportProgress(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->checkPausedOrCanceled(Lcom/duoku/platform/download/DownloadThread$c;)V

    goto :goto_0
.end method

.method private transferToDrm(Lcom/duoku/platform/download/DownloadThread$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 855
    return-void
.end method

.method private updateDatabaseFromHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1211
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1212
    const-string v1, "_data"

    iget-object v2, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 1215
    const-string v1, "etag"

    iget-object v2, p2, Lcom/duoku/platform/download/DownloadThread$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_18
    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1219
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_23
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v2, v2, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1224
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1225
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-object v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 85
    if-nez v0, :cond_8

    .line 87
    const-string v0, "AndroidDownloadManager"

    .line 89
    :cond_8
    return-object v0
.end method

.method private wapDownload(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lcom/baidu/android/common/net/ProxyHttpClient;Lorg/apache/http/client/methods/HttpGet;[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;,
            Lcom/duoku/platform/download/DownloadThread$b;
        }
    .end annotation

    .prologue
    .line 482
    iget v0, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    int-to-long v0, v0

    .line 483
    const-wide/32 v2, 0x4ac00

    add-long v4, v0, v2

    .line 486
    const-string v2, "Range"

    invoke-virtual {p4, v2}, Lorg/apache/http/client/methods/HttpGet;->removeHeaders(Ljava/lang/String;)V

    .line 488
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, p1, p3, p4}, Lcom/duoku/platform/download/DownloadThread;->sendRequest(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_80

    .line 496
    const-string v1, "Content-Range"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_76

    .line 499
    invoke-direct {p0, v1}, Lcom/duoku/platform/download/DownloadThread;->parseContentRange(Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    .line 501
    iput-object v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->d:Ljava/lang/String;

    .line 518
    :goto_55
    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/download/DownloadThread;->processResponseHeaders(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/duoku/platform/download/DownloadThread$a;->c:Z

    .line 521
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/download/DownloadThread;->openResponseEntity(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 522
    invoke-direct {p0, p1, p2, p5, v0}, Lcom/duoku/platform/download/DownloadThread;->transferDataForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)V

    .line 524
    const-wide/16 v0, 0x1

    add-long v2, v4, v0

    .line 525
    const-wide/32 v0, 0x4ac00

    add-long/2addr v0, v4

    .line 532
    :cond_6a
    :goto_6a
    iget v4, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v6, v6, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_84

    .line 558
    return-void

    .line 505
    :cond_76
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1ef

    const-string v2, "can\'t know size of download, giving up"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 511
    :cond_80
    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/download/DownloadThread;->handleExceptionalStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    goto :goto_55

    .line 538
    :cond_84
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p1, Lcom/duoku/platform/download/DownloadThread$c;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, p1, p3, v4}, Lcom/duoku/platform/download/DownloadThread;->sendRequest(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 542
    invoke-direct {p0, p1, p2, v2}, Lcom/duoku/platform/download/DownloadThread;->handleExceptionalStatus(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    .line 543
    invoke-direct {p0, p1, p2, v2}, Lcom/duoku/platform/download/DownloadThread;->processResponseHeadersForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;Lorg/apache/http/HttpResponse;)V

    .line 544
    invoke-direct {p0, p1, v2}, Lcom/duoku/platform/download/DownloadThread;->openResponseEntity(Lcom/duoku/platform/download/DownloadThread$c;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v2

    .line 545
    invoke-direct {p0, p1, p2, p5, v2}, Lcom/duoku/platform/download/DownloadThread;->transferDataForWap(Lcom/duoku/platform/download/DownloadThread$c;Lcom/duoku/platform/download/DownloadThread$a;[BLjava/io/InputStream;)V

    .line 547
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 548
    const-wide/32 v4, 0x4ac00

    add-long/2addr v0, v4

    .line 549
    iget-object v4, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v4, v4, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    iget v6, p2, Lcom/duoku/platform/download/DownloadThread$a;->a:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x4ac00

    cmp-long v4, v4, v6

    if-gez v4, :cond_6a

    .line 551
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_6a
.end method

.method private writeDataToDestination(Lcom/duoku/platform/download/DownloadThread$c;[BI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duoku/platform/download/DownloadThread$d;
        }
    .end annotation

    .prologue
    .line 959
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    if-nez v0, :cond_e

    .line 961
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    .line 963
    :cond_e
    iget-object v0, p1, Lcom/duoku/platform/download/DownloadThread$c;->b:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 964
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget v0, v0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_23

    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->isDrmFile(Lcom/duoku/platform/download/DownloadThread$c;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 966
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadThread;->closeDestination(Lcom/duoku/platform/download/DownloadThread$c;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    .line 968
    :cond_23
    return-void

    .line 970
    :catch_24
    move-exception v0

    .line 972
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/duoku/platform/download/DownloadInfo;->isOnCache()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 974
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1000

    invoke-static {v1, v2, v3}, Lcom/duoku/platform/download/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    :cond_37
    iget-object v1, p1, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoku/platform/download/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    .line 986
    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-gez v1, :cond_60

    .line 988
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v2, 0x1f2

    const-string v3, "insufficient space while writing destination file"

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 979
    :cond_50
    invoke-static {}, Lcom/duoku/platform/download/Helpers;->isExternalMediaMounted()Z

    move-result v1

    if-nez v1, :cond_37

    .line 981
    new-instance v0, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v1, 0x1f3

    const-string v2, "external media not mounted while writing destination file"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;)V

    throw v0

    .line 990
    :cond_60
    new-instance v1, Lcom/duoku/platform/download/DownloadThread$d;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "while writing destination file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/duoku/platform/download/DownloadThread$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x1eb

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 216
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 218
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadInfo;->sendStartRequested()V

    .line 219
    new-instance v8, Lcom/duoku/platform/download/DownloadThread$c;

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    invoke-direct {v8, v0}, Lcom/duoku/platform/download/DownloadThread$c;-><init>(Lcom/duoku/platform/download/DownloadInfo;)V

    .line 226
    :try_start_16
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 227
    const/4 v2, 0x1

    const-string v4, "DownloadManager"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_26
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_16 .. :try_end_26} :catch_1c9
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_26} :catch_1c0
    .catchall {:try_start_16 .. :try_end_26} :catchall_17a

    move-result-object v2

    .line 228
    :try_start_27
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 235
    new-instance v4, Lcom/baidu/android/common/net/ProxyHttpClient;

    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/baidu/android/common/net/ProxyHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_35
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_27 .. :try_end_35} :catch_1cd
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_35} :catch_1c5
    .catchall {:try_start_27 .. :try_end_35} :catchall_1b5

    move v0, v10

    .line 241
    :goto_36
    if-eqz v0, :cond_74

    .line 267
    :try_start_38
    invoke-direct {p0, v8}, Lcom/duoku/platform/download/DownloadThread;->finalizeDestinationFile(Lcom/duoku/platform/download/DownloadThread$c;)V
    :try_end_3b
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_38 .. :try_end_3b} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_118
    .catchall {:try_start_38 .. :try_end_3b} :catchall_1b9

    .line 268
    const/16 v1, 0xc8

    .line 294
    const-string v0, "DownloadInfo"

    const-string v3, "download thread finished!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_49

    .line 297
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    :cond_49
    if-eqz v4, :cond_4e

    .line 302
    invoke-virtual {v4}, Lcom/baidu/android/common/net/ProxyHttpClient;->close()V

    .line 305
    :cond_4e
    invoke-direct {p0, v8, v1}, Lcom/duoku/platform/download/DownloadThread;->cleanupDestination(Lcom/duoku/platform/download/DownloadThread$c;I)V

    .line 307
    iget-boolean v2, v8, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    iget v3, v8, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    iget v4, v8, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    iget-boolean v5, v8, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    iget-object v6, v8, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    iget-object v7, v8, Lcom/duoku/platform/download/DownloadThread$c;->g:Ljava/lang/String;

    iget-object v8, v8, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/duoku/platform/download/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    .line 310
    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iput-boolean v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    .line 315
    :cond_73
    :goto_73
    return-void

    .line 243
    :cond_74
    :try_start_74
    const-string v3, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Initiating request for download "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v12, v7, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, v8, Lcom/duoku/platform/download/DownloadThread$c;->i:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v6, "User-Agent"

    const-string v7, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_74 .. :try_end_9a} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_9a} :catch_118
    .catchall {:try_start_74 .. :try_end_9a} :catchall_1b9

    .line 248
    :try_start_9a
    invoke-direct {p0, v8, v4, v3}, Lcom/duoku/platform/download/DownloadThread;->executeDownload(Lcom/duoku/platform/download/DownloadThread$c;Lcom/baidu/android/common/net/ProxyHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_9d
    .catch Lcom/duoku/platform/download/DownloadThread$b; {:try_start_9a .. :try_end_9d} :catch_a2
    .catchall {:try_start_9a .. :try_end_9d} :catchall_113

    .line 258
    :try_start_9d
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_a0
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_9d .. :try_end_a0} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_118
    .catchall {:try_start_9d .. :try_end_a0} :catchall_1b9

    move v0, v5

    .line 259
    goto :goto_36

    .line 251
    :catch_a2
    move-exception v6

    .line 254
    :try_start_a3
    invoke-virtual {v6}, Lcom/duoku/platform/download/DownloadThread$b;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_113

    .line 258
    :try_start_a6
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_a9
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_a6 .. :try_end_a9} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_118
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_1b9

    goto :goto_36

    .line 270
    :catch_aa
    move-exception v0

    move-object v3, v4

    .line 274
    :goto_ac
    :try_start_ac
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Aborting request for download "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v6, v6, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadThread$d;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v4, "DownloadManager"

    const-string v5, "download error:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    iget v1, v0, Lcom/duoku/platform/download/DownloadThread$d;->a:I
    :try_end_db
    .catchall {:try_start_ac .. :try_end_db} :catchall_1bc

    .line 294
    const-string v0, "DownloadInfo"

    const-string v4, "download thread finished!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_e7

    .line 297
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    :cond_e7
    if-eqz v3, :cond_ec

    .line 302
    invoke-virtual {v3}, Lcom/baidu/android/common/net/ProxyHttpClient;->close()V

    .line 305
    :cond_ec
    invoke-direct {p0, v8, v1}, Lcom/duoku/platform/download/DownloadThread;->cleanupDestination(Lcom/duoku/platform/download/DownloadThread$c;I)V

    .line 307
    iget-boolean v2, v8, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    iget v3, v8, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    iget v4, v8, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    iget-boolean v5, v8, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    iget-object v6, v8, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    iget-object v7, v8, Lcom/duoku/platform/download/DownloadThread$c;->g:Ljava/lang/String;

    iget-object v8, v8, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/duoku/platform/download/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    .line 310
    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iput-boolean v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    goto/16 :goto_73

    .line 257
    :catchall_113
    move-exception v0

    .line 258
    :try_start_114
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 260
    throw v0
    :try_end_118
    .catch Lcom/duoku/platform/download/DownloadThread$d; {:try_start_114 .. :try_end_118} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_118} :catch_118
    .catchall {:try_start_114 .. :try_end_118} :catchall_1b9

    .line 282
    :catch_118
    move-exception v0

    .line 285
    :goto_119
    :try_start_119
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception for id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iget-wide v6, v6, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "DownloadManager"

    const-string v5, "download error:"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_142
    .catchall {:try_start_119 .. :try_end_142} :catchall_1b9

    .line 294
    const-string v0, "DownloadInfo"

    const-string v3, "download thread finished!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_14e

    .line 297
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    :cond_14e
    if-eqz v4, :cond_153

    .line 302
    invoke-virtual {v4}, Lcom/baidu/android/common/net/ProxyHttpClient;->close()V

    .line 305
    :cond_153
    invoke-direct {p0, v8, v1}, Lcom/duoku/platform/download/DownloadThread;->cleanupDestination(Lcom/duoku/platform/download/DownloadThread$c;I)V

    .line 307
    iget-boolean v2, v8, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    iget v3, v8, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    iget v4, v8, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    iget-boolean v5, v8, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    iget-object v6, v8, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    iget-object v7, v8, Lcom/duoku/platform/download/DownloadThread$c;->g:Ljava/lang/String;

    iget-object v8, v8, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/duoku/platform/download/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    .line 310
    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_73

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iput-boolean v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    goto/16 :goto_73

    .line 293
    :catchall_17a
    move-exception v0

    move-object v9, v0

    move-object v2, v3

    move-object v4, v3

    .line 294
    :goto_17e
    const-string v0, "DownloadInfo"

    const-string v3, "download thread finished!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_18a

    .line 297
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    :cond_18a
    if-eqz v4, :cond_18f

    .line 302
    invoke-virtual {v4}, Lcom/baidu/android/common/net/ProxyHttpClient;->close()V

    .line 305
    :cond_18f
    invoke-direct {p0, v8, v1}, Lcom/duoku/platform/download/DownloadThread;->cleanupDestination(Lcom/duoku/platform/download/DownloadThread$c;I)V

    .line 307
    iget-boolean v2, v8, Lcom/duoku/platform/download/DownloadThread$c;->d:Z

    iget v3, v8, Lcom/duoku/platform/download/DownloadThread$c;->e:I

    iget v4, v8, Lcom/duoku/platform/download/DownloadThread$c;->f:I

    iget-boolean v5, v8, Lcom/duoku/platform/download/DownloadThread$c;->h:Z

    iget-object v6, v8, Lcom/duoku/platform/download/DownloadThread$c;->a:Ljava/lang/String;

    iget-object v7, v8, Lcom/duoku/platform/download/DownloadThread$c;->g:Ljava/lang/String;

    iget-object v8, v8, Lcom/duoku/platform/download/DownloadThread$c;->c:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/duoku/platform/download/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    .line 310
    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_1b4

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadThread;->mInfo:Lcom/duoku/platform/download/DownloadInfo;

    iput-boolean v10, v0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    .line 314
    :cond_1b4
    throw v9

    .line 293
    :catchall_1b5
    move-exception v0

    move-object v9, v0

    move-object v4, v3

    goto :goto_17e

    :catchall_1b9
    move-exception v0

    move-object v9, v0

    goto :goto_17e

    :catchall_1bc
    move-exception v0

    move-object v9, v0

    move-object v4, v3

    goto :goto_17e

    .line 282
    :catch_1c0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_119

    :catch_1c5
    move-exception v0

    move-object v4, v3

    goto/16 :goto_119

    .line 270
    :catch_1c9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_ac

    :catch_1cd
    move-exception v0

    goto/16 :goto_ac
.end method
