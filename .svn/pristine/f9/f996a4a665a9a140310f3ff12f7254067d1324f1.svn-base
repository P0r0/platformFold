.class public Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
.super Landroid/widget/RelativeLayout;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;,
        Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
    }
.end annotation


# instance fields
.field private _AlwaysHideMediaController:Z

.field private _Autoplay:Z

.field private _Container:Landroid/view/ViewGroup;

.field private _DefaultPlayFullscreen:Z

.field private _FilePath:Ljava/lang/String;

.field private _IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

.field _Initialized:Ljava/lang/Boolean;

.field private _IsPlayingFullscreen:Z

.field private _LoadingImageView:Landroid/widget/ImageView;

.field private _LoadingView:Landroid/view/View;

.field private _MediaErrorCriticalView:Landroid/view/View;

.field private _MediaErrorResetAndBack:Landroid/widget/TextView;

.field private _MediaErrorSeeLater:Landroid/widget/TextView;

.field private _MediaErrorTryAgain:Landroid/widget/TextView;

.field private _MediaErrorView:Landroid/view/View;

.field private _MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

.field private _OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

.field _OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private _OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

.field private _OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

.field private _OriginalLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private _OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

.field private _PlayImageView:Landroid/widget/ImageView;

.field private _PreparingSeekTo:Z

.field private _Surface:Landroid/view/Surface;

.field private _TextureView:Landroid/view/TextureView;

.field private _ThumbnailImageView:Landroid/widget/ImageView;

.field _UseCriticalErrorView:Z

.field private _UseOmMediaController:Z

.field private _UsingHlsLink:Z

.field private _VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

.field _WeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_DefaultPlayFullscreen:Z

    .line 81
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 83
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z

    .line 85
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    .line 107
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    .line 109
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    .line 424
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 113
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->initViews(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_DefaultPlayFullscreen:Z

    .line 81
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 83
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z

    .line 85
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    .line 107
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    .line 109
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    .line 424
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 118
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->initViews(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_DefaultPlayFullscreen:Z

    .line 81
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 83
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z

    .line 85
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    .line 107
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    .line 109
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    .line 424
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorTryAgain:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1802(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    return-object p1
.end method

.method static synthetic access$1900(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorResetAndBack:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    return-object v0
.end method

.method static synthetic access$2002(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    return-object p1
.end method

.method static synthetic access$2100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    return v0
.end method

.method static synthetic access$2400(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/TextureView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$2500(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z

    return v0
.end method

.method static synthetic access$2600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    return v0
.end method

.method static synthetic access$2602(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    return p1
.end method

.method static synthetic access$2700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$2800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IsPlayingFullscreen:Z

    return v0
.end method

.method static synthetic access$2902(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    return v0
.end method

.method static synthetic access$3000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    return-object v0
.end method

.method static synthetic access$3002(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    return-object p1
.end method

.method static synthetic access$3100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    return-object v0
.end method

.method static synthetic access$3102(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    return-object p1
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    .line 308
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    if-nez v1, :cond_1e

    .line 309
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    .line 312
    :cond_1e
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .line 314
    :try_start_29
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getVideoSize(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_b4

    .line 317
    :goto_31
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->reloadThumbnail()V

    .line 318
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-direct {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;-><init>()V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    .line 320
    :try_start_3b
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 322
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->prepareAsync()V

    .line 323
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$7;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$7;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 330
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$8;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 351
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$9;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 411
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v1, :cond_7b

    .line 412
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setMediaPlayer(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaPlayerControl;)V

    .line 413
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setEnabled(Z)V

    .line 415
    :cond_7b
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    instance-of v1, v1, Landroid/widget/MediaController;

    if-eqz v1, :cond_8e

    .line 416
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    check-cast v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_8e} :catch_98

    .line 421
    :cond_8e
    :goto_8e
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 422
    return-void

    .line 418
    :catch_98
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_video_details_cannot_open_video"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_8e

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v1

    goto/16 :goto_31
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "omp_view_common_video_view"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    .line 128
    const-string v1, "view_group_video_container"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Container:Landroid/view/ViewGroup;

    .line 129
    const-string v1, "image_view_thumbnail"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    .line 130
    const-string v1, "image_view_play_video"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;

    .line 131
    const-string v1, "view_group_player_loading"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;

    .line 132
    const-string v1, "image_view_player_loading"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;

    .line 133
    const-string v1, "view_group_media_error"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorView:Landroid/view/View;

    .line 134
    const-string v1, "text_view_see_later"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;

    .line 135
    const-string v1, "text_view_try_again"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorTryAgain:Landroid/widget/TextView;

    .line 136
    const-string v1, "view_group_media_error_critical"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorCriticalView:Landroid/view/View;

    .line 137
    const-string v1, "text_view_reset_and_back"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorResetAndBack:Landroid/widget/TextView;

    .line 138
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorTryAgain:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$2;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$2;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorResetAndBack:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$3;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$3;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$4;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$4;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorTryAgain:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorResetAndBack:Landroid/widget/TextView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$6;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$6;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_rotator"

    invoke-static {p1, v2}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 213
    .local v0, "rotator":Landroid/view/animation/Animation;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    return-void
.end method


# virtual methods
.method public canMediaPlayerSeek()Z
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canSeek()Z

    move-result v0

    return v0
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_b

    .line 747
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canPause()Z

    move-result v0

    .line 749
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_b

    .line 755
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canSeek()Z

    move-result v0

    .line 757
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_b

    .line 763
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canSeek()Z

    move-result v0

    .line 765
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canStart()Z
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canStart()Z

    move-result v0

    return v0
.end method

.method public varargs fitVideoToContainer([Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "configurations"    # [Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 548
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-nez v3, :cond_b

    .line 583
    :cond_a
    :goto_a
    return-void

    .line 551
    :cond_b
    iput-boolean v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IsPlayingFullscreen:Z

    .line 552
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v3, :cond_18

    .line 553
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    sget-object v4, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FitToContainer:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    invoke-interface {v3, v4}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setVideoState(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;)V

    .line 555
    :cond_18
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    invoke-direct {v0, v5, v5}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    .line 556
    .local v0, "containerSize":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    if-eqz p1, :cond_64

    array-length v3, p1

    if-lez v3, :cond_64

    .line 557
    aget-object v3, p1, v5

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_5d

    .line 558
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-eqz v3, :cond_2e

    .line 559
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .line 577
    :cond_2e
    :goto_2e
    iget v3, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget v4, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget v5, v5, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget v6, v6, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    invoke-static {v3, v4, v5, v6}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->calculateScaledSize(IIII)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v2

    .line 578
    .local v2, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget v4, v2, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 580
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    invoke-interface {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;->fitVideoToContainer()V

    .line 582
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 562
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    :cond_5d
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-eqz v3, :cond_2e

    .line 563
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    goto :goto_2e

    .line 566
    :cond_64
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 567
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_87

    .line 568
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-eqz v3, :cond_2e

    .line 569
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    goto :goto_2e

    .line 572
    :cond_87
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-eqz v3, :cond_2e

    .line 573
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    goto :goto_2e
.end method

.method public fitVideoToDeviceScreen()V
    .registers 11

    .prologue
    const/16 v9, 0xd

    const/4 v8, -0x1

    .line 586
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    if-nez v4, :cond_8

    .line 604
    :goto_7
    return-void

    .line 589
    :cond_8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IsPlayingFullscreen:Z

    .line 590
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v4, :cond_16

    .line 591
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    sget-object v5, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;->FullScreen:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;

    invoke-interface {v4, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setVideoState(Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$VideoState;)V

    .line 593
    :cond_16
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 594
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 595
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget v6, v6, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_VideoSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget v7, v7, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->calculateScaledSize(IIII)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v3

    .line 596
    .local v3, "size":Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v3, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget v5, v3, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 597
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 598
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 600
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 601
    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    const/high16 v4, -0x1000000

    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setBackgroundColor(I)V

    .line 603
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    invoke-interface {v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;->fitVideoToDeviceScreen()V

    goto :goto_7
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_b

    .line 771
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 773
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 3

    .prologue
    .line 715
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->getCurrentPosition()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 717
    :goto_6
    return v1

    .line 716
    :catch_7
    move-exception v0

    .line 717
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_b

    .line 787
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    move-result-object v0

    .line 789
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()I
    .registers 3

    .prologue
    .line 706
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->getDuration()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 708
    :goto_6
    return v1

    .line 707
    :catch_7
    move-exception v0

    .line 708
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTextureView()Landroid/view/TextureView;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public getThumbnailImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 733
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->isPlaying()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 735
    :goto_6
    return v1

    .line 734
    :catch_7
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 494
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Surface:Landroid/view/Surface;

    .line 495
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    if-eqz v0, :cond_1a

    .line 496
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->init()V

    .line 498
    :cond_1a
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 506
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 507
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_12

    .line 508
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->release()V

    .line 510
    :cond_12
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_1b

    .line 511
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->hide()V

    .line 513
    :cond_1b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Initialized:Ljava/lang/Boolean;

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 502
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    if-eqz v0, :cond_17

    .line 520
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    .line 521
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 522
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$11;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$11;-><init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 533
    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->seekTo(I)V

    .line 535
    :cond_17
    return-void
.end method

.method public pause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 688
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-nez v1, :cond_f

    .line 689
    const-string v1, "VideoViewGroup"

    const-string v2, "pause without a media player"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput-boolean v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 701
    :cond_e
    :goto_e
    return-void

    .line 693
    :cond_f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canPause()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 695
    :try_start_1f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->pause()V

    .line 696
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_e

    .line 697
    :catch_2b
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_e
.end method

.method public prepareSeekTo()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PreparingSeekTo:Z

    .line 543
    invoke-virtual {p0, v1, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setVolume(FF)V

    .line 544
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->start()V

    .line 545
    return-void
.end method

.method reloadThumbnail()V
    .registers 4

    .prologue
    .line 463
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_e

    .line 465
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    :cond_e
    return-void
.end method

.method public resetMediaPlayer(Ljava/lang/String;)V
    .registers 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 470
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v2, :cond_51

    .line 471
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v2, :cond_13

    .line 472
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->resetProgress()V

    .line 473
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->hide()V

    .line 475
    :cond_13
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setEnabled(Z)V

    .line 476
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    .line 478
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->reset()V

    .line 479
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->reloadThumbnail()V

    .line 480
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "omp_rotator"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 482
    .local v1, "rotator":Landroid/view/animation/Animation;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    :try_start_45
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->prepareAsync()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_52

    .line 490
    .end local v1    # "rotator":Landroid/view/animation/Animation;
    :cond_51
    :goto_51
    return-void

    .line 486
    .restart local v1    # "rotator":Landroid/view/animation/Animation;
    :catch_52
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51
.end method

.method public seekTo(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 724
    :try_start_0
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->seekTo(I)V

    .line 725
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 728
    :goto_c
    return-void

    .line 726
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public setConfiguration(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)V
    .registers 9
    .param p1, "configuration"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 282
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->videoPath:Ljava/lang/String;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$900(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setVideoPath(Ljava/lang/String;)V

    .line 283
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->alwaysHideMediaController:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    .line 284
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->autoplay:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 285
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->defaultPlayFullscreen:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1200(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_DefaultPlayFullscreen:Z

    .line 286
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->usingHlsLink:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1300(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UsingHlsLink:Z

    .line 287
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->useCriticalErrorView:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1400(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    .line 288
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->onVideoViewSizeChangeListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1500(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    .line 289
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->useOmMediaController:Z
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    .line 290
    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->omMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    .line 291
    new-instance v3, Landroid/view/TextureView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    .line 292
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 293
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Container:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 295
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseOmMediaController:Z

    if-eqz v2, :cond_90

    .line 296
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    .line 297
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v0, "controllerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 299
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->setOmMediaControlListener(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;)V

    .line 303
    .end local v0    # "controllerLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_90
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_TextureView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 304
    return-void
.end method

.method public setLikeCount(J)V
    .registers 4
    .param p1, "count"    # J

    .prologue
    .line 629
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_9

    .line 630
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setLikeCount(J)V

    .line 632
    :cond_9
    return-void
.end method

.method public setMediaControllerVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 647
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_b

    .line 648
    if-eqz p1, :cond_c

    .line 649
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->show()V

    .line 654
    :cond_b
    :goto_b
    return-void

    .line 651
    :cond_c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->hide()V

    goto :goto_b
.end method

.method public setMediaTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_9

    .line 642
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setMediaTitle(Ljava/lang/String;)V

    .line 644
    :cond_9
    return-void
.end method

.method public setOnVideoViewSizeChangeListner(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)V
    .registers 2
    .param p1, "listner"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    .prologue
    .line 625
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OnVideoViewSizeChangedListener:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;

    .line 626
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 619
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    .line 620
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_25
    const/4 v0, 0x1

    .line 621
    .local v0, "needsLoad":Z
    :goto_26
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;

    if-eqz v0, :cond_30

    :goto_2a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    return-void

    .end local v0    # "needsLoad":Z
    :cond_2e
    move v0, v1

    .line 620
    goto :goto_26

    .line 621
    .restart local v0    # "needsLoad":Z
    :cond_30
    const/16 v1, 0x8

    goto :goto_2a
.end method

.method public setVolume(FF)V
    .registers 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 779
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canSetVolume()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 780
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->setVolume(FF)V

    .line 782
    :cond_11
    return-void
.end method

.method public setYouLiked(Z)V
    .registers 3
    .param p1, "liked"    # Z

    .prologue
    .line 635
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0, p1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->setYouLiked(Z)V

    .line 638
    :cond_9
    return-void
.end method

.method showMediaErrorView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 453
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v0, :cond_16

    .line 454
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->hide()V

    .line 455
    :cond_16
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_UseCriticalErrorView:Z

    if-eqz v0, :cond_20

    .line 456
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorCriticalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :goto_1f
    return-void

    .line 458
    :cond_20
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method

.method public start()V
    .registers 4

    .prologue
    .line 662
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    if-nez v1, :cond_f

    .line 663
    const-string v1, "VideoViewGroup"

    const-string v2, "start without a media player"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_Autoplay:Z

    .line 684
    :cond_e
    :goto_e
    return-void

    .line 667
    :cond_f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->canStart()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_e

    .line 668
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_DefaultPlayFullscreen:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IsPlayingFullscreen:Z

    if-eqz v1, :cond_50

    .line 669
    :cond_27
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToDeviceScreen()V

    .line 674
    :goto_2a
    :try_start_2a
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaPlayer:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer;->start()V

    .line 675
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_PlayImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_ThumbnailImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_AlwaysHideMediaController:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    if-eqz v1, :cond_e

    .line 678
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IMediaController:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController;->show()V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_4a} :catch_4b

    goto :goto_e

    .line 680
    :catch_4b
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_e

    .line 671
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_50
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    goto :goto_2a
.end method
