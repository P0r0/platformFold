.class public Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
.super Landroid/app/Fragment;
.source "VideoEditFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;
.implements Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final ARGUMENT_FILE_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_HIDE_VIDEO_TOO_LONG_ALERT:Ljava/lang/String; = "extraHideVideoTooLongAlert"

.field static final MAX_RANGE_BAR_TICK_COUNT:I = 0x3e8

.field static final MIN_RANGE_BAR_TICK_COUNT:I = 0x64

.field static final STATE_MAX_DURATION:Ljava/lang/String; = "STATE_MAX_DURATION"

.field static final STATE_MAX_VID_LENGTH:Ljava/lang/String; = "STATE_MAX_VID_LENGTH"

.field static final STATE_MIN_VID_LENGTH:Ljava/lang/String; = "STATE_MIN_VID_LENGTH"

.field static final STATE_RANGE_LEFT_POS:Ljava/lang/String; = "STATE_RANGE_LEFT_POS"

.field static final STATE_RANGE_RIGHT_POS:Ljava/lang/String; = "STATE_RANGE_RIGHT_POS"

.field static final STATE_SEEK_TIME:Ljava/lang/String; = "STATE_SEEK_TIME"

.field static final STATE_TRIM_END:Ljava/lang/String; = "STATE_TRIM_END"

.field static final STATE_TRIM_START:Ljava/lang/String; = "STATE_TRIM_START"

.field static final STATE_VIDEO_DURATION:Ljava/lang/String; = "STATE_VIDEO_DURATION"

.field static final STATE_VIDEO_POS:Ljava/lang/String; = "STATE_VIDEO_POS"

.field static final VIDEO_LENGTH_THRESHOLD:J = 0xc8L


# instance fields
.field _BackButton:Landroid/widget/ImageButton;

.field _HideVideoTooLongAlert:Z

.field _MaxVideoLengthMs:J

.field _MinVideoLengthMs:J

.field _PauseVideoHandler:Landroid/os/Handler;

.field _PauseVideoRunnable:Ljava/lang/Runnable;

.field _RangBarTickCount:I

.field _TickTimeStampsUsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field _ToSeekTimeMs:J

.field _TrimEndUs:J

.field _TrimMaxDurationMs:J

.field _TrimStartUs:J

.field _TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

.field _UpdateVideoProgressHandler:Landroid/os/Handler;

.field _UpdateVideoProgressRunnable:Ljava/lang/Runnable;

.field _VideoDurationMs:J

.field _VideoPosition:I

.field _VideoTimeStampsUsSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field _VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

.field _cancelBtn:Landroid/view/View;

.field private _cancelButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

.field _endTimeTextView:Landroid/widget/TextView;

.field _originalFilePath:Ljava/lang/String;

.field _rangeBar:Lcom/edmodo/rangebar/RangeBar;

.field private _rangeBarChangeListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

.field _saveButton:Landroid/view/View;

.field private _saveButtonOnClickListener:Landroid/view/View$OnClickListener;

.field _seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

.field private _seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field _startTimeTextView:Landroid/widget/TextView;

.field _wasResumed:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    .line 95
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    .line 97
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    .line 99
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    .line 105
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    .line 107
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    .line 460
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$7;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_cancelButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    .line 472
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_saveButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 509
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 536
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBarChangeListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)Z
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isShortestAllowedRangeMovingLeft(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxLeftIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimStartUsForIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J
    .registers 5
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)I
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxRightIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinRightIndex(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimEndUsForIndex(I)V

    return-void
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)Z
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isShortestAllowedRangeMovingRight(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)Z
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isRightMostTicks(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)I
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinLeftIndex(I)I

    move-result v0

    return v0
.end method

.method private closestTimestampUsOfTimeStampUs(J)J
    .registers 12
    .param p1, "timestampUs"    # J

    .prologue
    .line 427
    const-wide/16 v2, 0x0

    .line 428
    .local v2, "floor":J
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 429
    .local v0, "ceiling":J
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 430
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 432
    :cond_24
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 433
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 435
    :cond_40
    sub-long v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_51

    .line 438
    .end local v2    # "floor":J
    :goto_50
    return-wide v2

    .restart local v2    # "floor":J
    :cond_51
    move-wide v2, v0

    goto :goto_50
.end method

.method private getAllowedMaxLeftIndex(IZ)I
    .registers 13
    .param p1, "rightIndex"    # I
    .param p2, "preferFirstAppeared"    # Z

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 369
    .local v2, "rightTimestampUs":J
    iget-wide v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v4, v2, v6

    .line 370
    .local v4, "targetTimestampUs":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    .line 377
    :cond_1a
    :goto_1a
    return v0

    .line 373
    :cond_1b
    const/4 v1, 0x1

    invoke-direct {p0, v4, v5, v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->indexOfclosestValueInTickTimeStampsList(JZZ)I

    move-result v0

    .line 374
    .local v0, "indexLastAppeared":I
    if-eqz p2, :cond_1a

    .line 375
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1a
.end method

.method private getAllowedMaxRightIndex(I)I
    .registers 12
    .param p1, "leftIndex"    # I

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 341
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 342
    .local v0, "leftTimestampUs":J
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    mul-long/2addr v4, v8

    add-long v2, v0, v4

    .line 343
    .local v2, "targetTimestampUs":J
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    mul-long/2addr v4, v8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_20

    .line 344
    iget v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v4, v4, -0x1

    .line 347
    :goto_1f
    return v4

    .line 346
    :cond_20
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 347
    invoke-direct {p0, v2, v3, v6, v6}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->indexOfclosestValueInTickTimeStampsList(JZZ)I

    move-result v4

    goto :goto_1f
.end method

.method private getAllowedMinLeftIndex(I)I
    .registers 12
    .param p1, "rightIndex"    # I

    .prologue
    const-wide/16 v8, 0x3e8

    .line 384
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isRightMostTicks(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 385
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    mul-long v0, v4, v8

    .line 389
    .local v0, "rightTimestampUs":J
    :goto_c
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    iget-wide v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    mul-long/2addr v6, v8

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 390
    .local v2, "targetTimestampUs":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->indexOfclosestValueInTickTimeStampsList(JZZ)I

    move-result v4

    return v4

    .line 387
    .end local v0    # "rightTimestampUs":J
    .end local v2    # "targetTimestampUs":J
    :cond_28
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0    # "rightTimestampUs":J
    goto :goto_c
.end method

.method private getAllowedMinRightIndex(IZ)I
    .registers 13
    .param p1, "leftIndex"    # I
    .param p2, "preferLastAppeared"    # Z

    .prologue
    .line 351
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 352
    .local v2, "leftTimestampUs":J
    iget-wide v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v4, v2, v6

    .line 353
    .local v4, "targetTimestampUs":J
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->indexOfclosestValueInTickTimeStampsList(JZZ)I

    move-result v1

    .line 354
    .local v1, "indexFirstAppeared":I
    if-eqz p2, :cond_40

    .line 355
    move v0, v1

    .line 356
    .local v0, "index":I
    :goto_1c
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_3c

    .line 357
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 363
    .end local v0    # "index":I
    :cond_3c
    :goto_3c
    return v0

    .line 356
    .restart local v0    # "index":I
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .end local v0    # "index":I
    :cond_40
    move v0, v1

    .line 363
    goto :goto_3c
.end method

.method private getTargetTrimDurationUs(II)J
    .registers 7
    .param p1, "leftIndex"    # I
    .param p2, "rightIndex"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    return-wide v0
.end method

.method private indexOfclosestValueInTickTimeStampsList(JZZ)I
    .registers 14
    .param p1, "timestamp"    # J
    .param p3, "preferNext"    # Z
    .param p4, "preferPrevious"    # Z

    .prologue
    .line 314
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_8

    .line 315
    const/4 v1, 0x0

    .line 337
    :cond_7
    :goto_7
    return v1

    .line 317
    :cond_8
    const/4 v1, 0x1

    .local v1, "index":I
    :goto_9
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5f

    .line 318
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 319
    .local v0, "currentTimestampUs":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-eqz v3, :cond_7

    .line 322
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 323
    .local v2, "previousTimestampUs":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-ltz v3, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gtz v3, :cond_5c

    .line 324
    if-nez p3, :cond_7

    .line 327
    if-eqz p4, :cond_42

    .line 328
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 330
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7

    .line 331
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 317
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 337
    .end local v0    # "currentTimestampUs":Ljava/lang/Long;
    .end local v2    # "previousTimestampUs":Ljava/lang/Long;
    :cond_5f
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_7
.end method

.method private isRightMostTicks(I)Z
    .registers 4
    .param p1, "rightIndex"    # I

    .prologue
    .line 398
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    div-int/lit16 v1, v1, 0xc8

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isShortestAllowedRangeMovingLeft(II)Z
    .registers 11
    .param p1, "leftIndex"    # I
    .param p2, "rightIndex"    # I

    .prologue
    .line 413
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v1, v2, -0x1

    .line 414
    .local v1, "nextSampleIndex":I
    move v0, p1

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_27

    .line 415
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 416
    add-int/lit8 v1, v0, 0x1

    .line 420
    :cond_27
    invoke-direct {p0, v1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J

    move-result-wide v2

    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_39

    .line 421
    const/4 v2, 0x1

    .line 423
    :goto_35
    return v2

    .line 414
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 423
    :cond_39
    const/4 v2, 0x0

    goto :goto_35
.end method

.method private isShortestAllowedRangeMovingRight(II)Z
    .registers 11
    .param p1, "leftIndex"    # I
    .param p2, "rightIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 402
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 403
    .local v0, "previousPossilbleRight":I
    if-gez v0, :cond_12

    .line 409
    :cond_11
    :goto_11
    return v1

    .line 406
    :cond_12
    invoke-direct {p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J

    move-result-wide v2

    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_11

    .line 409
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private setTrimEndUsForIndex(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 452
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_e

    .line 453
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    .line 458
    :goto_d
    return-void

    .line 456
    :cond_e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    goto :goto_d
.end method

.method private setTrimStartUsForIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    .line 449
    return-void
.end method

.method private targetUsForIndex(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 443
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    long-to-double v0, v0

    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public OnVideoViewGroupPrepared()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 284
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBarChangeListener:Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/edmodo/rangebar/RangeBar;->setOnRangeBarChangeListener(Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;)V

    .line 285
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_wasResumed:Z

    if-nez v0, :cond_23

    .line 286
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-direct {p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxRightIndex(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/edmodo/rangebar/RangeBar;->updateThumbIndices(II)V

    .line 287
    invoke-direct {p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxRightIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimEndUsForIndex(I)V

    .line 289
    :cond_23
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-array v1, v2, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 290
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->updateInfoViews()V

    .line 309
    return-void
.end method

.method public fitVideoToContainer()V
    .registers 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showOverlayDefaultSize()V

    .line 274
    return-void
.end method

.method public fitVideoToDeviceScreen()V
    .registers 1

    .prologue
    .line 278
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 650
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, 0x64

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v4, "extraHideVideoTooLongAlert"

    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_HideVideoTooLongAlert:Z

    .line 131
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_originalFilePath:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_originalFilePath:Ljava/lang/String;

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getSyncFrameTimestampsUsTreeSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v4

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    .line 133
    if-nez p1, :cond_97

    .line 134
    iput-wide v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimMaxDurationMs:J

    .line 135
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_originalFilePath:Ljava/lang/String;

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getVideoDurationMs(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    .line 136
    iput-wide v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    .line 137
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    .line 138
    iput-wide v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    .line 139
    iput v10, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    .line 140
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getVideoMaxLengthMs(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    .line 141
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getVideoMinLengthMs(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    .line 153
    :goto_5f
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-le v4, v2, :cond_6d

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoTimeStampsUsSet:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    :cond_6d
    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    .line 154
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    if-gt v2, v3, :cond_db

    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    :goto_75
    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7f
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    if-ge v1, v2, :cond_dd

    .line 157
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TickTimeStampsUsList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->targetUsForIndex(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->closestTimestampUsOfTimeStampUs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 143
    .end local v1    # "i":I
    :cond_97
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_wasResumed:Z

    .line 144
    const-string v4, "STATE_MAX_DURATION"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimMaxDurationMs:J

    .line 145
    const-string v4, "STATE_VIDEO_DURATION"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    .line 146
    const-string v4, "STATE_TRIM_START"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    .line 147
    const-string v4, "STATE_TRIM_END"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    .line 148
    const-string v4, "STATE_SEEK_TIME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    .line 149
    const-string v4, "STATE_VIDEO_POS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    .line 150
    const-string v4, "STATE_MAX_VID_LENGTH"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    .line 151
    const-string v4, "STATE_MIN_VID_LENGTH"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    goto :goto_5f

    :cond_db
    move v2, v3

    .line 154
    goto :goto_75

    .line 159
    .restart local v1    # "i":I
    :cond_dd
    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_ea

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    :goto_e7
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimMaxDurationMs:J

    .line 160
    return-void

    .line 159
    :cond_ea
    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    goto :goto_e7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_fragment_video_edit"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "back"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_BackButton:Landroid/widget/ImageButton;

    .line 181
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_BackButton:Landroid/widget/ImageButton;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "textview_start_time"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_startTimeTextView:Landroid/widget/TextView;

    .line 189
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "textview_end_time"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_endTimeTextView:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "rangeBar"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/edmodo/rangebar/RangeBar;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    .line 191
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    invoke-virtual {v2, v3}, Lcom/edmodo/rangebar/RangeBar;->setTickCount(I)V

    .line 192
    if-eqz p3, :cond_7c

    .line 193
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    const-string v3, "STATE_RANGE_LEFT_POS"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "STATE_RANGE_RIGHT_POS"

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/edmodo/rangebar/RangeBar;->updateThumbIndices(II)V

    .line 195
    :cond_7c
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "seekBar"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    .line 196
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->init()V

    .line 197
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setMax(I)V

    .line 198
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "button_save"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_saveButton:Landroid/view/View;

    .line 199
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_saveButton:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_saveButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "cancel_btn"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_cancelBtn:Landroid/view/View;

    .line 201
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_cancelBtn:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_cancelButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_cancelBtn:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$2;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "video_view_group"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .line 210
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_originalFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAlwaysHideMediaController(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAutoplay(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setDefaultPlayFullscreen(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUsingHlsLink(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUseCriticalErrorView(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setOnVideoViewSizeChangeListener(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v0

    .line 211
    .local v0, "configuration":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setConfiguration(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)V

    .line 212
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_PauseVideoHandler:Landroid/os/Handler;

    .line 213
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_PauseVideoRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    .line 223
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressRunnable:Ljava/lang/Runnable;

    .line 244
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->updateInfoViews()V

    .line 245
    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_146

    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_HideVideoTooLongAlert:Z

    if-nez v2, :cond_146

    .line 246
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$5;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->createToUploadViewTooLongDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 254
    :cond_146
    return-object v1
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 264
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 265
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 266
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1c

    .line 267
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->cancel(Z)Z

    .line 269
    :cond_1c
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_wasResumed:Z

    .line 270
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "STATE_MAX_DURATION"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimMaxDurationMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 166
    const-string v0, "STATE_VIDEO_DURATION"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    const-string v0, "STATE_TRIM_START"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    const-string v0, "STATE_TRIM_END"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    const-string v0, "STATE_SEEK_TIME"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    const-string v0, "STATE_VIDEO_POS"

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v0, "STATE_MAX_VID_LENGTH"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 172
    const-string v0, "STATE_MIN_VID_LENGTH"

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    const-string v0, "STATE_RANGE_LEFT_POS"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v0, "STATE_RANGE_RIGHT_POS"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 260
    return-void
.end method

.method updateInfoViews()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 645
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_startTimeTextView:Landroid/widget/TextView;

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTimeToTenthOfSecond(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_endTimeTextView:Landroid/widget/TextView;

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTimeToTenthOfSecond(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method
