.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 136
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 15
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/high16 v10, 0x41c00000    # 24.0f

    .line 140
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 141
    .local v3, "ratio":F
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->getDuration()I

    move-result v1

    .line 142
    .local v1, "duration":I
    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v0, v5

    .line 143
    .local v0, "currentPosition":I
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VideoTimeTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v8, v0

    invoke-static {v8, v9}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v1

    invoke-static {v8, v9}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v5

    int-to-long v6, v0

    invoke-static {v6, v7}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    div-int v4, v5, v6

    .line 147
    .local v4, "thumbPos":I
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v4, v5

    if-gez v5, :cond_93

    .line 148
    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 154
    :goto_89
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void

    .line 149
    :cond_93
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    add-int/2addr v5, v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_c0

    .line 150
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_89

    .line 152
    :cond_c0
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v4, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_89
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 159
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeControllerView:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogView:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$600(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 164
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->pause()V

    .line 169
    :goto_4e
    return-void

    .line 166
    :cond_4f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$800(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$900(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4e
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 173
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->seekVideo(F)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1000(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;F)V

    .line 175
    return-void
.end method
