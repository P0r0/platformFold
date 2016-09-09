.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->onApiReady(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 597
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 601
    return-void
.end method

.method public onTaskCancelled(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 631
    return-void
.end method

.method public onTaskComplete(Ljava/lang/Object;)V
    .registers 9
    .param p1, "p"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 605
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPath:Ljava/lang/String;

    if-nez v2, :cond_2f

    .line 606
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "omp_videoDetailsFragment_error_loading_video"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 627
    :goto_2e
    return-void

    .line 609
    :cond_2f
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;)V

    .line 625
    .local v1, "onVideoViewSizeChangedListener":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAlwaysHideMediaController(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAutoplay(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setDefaultPlayFullscreen(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-boolean v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UsingHlsLink:Z

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUsingHlsLink(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setOnVideoViewSizeChangeListener(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v0

    .line 626
    .local v0, "configuration":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setConfiguration(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)V

    goto :goto_2e
.end method
