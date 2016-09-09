.class public interface abstract Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
.super Ljava/lang/Object;
.source "IMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;,
        Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
    }
.end annotation


# virtual methods
.method public abstract getVideoState()Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract resetProgress()V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setLikeCount(J)V
.end method

.method public abstract setMediaPlayer(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;)V
.end method

.method public abstract setMediaTitle(Ljava/lang/String;)V
.end method

.method public abstract setOnRequestChangeVideoZoomlistener(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;)V
.end method

.method public abstract setVideoState(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;)V
.end method

.method public abstract setYouLiked(Z)V
.end method

.method public abstract show()V
.end method
