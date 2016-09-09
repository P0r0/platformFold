.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->OnVideoViewGroupPrepared()V
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
    .line 290
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 295
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_seekBar:Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/NoSkipSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_rangeBar:Lcom/edmodo/rangebar/RangeBar;

    invoke-virtual {v1}, Lcom/edmodo/rangebar/RangeBar;->getRightIndex()I

    move-result v1

    if-lt v0, v1, :cond_1d

    .line 306
    :goto_1c
    return-void

    .line 298
    :cond_1d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_ToSeekTimeMs:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    .line 299
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->start()V

    .line 300
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    .line 302
    :cond_3c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 304
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    goto :goto_1c
.end method
