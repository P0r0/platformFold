.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 223
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 228
    :try_start_0
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getDuration()I

    move-result v2

    .line 229
    .local v2, "duration":I
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentPosition()I

    move-result v0

    .line 230
    .local v0, "currentPosition":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 231
    .local v3, "progress":I
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v4, v3}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    .line 232
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoDurationMs:J

    long-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v2

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 233
    .local v1, "currentTimeMs":I
    int-to-long v4, v1

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v6, v6, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_60

    .line 234
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 235
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v6, v5, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    long-to-int v5, v6

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    .line 236
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v5}, Lcom/edmodo/rangebar/RangeBar;->getLeftIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->setProgress(I)V

    .line 242
    .end local v0    # "currentPosition":I
    .end local v1    # "currentTimeMs":I
    .end local v2    # "duration":I
    .end local v3    # "progress":I
    :goto_5f
    return-void

    .line 238
    .restart local v0    # "currentPosition":I
    .restart local v1    # "currentTimeMs":I
    .restart local v2    # "duration":I
    .restart local v3    # "progress":I
    :cond_60
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_5f

    .line 240
    .end local v0    # "currentPosition":I
    .end local v1    # "currentTimeMs":I
    .end local v2    # "duration":I
    .end local v3    # "progress":I
    :catch_6a
    move-exception v4

    goto :goto_5f
.end method
