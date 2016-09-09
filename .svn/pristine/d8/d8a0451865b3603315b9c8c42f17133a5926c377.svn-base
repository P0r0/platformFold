.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Lcom/edmodo/rangebar/RangeBar$OnRangeBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _previousLeftIndex:I

.field _previousRightIndex:I

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    .prologue
    .line 536
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    .line 540
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    return-void
.end method


# virtual methods
.method public onIndexChangeListener(Lcom/edmodo/rangebar/RangeBar;II)V
    .registers 13
    .param p1, "rangeBar"    # Lcom/edmodo/rangebar/RangeBar;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, 0x3e8

    .line 544
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_PauseVideoHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_PauseVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 547
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 549
    :cond_2b
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    if-eq p2, v2, :cond_13b

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "setThumbIndices":Z
    if-gez p2, :cond_34

    .line 552
    const/4 p2, 0x0

    .line 553
    const/4 v1, 0x1

    .line 555
    :cond_34
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 556
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isShortestAllowedRangeMovingLeft(II)Z
    invoke-static {v2, p2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 557
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxLeftIndex(IZ)I
    invoke-static {v2, p3, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result p2

    .line 558
    const/4 v1, 0x1

    .line 561
    :cond_4f
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimStartUsForIndex(I)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 562
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    div-int/lit16 v2, v2, 0xc8

    if-ge p2, v2, :cond_6c

    .line 563
    move v0, p2

    .line 564
    .local v0, "diff":I
    const/4 p2, 0x0

    .line 565
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    sub-int/2addr v2, v0

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    .line 566
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    .line 567
    const/4 v1, 0x1

    .line 569
    .end local v0    # "diff":I
    :cond_6c
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->canMediaPlayerSeek()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 570
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    .line 573
    :cond_83
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_b7

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, p2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_b7

    .line 574
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxRightIndex(I)I
    invoke-static {v2, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)I

    move-result v2

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    .line 575
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    if-lt v2, v3, :cond_b6

    .line 576
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    .line 578
    :cond_b6
    const/4 v1, 0x1

    .line 580
    :cond_b7
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, p2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_d9

    .line 581
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_119

    .line 582
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxLeftIndex(IZ)I
    invoke-static {v2, v3, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result p2

    .line 589
    :cond_d8
    :goto_d8
    const/4 v1, 0x1

    .line 591
    :cond_d9
    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    .line 592
    if-eqz v1, :cond_f2

    .line 593
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimEndUsForIndex(I)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 594
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimStartUsForIndex(I)V
    invoke-static {v2, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 595
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    invoke-virtual {v2, p2, v3}, Lcom/edmodo/rangebar/RangeBar;->updateThumbIndices(II)V

    .line 636
    .end local v1    # "setThumbIndices":Z
    :cond_f2
    :goto_f2
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v3

    if-le v2, v3, :cond_214

    .line 637
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    .line 640
    :cond_113
    :goto_113
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->updateInfoViews()V

    .line 641
    return-void

    .line 584
    .restart local v1    # "setThumbIndices":Z
    :cond_119
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinRightIndex(IZ)I
    invoke-static {v2, p2, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result v2

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    .line 585
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, p2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_d8

    .line 586
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxLeftIndex(IZ)I
    invoke-static {v2, v3, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result p2

    goto :goto_d8

    .line 597
    .end local v1    # "setThumbIndices":Z
    :cond_13b
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    if-eq p3, v2, :cond_f2

    .line 598
    const/4 v1, 0x0

    .line 599
    .restart local v1    # "setThumbIndices":Z
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    if-le p3, v2, :cond_14d

    .line 600
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 p3, v2, -0x1

    .line 601
    const/4 v1, 0x1

    .line 603
    :cond_14d
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    if-nez v2, :cond_160

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isShortestAllowedRangeMovingRight(II)Z
    invoke-static {v2, v4, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$700(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)Z

    move-result v2

    if-eqz v2, :cond_160

    .line 604
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinRightIndex(IZ)I
    invoke-static {v2, v4, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result p3

    .line 605
    const/4 v1, 0x1

    .line 607
    :cond_160
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimEndUsForIndex(I)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 608
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->isRightMostTicks(I)Z
    invoke-static {v2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$800(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 609
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, p3

    .line 610
    .restart local v0    # "diff":I
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    add-int/lit8 p3, v2, -0x1

    .line 611
    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    .line 612
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    .line 613
    const/4 v1, 0x1

    .line 615
    .end local v0    # "diff":I
    :cond_18c
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->canMediaPlayerSeek()Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 616
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    .line 619
    :cond_1a3
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e2

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, p2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MaxVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e2

    .line 620
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinLeftIndex(I)I
    invoke-static {v2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$900(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)I

    move-result v2

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    .line 621
    const/4 v1, 0x1

    .line 629
    :cond_1c7
    :goto_1c7
    iput p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousRightIndex:I

    .line 630
    if-eqz v1, :cond_f2

    .line 631
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimStartUsForIndex(I)V
    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 632
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->setTrimEndUsForIndex(I)V
    invoke-static {v2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;I)V

    .line 633
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    invoke-virtual {v2, v3, p3}, Lcom/edmodo/rangebar/RangeBar;->updateThumbIndices(II)V

    goto/16 :goto_f2

    .line 622
    :cond_1e2
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, p2, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c7

    .line 623
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMaxLeftIndex(IZ)I
    invoke-static {v2, p3, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result v2

    iput v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    .line 624
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getTargetTrimDurationUs(II)J
    invoke-static {v2, v3, p3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;II)J

    move-result-wide v2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_MinVideoLengthMs:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_212

    .line 625
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->_previousLeftIndex:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getAllowedMinRightIndex(IZ)I
    invoke-static {v2, v3, v8}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;IZ)I

    move-result p3

    .line 627
    :cond_212
    const/4 v1, 0x1

    goto :goto_1c7

    .line 638
    .end local v1    # "setThumbIndices":Z
    :cond_214
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v3

    if-ge v2, v3, :cond_113

    .line 639
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v3}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    goto/16 :goto_113
.end method
