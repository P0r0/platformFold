.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 177
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 181
    const/4 v1, 0x5

    if-le p2, v1, :cond_34

    .line 182
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->val$context:Landroid/content/Context;

    const-string v3, "omp_btn_player_full_speaker"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 188
    :goto_14
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 189
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 190
    .local v0, "volume":F
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v1, v0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->setVolume(FF)V

    .line 192
    .end local v0    # "volume":F
    :cond_33
    return-void

    .line 183
    :cond_34
    if-nez p2, :cond_48

    .line 184
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->val$context:Landroid/content/Context;

    const-string v3, "omp_btn_player_close_speaker"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_14

    .line 186
    :cond_48
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;->val$context:Landroid/content/Context;

    const-string v3, "omp_btn_player_mid_speaker"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_14
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 196
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 200
    return-void
.end method
