.class public Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;
.super Landroid/widget/RelativeLayout;
.source "OmMediaController.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_OUT_ANIMATION_DURATION_MILLI_SECOND:J = 0xc8L

.field private static final PROGRESS_UPDATE_INTERVAL_MILLI_SECOND:J = 0x1f4L


# instance fields
.field private _CloseButton:Landroid/widget/ImageButton;

.field private _HeartImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private _IsLiked:Z

.field private _LikeButton:Landroid/widget/ImageButton;

.field private _LikeCountTextView:Landroid/widget/TextView;

.field private _MediaPlayerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;",
            ">;"
        }
    .end annotation
.end field

.field private _MediaSeekBar:Landroid/widget/SeekBar;

.field private _OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

.field private _PauseButton:Landroid/widget/ImageButton;

.field private _PlayButton:Landroid/widget/ImageButton;

.field private _ShareButton:Landroid/widget/ImageButton;

.field private _ShareDialogCheckButton:Landroid/widget/ImageButton;

.field private _ShareDialogCloseButton:Landroid/widget/ImageButton;

.field private _ShareDialogCopyButton:Landroid/widget/Button;

.field private _ShareDialogLinkText:Landroid/widget/EditText;

.field private _ShareDialogView:Landroid/view/View;

.field private _ShowProgressHandler:Landroid/os/Handler;

.field private _ShowProgressRunnable:Ljava/lang/Runnable;

.field private _TimePointTextView:Landroid/widget/TextView;

.field private _TitleTextView:Landroid/widget/TextView;

.field private _VideoTimeTextView:Landroid/widget/TextView;

.field private _VolumeButton:Landroid/widget/ImageButton;

.field private _VolumeControllerView:Landroid/view/View;

.field private _VolumeSeekbar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private IsMediaPlayerAvailable()Z
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 381
    :cond_c
    const/4 v0, 0x0

    .line 383
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;F)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->seekVideo(F)V

    return-void
.end method

.method static synthetic access$1100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z

    return v0
.end method

.method static synthetic access$1302(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z

    return p1
.end method

.method static synthetic access$1400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->showHeartAnimation(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    return-object v0
.end method

.method static synthetic access$1800(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCheckButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogLinkText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VideoTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeControllerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 27
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private seekVideo(F)V
    .registers 5
    .param p1, "ratio"    # F

    .prologue
    .line 349
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z

    move-result v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_d

    .line 356
    :cond_c
    :goto_c
    return-void

    .line 352
    :cond_d
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->getDuration()I

    move-result v0

    .line 353
    .local v0, "duration":I
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    int-to-float v2, v0

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->seekTo(I)V

    .line 354
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->start()V

    .line 355
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method private setProgress()I
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z

    move-result v3

    if-nez v3, :cond_9

    move v0, v4

    .line 376
    :cond_8
    :goto_8
    return v0

    .line 362
    :cond_9
    const/4 v0, 0x0

    .line 363
    .local v0, "currentPosition":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 364
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 365
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->getDuration()I

    move-result v1

    .line 366
    .local v1, "duration":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_47

    .line 367
    if-lez v1, :cond_47

    .line 368
    int-to-float v3, v0

    int-to-float v5, v1

    div-float/2addr v3, v5

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 369
    .local v2, "progress":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    .end local v2    # "progress":I
    :cond_47
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VideoTimeTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v0

    invoke-static {v6, v7}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v1

    invoke-static {v6, v7}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;

    int-to-long v6, v0

    invoke-static {v6, v7}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8
.end method

.method private showHeartAnimation(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    if-eqz v11, :cond_20

    .line 309
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_20

    .line 310
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {p0, v11}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 314
    .end local v3    # "j":I
    :cond_20
    new-instance v11, Ljava/util/ArrayList;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    .line 315
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x2

    new-array v4, v11, [I

    .line 317
    .local v4, "locations":[I
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v4}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 318
    const/4 v11, 0x0

    aget v9, v4, v11

    .line 319
    .local v9, "x":I
    const/4 v11, 0x1

    aget v10, v4, v11

    .line 320
    .local v10, "y":I
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 321
    .local v6, "main_locations":[I
    invoke-virtual {p0, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getLocationOnScreen([I)V

    .line 322
    const/4 v11, 0x0

    aget v7, v6, v11

    .line 323
    .local v7, "main_x":I
    const/4 v11, 0x1

    aget v8, v6, v11

    .line 324
    .local v8, "main_y":I
    int-to-float v11, v9

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    sub-int/2addr v11, v7

    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 325
    int-to-float v11, v10

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    sub-int/2addr v11, v8

    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 326
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    const/4 v11, 0x5

    if-ge v1, v11, :cond_d2

    .line 327
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v2, "iv":Landroid/widget/ImageView;
    const-string v11, "omp_btn_player_like_red"

    invoke-static {p1, v11}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_HeartImageList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->addView(Landroid/view/View;)V

    .line 332
    const-string v11, "omp_move_heart_01"

    invoke-static {p1, v11}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 333
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v1, :cond_9b

    const/4 v11, 0x3

    if-ne v1, v11, :cond_b3

    .line 334
    :cond_9b
    const-string v11, "omp_move_heart_01"

    invoke-static {p1, v11}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 339
    :cond_a5
    :goto_a5
    mul-int/lit16 v11, v1, 0xc8

    add-int/lit16 v11, v11, 0x1f4

    int-to-long v12, v11

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 340
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 335
    :cond_b3
    const/4 v11, 0x1

    if-eq v1, v11, :cond_b9

    const/4 v11, 0x4

    if-ne v1, v11, :cond_c4

    .line 336
    :cond_b9
    const-string v11, "omp_move_heart_02"

    invoke-static {p1, v11}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_a5

    .line 337
    :cond_c4
    const/4 v11, 0x2

    if-ne v1, v11, :cond_a5

    .line 338
    const-string v11, "omp_move_heart_03"

    invoke-static {p1, v11}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_a5

    .line 342
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v2    # "iv":Landroid/widget/ImageView;
    :cond_d2
    return-void
.end method


# virtual methods
.method public getVideoState()Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 436
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/view/View;

    aput-object p0, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeControllerView:Landroid/view/View;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogView:Landroid/view/View;

    aput-object v4, v1, v3

    .line 437
    .local v1, "views":[Landroid/view/View;
    array-length v3, v1

    :goto_11
    if-ge v2, v3, :cond_2f

    aget-object v0, v1, v2

    .line 438
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$14;

    invoke-direct {v5, p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$14;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 459
    .end local v0    # "view":Landroid/view/View;
    :cond_2f
    return-void
.end method

.method public initViews(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "omp_view_om_media_controller"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    const-string v0, "media_seekbar"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    .line 108
    const-string v0, "text_view_media_title"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TitleTextView:Landroid/widget/TextView;

    .line 109
    const-string v0, "view_group_volume_controller"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeControllerView:Landroid/view/View;

    .line 110
    const-string v0, "volume_seekbar"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeSeekbar:Landroid/widget/SeekBar;

    .line 111
    const-string v0, "view_group_share_dialog"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogView:Landroid/view/View;

    .line 112
    const-string v0, "button_close_share"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCloseButton:Landroid/widget/ImageButton;

    .line 113
    const-string v0, "image_button_check"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCheckButton:Landroid/widget/ImageButton;

    .line 114
    const-string v0, "edit_text_share_link"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogLinkText:Landroid/widget/EditText;

    .line 115
    const-string v0, "button_copy"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCopyButton:Landroid/widget/Button;

    .line 116
    const-string v0, "btn_volume"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;

    .line 117
    const-string v0, "image_button_play_video"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;

    .line 118
    const-string v0, "image_button_pause_video"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    .line 119
    const-string v0, "text_view_video_time"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VideoTimeTextView:Landroid/widget/TextView;

    .line 120
    const-string v0, "text_view_time_point"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TimePointTextView:Landroid/widget/TextView;

    .line 121
    const-string v0, "image_button_like"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    .line 122
    const-string v0, "text_view_like_count"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;

    .line 123
    const-string v0, "image_button_share"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareButton:Landroid/widget/ImageButton;

    .line 124
    const-string v0, "image_button_close"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_CloseButton:Landroid/widget/ImageButton;

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressRunnable:Ljava/lang/Runnable;

    .line 135
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$2;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeSeekbar:Landroid/widget/SeekBar;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$3;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_VolumeButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$4;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$4;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$5;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$5;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$6;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$7;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$8;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$8;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_CloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$10;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$10;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCheckButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$11;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$11;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShareDialogCopyButton:Landroid/widget/Button;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$12;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public resetProgress()V
    .registers 3

    .prologue
    .line 463
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    .line 464
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 466
    :cond_a
    return-void
.end method

.method public setLikeCount(J)V
    .registers 6
    .param p1, "count"    # J

    .prologue
    .line 470
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 471
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeCountTextView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_d
    return-void
.end method

.method public setMediaPlayer(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;)V
    .registers 3
    .param p1, "mediaPlayerControl"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    .prologue
    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    .line 389
    return-void
.end method

.method public setMediaTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 490
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_TitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :cond_9
    return-void
.end method

.method public setOmMediaControlListener(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;)V
    .registers 2
    .param p1, "listener"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    .prologue
    .line 345
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    .line 346
    return-void
.end method

.method public setOnRequestChangeVideoZoomlistener(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;)V
    .registers 2
    .param p1, "listener"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    .prologue
    .line 505
    return-void
.end method

.method public setVideoState(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;)V
    .registers 2
    .param p1, "state"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    .prologue
    .line 496
    return-void
.end method

.method public setYouLiked(Z)V
    .registers 5
    .param p1, "liked"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_IsLiked:Z

    .line 478
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 479
    if-eqz p1, :cond_18

    .line 480
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_player_like_red"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    :cond_17
    :goto_17
    return-void

    .line 482
    :cond_18
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_LikeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_player_like"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_17
.end method

.method public show()V
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "views":[Landroid/view/View;
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->IsMediaPlayerAvailable()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 395
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_MediaPlayerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;

    invoke-interface {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 396
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 397
    new-array v1, v5, [Landroid/view/View;

    .end local v1    # "views":[Landroid/view/View;
    aput-object p0, v1, v3

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    aput-object v2, v1, v4

    .line 403
    .restart local v1    # "views":[Landroid/view/View;
    :cond_27
    :goto_27
    if-eqz v1, :cond_5c

    .line 404
    array-length v4, v1

    move v2, v3

    :goto_2b
    if-ge v2, v4, :cond_5c

    aget-object v0, v1, v2

    .line 405
    .local v0, "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;

    invoke-direct {v5, p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 399
    .end local v0    # "view":Landroid/view/View;
    :cond_4e
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 400
    new-array v1, v5, [Landroid/view/View;

    .end local v1    # "views":[Landroid/view/View;
    aput-object p0, v1, v3

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_PlayButton:Landroid/widget/ImageButton;

    aput-object v2, v1, v4

    .restart local v1    # "views":[Landroid/view/View;
    goto :goto_27

    .line 427
    :cond_5c
    return-void
.end method
