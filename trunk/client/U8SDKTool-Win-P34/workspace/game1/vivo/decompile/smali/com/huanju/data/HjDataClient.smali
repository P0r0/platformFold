.class public Lcom/huanju/data/HjDataClient;
.super Ljava/lang/Object;


# static fields
.field private static final INFO_REQUEST_TYPE_NEWS:I = 0x3

.field private static final INFO_REQUEST_TYPE_REVIEWS:I = 0x2

.field private static final INFO_REQUEST_TYPE_STRATEGY:I = 0x1

.field private static final INFO_SEARCH_TYPE_NEWS:I = 0x3

.field private static final INFO_SEARCH_TYPE_REVIEWS:I = 0x2

.field private static final INFO_SEARCH_TYPE_STRATEGY:I = 0x1

.field private static final INFO_SEARCH_TYPE_VIDEO:I = 0x4

.field private static final LIST_TYPE_IS_THUMB:I = 0x1

.field private static final LIST_TYPE_NOT_THUMB:I = 0x0

.field public static final VIDEO_TYPE_ALL:I = 0x0

.field public static final VIDEO_TYPE_COMMON:I = 0x1

.field public static final VIDEO_TYPE_FLASH:I = 0x2

.field private static final log:Lcom/huanju/data/a/b;

.field private static sHjDataClient:Lcom/huanju/data/HjDataClient;


# instance fields
.field private mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

.field private mContext:Landroid/content/Context;

.field private mMonitorTransactionProxy:Lcom/huanju/data/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjDataClient"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/HjDataClient;->log:Lcom/huanju/data/a/b;

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/HjDataClient;->sHjDataClient:Lcom/huanju/data/HjDataClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/HjDataClient;->init()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Huanju Data SDK Version:2.1.2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;
    .registers 2

    sget-object v0, Lcom/huanju/data/HjDataClient;->sHjDataClient:Lcom/huanju/data/HjDataClient;

    if-nez v0, :cond_b

    new-instance v0, Lcom/huanju/data/HjDataClient;

    invoke-direct {v0, p0}, Lcom/huanju/data/HjDataClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/data/HjDataClient;->sHjDataClient:Lcom/huanju/data/HjDataClient;

    :cond_b
    sget-object v0, Lcom/huanju/data/HjDataClient;->sHjDataClient:Lcom/huanju/data/HjDataClient;

    return-object v0
.end method

.method private init()V
    .registers 5

    sget-object v0, Lcom/huanju/data/HjDataClient;->log:Lcom/huanju/data/a/b;

    const-string v1, "==========HjDataClient init=========="

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/data/a/k;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    if-nez v0, :cond_25

    new-instance v0, Lcom/huanju/data/b/b;

    iget-object v1, p0, Lcom/huanju/data/HjDataClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    invoke-virtual {v2, v0, v1}, Lcom/huanju/data/b/b;->a(J)V

    :cond_25
    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-nez v0, :cond_32

    new-instance v0, Lcom/huanju/data/content/raw/f;

    iget-object v1, p0, Lcom/huanju/data/HjDataClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/content/raw/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    :cond_32
    return-void
.end method

.method private static releaseStaticSingleInstance()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/HjDataClient;->sHjDataClient:Lcom/huanju/data/HjDataClient;

    return-void
.end method


# virtual methods
.method public onDownloadEvent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    invoke-virtual {v0, p1}, Lcom/huanju/data/b/b;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onMainActivityCreate()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 3

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    invoke-virtual {v0}, Lcom/huanju/data/b/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/HjDataClient;->mMonitorTransactionProxy:Lcom/huanju/data/b/b;

    :cond_c
    invoke-static {}, Lcom/huanju/data/HjDataClient;->releaseStaticSingleInstance()V

    sget-object v0, Lcom/huanju/data/HjDataClient;->log:Lcom/huanju/data/a/b;

    const-string v1, "==========HjDataClient close=========="

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public requestAlbumList(Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestAlbumListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestBatchNewsList(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;II)V

    :cond_a
    return-void
.end method

.method public requestBatchReviewsList(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;II)V

    :cond_a
    return-void
.end method

.method public requestBatchStrategyList(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchInfoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;II)V

    :cond_a
    return-void
.end method

.method public requestBatchVideoList(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjBatchVideoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/HjRequestBatchListListener;Ljava/util/ArrayList;I)V

    :cond_9
    return-void
.end method

.method public requestGalleryDetail(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestGalleryList(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestGalleryListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestInfoDetail(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoDetail;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestNewsAlbumList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_e
    return-void
.end method

.method public requestNewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_13
    return-void
.end method

.method public requestNewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_14
    return-void
.end method

.method public requestRecomStrate(Lcom/huanju/data/content/raw/listener/IHjRequestRecommStrateListener;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommStrateListener;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public requestRecomVideo(Lcom/huanju/data/content/raw/listener/IHjRequestRecomVideoListener;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecomVideoListener;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public requestRecommendList(Lcom/huanju/data/content/raw/listener/IHjRequestRecommendListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 6

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestRecommendListListener;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestResourceStatus(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/utility/HjGameResInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public requestReviewsAlbumList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_e
    return-void
.end method

.method public requestReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_13
    return-void
.end method

.method public requestReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_14
    return-void
.end method

.method public requestSimplifyNewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;ILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, v6

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public requestSimplifyReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;ILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, v6

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public requestSimplifyStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;ILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v2

    move v7, p4

    move v8, v2

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public requestSimplifyVideoList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;ILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, v5

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_11
    return-void
.end method

.method public requestStrategyAlbumList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_e
    return-void
.end method

.method public requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_13
    return-void
.end method

.method public requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_14
    return-void
.end method

.method public requestVideoAlbumList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_e
    return-void
.end method

.method public requestVideoDetail(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoDetail;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemDetailListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_9
    return-void
.end method

.method public requestVideoList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_11
    return-void
.end method

.method public requestVideoList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public requestVote(Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V
    .registers 5

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestVoteListener;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V

    :cond_9
    return-void
.end method

.method public searchNewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x3

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_f
    return-void
.end method

.method public searchNewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x3

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public searchReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x2

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_f
    return-void
.end method

.method public searchReviewsList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public searchStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_f
    return-void
.end method

.method public searchStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/info/HjInfoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->a(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method

.method public searchVideoList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x4

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_f
    return-void
.end method

.method public searchVideoList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/huanju/data/content/raw/HjRequestFrom;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/huanju/data/HjDataClient;->mContentTransactionProxy:Lcom/huanju/data/content/raw/f;

    const/4 v2, 0x4

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/data/content/raw/f;->b(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :cond_12
    return-void
.end method
