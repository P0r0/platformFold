.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 351
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 355
    move-object v0, p1

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    .line 356
    .local v0, "omp":Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setCurrentStatePrepared()V

    .line 357
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2200(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2400(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/TextureView;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;

    invoke-direct {v2, p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$1;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 386
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2400(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setEnabled(Z)V

    .line 387
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setAudioStreamType(I)V

    .line 388
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 389
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;)V

    invoke-interface {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setOnRequestChangeVideoZoomlistener(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;)V

    .line 401
    :cond_59
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 402
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 404
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->start()V

    .line 408
    :goto_7a
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;->OnVideoViewGroupPrepared()V

    .line 409
    return-void

    .line 406
    :cond_84
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->prepareSeekTo()V

    goto :goto_7a
.end method
