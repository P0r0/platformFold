.class public Lcom/huanju/data/content/raw/utility/HjGameResControl;
.super Ljava/lang/Object;


# static fields
.field private static mControl:Lcom/huanju/data/content/raw/utility/HjGameResControl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huanju/data/content/raw/utility/HjGameResControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huanju/data/content/raw/utility/HjGameResControl;
    .registers 2

    sget-object v0, Lcom/huanju/data/content/raw/utility/HjGameResControl;->mControl:Lcom/huanju/data/content/raw/utility/HjGameResControl;

    if-nez v0, :cond_b

    new-instance v0, Lcom/huanju/data/content/raw/utility/HjGameResControl;

    invoke-direct {v0, p0}, Lcom/huanju/data/content/raw/utility/HjGameResControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/data/content/raw/utility/HjGameResControl;->mControl:Lcom/huanju/data/content/raw/utility/HjGameResControl;

    :cond_b
    sget-object v0, Lcom/huanju/data/content/raw/utility/HjGameResControl;->mControl:Lcom/huanju/data/content/raw/utility/HjGameResControl;

    return-object v0
.end method


# virtual methods
.method public getUpdateInfo(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;
    .registers 14

    const-wide/16 v10, 0x0

    new-instance v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    iget-object v1, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    iget-wide v4, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    iget-wide v6, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    iget-wide v8, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    invoke-direct/range {v0 .. v9}, Lcom/huanju/data/content/raw/utility/HjGameResInfo;-><init>(Ljava/lang/String;JJJJ)V

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjGameResControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/data/database/GameResUpdateControl;->a(Landroid/content/Context;)Lcom/huanju/data/database/GameResUpdateControl;

    move-result-object v1

    iget-object v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huanju/data/database/GameResUpdateControl;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huanju/data/database/GameResUpdateControl;->a(Ljava/lang/String;)Lcom/huanju/data/content/raw/utility/HjGameResInfo;

    move-result-object v2

    iget-object v3, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iput-object v3, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iget-wide v4, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    iget-wide v6, v2, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    iget-wide v4, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    iget-wide v6, v2, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyCnt:J

    iget-wide v4, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    iget-wide v6, v2, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    iget-wide v4, p1, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    iget-wide v2, v2, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    iget-wide v2, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_5e

    iget-wide v2, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_5e

    iget-wide v2, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_5e

    iget-wide v2, v0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_61

    :cond_5e
    invoke-virtual {v1, v0}, Lcom/huanju/data/database/GameResUpdateControl;->b(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)V

    :cond_61
    :goto_61
    return-object v0

    :cond_62
    invoke-virtual {v1, p1}, Lcom/huanju/data/database/GameResUpdateControl;->a(Lcom/huanju/data/content/raw/utility/HjGameResInfo;)V

    move-object v0, p1

    goto :goto_61
.end method
