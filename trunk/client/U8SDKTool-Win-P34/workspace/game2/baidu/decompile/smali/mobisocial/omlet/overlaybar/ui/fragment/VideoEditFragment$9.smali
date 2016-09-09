.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    .prologue
    .line 509
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    .line 514
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    .line 515
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v0

    if-eq v0, p2, :cond_38

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v0

    if-ne v0, p2, :cond_39

    .line 525
    :cond_38
    :goto_38
    return-void

    .line 517
    :cond_39
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v0

    if-le v0, p2, :cond_83

    .line 518
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    .line 521
    :cond_52
    :goto_52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_RangBarTickCount:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getProgress()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    .line 522
    if-eqz p3, :cond_38

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->canMediaPlayerSeek()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 523
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    goto :goto_38

    .line 519
    :cond_83
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v0}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v0

    if-ge v0, p2, :cond_52

    .line 520
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    goto :goto_52
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 529
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 533
    return-void
.end method
