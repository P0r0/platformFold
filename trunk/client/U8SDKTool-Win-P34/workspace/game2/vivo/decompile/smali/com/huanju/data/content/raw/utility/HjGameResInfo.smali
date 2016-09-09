.class public Lcom/huanju/data/content/raw/utility/HjGameResInfo;
.super Ljava/lang/Object;


# instance fields
.field public mNewsCnt:J

.field public mNewsTotalCnt:J

.field public mPkgName:Ljava/lang/String;

.field public mReviewCnt:J

.field public mReviewTotalCnt:J

.field public mStrategyCnt:J

.field public mStrategyTotalCnt:J

.field public mVideoCnt:J

.field public mVideoTotalCnt:J


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJ)V
    .registers 14

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    iput-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    iput-object p1, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    iput-wide p4, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    iput-wide p6, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    iput-wide p8, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HjGameResInfo:mPkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mNewsCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mStrategyCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mReviewCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mVideoCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mNewsTotalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mNewsTotalCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mStrategyTotalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mStrategyTotalCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mReviewTotalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mReviewTotalCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mVideoTotalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/utility/HjGameResInfo;->mVideoTotalCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
