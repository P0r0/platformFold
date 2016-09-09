.class public final Lcom/duoku/platform/download/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadInfo$Reader;
    }
.end annotation


# static fields
.field public static final EXTRA_CURRENT_SIZE:Ljava/lang/String; = "current_size"

.field public static final EXTRA_DEST:Ljava/lang/String; = "dest"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final EXTRA_MARK:Ljava/lang/String; = "mark"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_SUCCESSFUL:Ljava/lang/String; = "successful"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_TOTAL_SIZE:Ljava/lang/String; = "total_size"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3


# instance fields
.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public volatile mHasActiveThread:Z

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIsPublicApi:Z

.field public mLastMod:J

.field private mMarkData:Ljava/lang/String;

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:Z

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mPauseNotiModifyFlag:Z

.field public mRedirectCount:I

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field private mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mPauseNotiModifyFlag:Z

    .line 351
    iput v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 422
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadInfo;->mContext:Landroid/content/Context;

    .line 423
    iput-object p2, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    .line 424
    sget-object v0, Lcom/duoku/platform/download/Helpers;->RANDOM:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mFuzz:I

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;Lcom/duoku/platform/download/DownloadInfo;)V
    .registers 4

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;)V

    return-void
.end method

.method static synthetic access$1(Lcom/duoku/platform/download/DownloadInfo;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mMarkData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/duoku/platform/download/DownloadInfo;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadInfo;->mMarkData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/duoku/platform/download/DownloadInfo;)Ljava/util/List;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .registers 4

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v0

    .line 739
    iget v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    .line 741
    const/4 v0, 0x6

    .line 744
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/duoku/platform/download/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v0

    goto :goto_a
.end method

.method private checkSizeAllowedForNetwork(I)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 780
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 802
    :cond_9
    :goto_9
    return v4

    .line 784
    :cond_a
    if-eq p1, v4, :cond_9

    .line 788
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/nu;->d()Ljava/lang/Long;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_1e

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_9

    .line 794
    :cond_1e
    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v0, :cond_9

    .line 796
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/nu;->e()Ljava/lang/Long;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto :goto_9
.end method

.method private fillIntentData(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 501
    const-string v0, "url"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v0, "id"

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 503
    const-string v0, "mark"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mMarkData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v0, "dest"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 507
    const-string v0, "title"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    :goto_2b
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 515
    const-string v0, "current_size"

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 516
    const-string v0, "total_size"

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 518
    :cond_41
    return-void

    .line 511
    :cond_42
    const-string v0, "title"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b
.end method

.method private isReadyToStart(J)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 604
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    if-ne v2, v1, :cond_7

    .line 640
    :cond_6
    :goto_6
    return v0

    .line 609
    :cond_7
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_30

    .line 633
    iget v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 635
    iget-boolean v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v1, :cond_6

    .line 637
    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    goto :goto_6

    :sswitch_1b
    move v0, v1

    .line 621
    goto :goto_6

    .line 625
    :sswitch_1d
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    if-ne v2, v1, :cond_6

    move v0, v1

    goto :goto_6

    .line 629
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/download/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 609
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_1b
        0xbe -> :sswitch_1b
        0xc0 -> :sswitch_1b
        0xc1 -> :sswitch_1b
        0xc2 -> :sswitch_25
        0xc3 -> :sswitch_1d
        0xc4 -> :sswitch_1d
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .registers 2

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mAllowRoaming:Z

    return v0
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .registers 3

    .prologue
    .line 757
    packed-switch p1, :pswitch_data_a

    .line 766
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 760
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 763
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 757
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public checkCanUseNetwork()I
    .registers 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/nu;->b()Ljava/lang/Integer;

    move-result-object v0

    .line 670
    if-nez v0, :cond_a

    .line 672
    const/4 v0, 0x2

    .line 678
    :goto_9
    return v0

    .line 674
    :cond_a
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1}, Lcom/baidu/bdgame/sdk/obf/nu;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 676
    const/4 v0, 0x5

    goto :goto_9

    .line 678
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v0

    goto :goto_9
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 877
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/duoku/platform/download/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 706
    packed-switch p1, :pswitch_data_16

    .line 724
    const-string v0, "unknown error with network connectivity"

    :goto_5
    return-object v0

    .line 709
    :pswitch_6
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_5

    .line 712
    :pswitch_9
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_5

    .line 715
    :pswitch_c
    const-string v0, "no network connection available"

    goto :goto_5

    .line 718
    :pswitch_f
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_5

    .line 721
    :pswitch_12
    const-string v0, "download was requested to not use the current network type"

    goto :goto_5

    .line 706
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 867
    sget-object v0, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 651
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v2}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 659
    :cond_a
    :goto_a
    return v0

    .line 655
    :cond_b
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_a

    move v0, v1

    .line 657
    goto :goto_a
.end method

.method public isOnCache()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 857
    iget v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-eq v1, v0, :cond_10

    iget v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    const/4 v0, 0x0

    :cond_10
    return v0
.end method

.method public logVerboseInfo()V
    .registers 5

    .prologue
    .line 885
    const-string v0, "DownloadManager"

    const-string v1, "Service adding new entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID      : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI     : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NO_INTEG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mNoIntegrity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HINT    : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FILENAME: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MIMETYPE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DESTINAT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VISIBILI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONTROL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STATUS  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAILED_C: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RETRY_AF: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mRetryAfter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REDIRECT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mRedirectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LAST_MOD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mLastMod:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PACKAGE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CLASS   : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "COOKIES : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mCookies:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AGENT   : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REFERER : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mReferer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TOTAL   : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CURRENT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ETAG    : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SCANNED : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mMediaScanned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETED : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MEDIAPROVIDER_URI : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method nextAction(J)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 926
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v2}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 928
    const-wide/16 v0, -0x1

    .line 939
    :cond_c
    :goto_c
    return-wide v0

    .line 930
    :cond_d
    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    const/16 v3, 0xc2

    if-ne v2, v3, :cond_c

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/download/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    .line 935
    cmp-long v4, v2, p1

    if-lez v4, :cond_c

    .line 939
    sub-long v0, v2, p1

    goto :goto_c
.end method

.method notifyPauseDueToSize(Z)V
    .registers 2

    .prologue
    .line 970
    return-void
.end method

.method public restartTime(J)J
    .registers 8

    .prologue
    .line 576
    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_5

    .line 587
    :goto_4
    return-wide p1

    .line 580
    :cond_5
    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_11

    .line 582
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_4

    .line 587
    :cond_11
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mLastMod:J

    const-wide/16 v2, 0x2710

    add-long p1, v0, v2

    goto :goto_4
.end method

.method public sendIntentIfRequested(I)V
    .registers 5

    .prologue
    const/16 v2, 0x1ea

    .line 460
    const/4 v0, 0x0

    .line 462
    invoke-static {p1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    .line 463
    if-eqz v1, :cond_21

    .line 465
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    const-string v1, "successful"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    :cond_16
    :goto_16
    if-eqz v0, :cond_20

    .line 493
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo;->fillIntentData(Landroid/content/Intent;)V

    .line 494
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Landroid/content/Intent;)V

    .line 497
    :cond_20
    return-void

    .line 468
    :cond_21
    invoke-static {p1}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eq p1, v2, :cond_3c

    .line 470
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    const-string v1, "successful"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_16

    .line 474
    :cond_3c
    const/16 v1, 0xc2

    if-eq p1, v1, :cond_48

    const/16 v1, 0xc3

    if-eq p1, v1, :cond_48

    const/16 v1, 0xc4

    if-ne p1, v1, :cond_55

    .line 479
    :cond_48
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_16

    .line 482
    :cond_55
    const/16 v1, 0xc1

    if-ne p1, v1, :cond_66

    .line 484
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_16

    .line 487
    :cond_66
    if-ne p1, v2, :cond_16

    .line 489
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public sendRunningRequested()V
    .registers 11

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mId:J

    .line 538
    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mUri:Ljava/lang/String;

    .line 539
    iget-object v3, p0, Lcom/duoku/platform/download/DownloadInfo;->mHint:Ljava/lang/String;

    .line 540
    iget-object v4, p0, Lcom/duoku/platform/download/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 541
    iget-object v5, p0, Lcom/duoku/platform/download/DownloadInfo;->mMarkData:Ljava/lang/String;

    .line 542
    iget-wide v6, p0, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    .line 543
    iget-wide v8, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    .line 544
    invoke-static/range {v0 .. v9}, Lcom/duoku/platform/download/DownloadHelper;->notifyDownloadProgress(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 548
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo;->fillIntentData(Landroid/content/Intent;)V

    .line 551
    const-string v1, "total_size"

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 552
    const-string v1, "current_size"

    iget-wide v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 553
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method public sendStartRequested()V
    .registers 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DownloadInfo;->fillIntentData(Landroid/content/Intent;)V

    .line 527
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Landroid/content/Intent;)V

    .line 528
    return-void
.end method

.method shouldScanFile()Z
    .registers 3

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mMediaScanned:Z

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mDestination:I

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/duoku/platform/download/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method startIfReady(J)V
    .registers 8

    .prologue
    const/16 v2, 0xc0

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/DownloadInfo;->isReadyToStart(J)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    sget v1, Lcom/duoku/platform/download/Constants;->MAX_THREAD:I

    if-le v0, v1, :cond_f

    .line 848
    :cond_e
    :goto_e
    return-void

    .line 822
    :cond_f
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    if-nez v0, :cond_e

    .line 832
    :try_start_13
    iget v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    if-eq v0, v2, :cond_3a

    .line 834
    const/16 v0, 0xc0

    iput v0, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    .line 835
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 836
    const-string v1, "status"

    iget v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 839
    :cond_3a
    new-instance v0, Lcom/duoku/platform/download/DownloadThread;

    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-direct {v0, v1, v2, p0}, Lcom/duoku/platform/download/DownloadThread;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/nu;Lcom/duoku/platform/download/DownloadInfo;)V

    .line 840
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mHasActiveThread:Z

    .line 841
    sget v1, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/duoku/platform/download/DownloadService;->mCurrentThreadNum:I

    .line 842
    iget-object v1, p0, Lcom/duoku/platform/download/DownloadInfo;->mSystemFacade:Lcom/baidu/bdgame/sdk/obf/nu;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/nu;->a(Ljava/lang/Thread;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_51} :catch_52

    goto :goto_e

    .line 844
    :catch_52
    move-exception v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
