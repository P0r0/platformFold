.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 225
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 229
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 230
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->canPause()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 231
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->pause()V

    .line 232
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$800(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$900(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    :cond_3e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeControllerView:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogView:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$600(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_50
    return-void
.end method
