.class public Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;
.super Landroid/widget/MediaController;
.source "SimpleMediaController.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;


# instance fields
.field _VideoState:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

.field private _ZoomButton:Landroid/widget/ImageButton;

.field _context:Landroid/content/Context;

.field private _listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    .prologue
    .line 14
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_VideoState:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    if-ne v0, v1, :cond_18

    .line 106
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;->onRequestChangeVideoZoom()V

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method public getVideoState()Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_VideoState:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    return-object v0
.end method

.method public resetProgress()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x2

    .line 31
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "addedViewToControlLinearLayout":Z
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v2, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    .line 35
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_context:Landroid/content/Context;

    const-string v7, "omp_btn_playbar_zoomout"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 37
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;

    invoke-direct {v6, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_5b

    .line 48
    invoke-virtual {p0, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "childView":Landroid/view/View;
    instance-of v5, v1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_67

    move-object v5, v1

    .line 50
    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_5b

    .line 51
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1    # "childView":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, "innerView":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5b

    .line 53
    check-cast v4, Landroid/widget/LinearLayout;

    .end local v4    # "innerView":Landroid/view/View;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/4 v0, 0x1

    .line 60
    :cond_5b
    if-nez v0, :cond_66

    .line 61
    const/16 v5, 0x35

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_66
    return-void

    .line 47
    .restart local v1    # "childView":Landroid/view/View;
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_31
.end method

.method public setLikeCount(J)V
    .registers 3
    .param p1, "count"    # J

    .prologue
    .line 77
    return-void
.end method

.method public setMediaPlayer(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;)V
    .registers 2
    .param p1, "player"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 69
    return-void
.end method

.method public setMediaTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public setOnRequestChangeVideoZoomlistener(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;)V
    .registers 2
    .param p1, "listener"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    .prologue
    .line 120
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    .line 121
    return-void
.end method

.method public setVideoState(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;)V
    .registers 5
    .param p1, "state"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    .prologue
    .line 88
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_VideoState:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    .line 89
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_13

    .line 90
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$2;->$SwitchMap$mobisocial$omlet$overlaybar$ui$view$video$IMediaController$VideoState:[I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_VideoState:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 101
    :cond_13
    :goto_13
    return-void

    .line 92
    :pswitch_14
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_context:Landroid/content/Context;

    const-string v2, "omp_btn_playbar_zoomout"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_13

    .line 95
    :pswitch_22
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_ZoomButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_context:Landroid/content/Context;

    const-string v2, "omp_btn_playbar_zoomin"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_13

    .line 90
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_22
    .end packed-switch
.end method

.method public setYouLiked(Z)V
    .registers 2
    .param p1, "liked"    # Z

    .prologue
    .line 81
    return-void
.end method
