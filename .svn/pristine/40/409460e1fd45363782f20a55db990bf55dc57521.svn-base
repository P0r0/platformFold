.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;
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
    .line 213
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_UpdateVideoProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 219
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_VideoPosition:I

    .line 220
    return-void
.end method
