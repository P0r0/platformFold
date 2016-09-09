.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;


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
    .line 389
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChangeVideoZoom()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->getVideoState()Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    move-result-object v0

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    if-ne v0, v1, :cond_1b

    .line 394
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 398
    :goto_1a
    return-void

    .line 396
    :cond_1b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9$3;->this$1:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToDeviceScreen()V

    goto :goto_1a
.end method
