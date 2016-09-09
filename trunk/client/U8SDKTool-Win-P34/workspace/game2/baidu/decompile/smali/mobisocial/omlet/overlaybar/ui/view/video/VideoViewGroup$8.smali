.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 330
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    const/4 v3, 0x0

    .line 334
    check-cast p1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    .end local p1    # "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setCurrentStateError()V

    .line 335
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->showMediaErrorView()V

    .line 336
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-boolean v1, v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    if-eqz v1, :cond_5c

    .line 337
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->stop()V

    .line 338
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->release()V

    .line 339
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->resetProgress()V

    .line 340
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    move-result-object v1

    invoke-interface {v1, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setEnabled(Z)V

    .line 341
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v2, 0x0

    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2002(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 346
    :cond_4f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    .line 348
    .end local v0    # "file":Ljava/io/File;
    :cond_5c
    return v3
.end method
