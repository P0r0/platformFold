.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

.field final synthetic val$omp:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    .prologue
    .line 359
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->val$omp:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2300(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->val$omp:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setMediaControllerVisible(Z)V

    .line 370
    :goto_28
    return-void

    .line 364
    :cond_29
    const/4 v0, 0x0

    goto :goto_25

    .line 365
    :cond_2b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->val$omp:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 366
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->start()V

    goto :goto_28

    .line 368
    :cond_3b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    goto :goto_28
.end method
