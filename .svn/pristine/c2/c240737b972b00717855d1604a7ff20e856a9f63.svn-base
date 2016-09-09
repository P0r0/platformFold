.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    .prologue
    .line 372
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 376
    move-object v0, p1

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setCurrentStatePlaybackCompleted()V

    .line 377
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-array v1, v2, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 378
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2200(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    check-cast p1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    .end local p1    # "mp":Landroid/media/MediaPlayer;
    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    move-result-object v0

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->ERROR:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-eq v0, v1, :cond_50

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2500(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 381
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z
    invoke-static {v0, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2602(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Z)Z

    .line 382
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$2;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->resetMediaPlayer(Ljava/lang/String;)V

    .line 384
    :cond_50
    return-void
.end method
