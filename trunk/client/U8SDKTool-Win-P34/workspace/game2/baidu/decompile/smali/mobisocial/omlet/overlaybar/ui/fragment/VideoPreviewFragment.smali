.class public Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;
.super Landroid/app/Fragment;
.source "VideoPreviewFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
.implements Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$SaveVideoTask;
    }
.end annotation


# static fields
.field public static final ARGUMENT_FILE_PATH:Ljava/lang/String; = "path"

.field private static final STATE_FRAGMENT_IS_HIDDEN:Ljava/lang/String; = "state_fragment_is_hidden"

.field public static final TAG:Ljava/lang/String; = "VideoPreviewFragment"

.field static final VIDEO_LENGTH_THRESHOLD:J = 0xc8L


# instance fields
.field _BackButton:Landroid/view/View;

.field _BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

.field private _CutButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

.field _CutImage:Landroid/widget/ImageView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _OriginPath:Ljava/lang/String;

.field private _Path:Ljava/lang/String;

.field _RedoBtn:Landroid/view/View;

.field private _RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

.field _SaveButton:Landroid/view/View;

.field _TopBarRelativeLayout:Landroid/widget/RelativeLayout;

.field private _VideoFile:Ljava/io/File;

.field _VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 184
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_CutButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    .line 196
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$7;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->hasEnoughDiskSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;[Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;
    .param p1, "x1"    # [Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->showEditScreen([Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OriginPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->pauseVideo()V

    return-void
.end method

.method private hasEnoughDiskSpace()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 297
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;

    invoke-static {v1, v4}, Lmobisocial/omlet/overlaybar/util/Misc;->hasEnoughDiskSpace(Ljava/io/File;Z)Z

    move-result v0

    .line 298
    .local v0, "hasEnoughDiskSpace":Z
    if-nez v0, :cond_24

    .line 299
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 300
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_videoPreviewFragment_out_of_space"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    :cond_24
    return v0
.end method

.method private pauseVideo()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->canPause()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 172
    :cond_d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setMediaControllerVisible(Z)V

    .line 173
    return-void
.end method

.method private varargs showEditScreen([Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_25

    .line 177
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_videoPreviewFragment_feature_requires_api_18_plus"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :goto_24
    return-void

    .line 180
    :cond_25
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->pauseVideo()V

    .line 181
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Edit:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    invoke-virtual {v0, v1, p1}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;[Landroid/os/Bundle;)V

    goto :goto_24
.end method


# virtual methods
.method public OnVideoViewGroupPrepared()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public dismissActivity()V
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 294
    return-void
.end method

.method public fitVideoToContainer()V
    .registers 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 231
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showOverlayDefaultSize()V

    .line 233
    :cond_f
    return-void
.end method

.method public fitVideoToDeviceScreen()V
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 238
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setOverlayToFullScreen()V

    .line 240
    :cond_f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 395
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_1d

    .line 77
    const-string v1, "state_fragment_is_hidden"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    .local v0, "isHidden":Z
    if-eqz v0, :cond_1d

    .line 79
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 82
    .end local v0    # "isHidden":Z
    :cond_1d
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 83
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OriginPath:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OriginPath:Ljava/lang/String;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_fragment_video_preview"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "back"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_BackButton:Landroid/view/View;

    .line 92
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_BackButton:Landroid/view/View;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "relative_layout_preview_top_bar"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_TopBarRelativeLayout:Landroid/widget/RelativeLayout;

    .line 100
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "relative_layout_preview_bottom_bar"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

    .line 101
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "common_video_view_groups"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .line 102
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-direct {v3, v4}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAlwaysHideMediaController(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAutoplay(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setDefaultPlayFullscreen(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUsingHlsLink(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUseCriticalErrorView(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setOnVideoViewSizeChangeListener(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v0

    .line 103
    .local v0, "configuration":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v3, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setConfiguration(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)V

    .line 104
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "image_edit_cut"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_CutImage:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "linear_layout_cut_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "cutButton":Landroid/view/View;
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$2;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "linear_layout_save_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_SaveButton:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_SaveButton:Landroid/view/View;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "redo_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    .line 143
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object v2
.end method

.method public onHiddenChanged(Z)V
    .registers 2
    .param p1, "hidden"    # Z

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 274
    if-nez p1, :cond_8

    .line 275
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->reloadVideoIfNecessary()V

    .line 277
    :cond_8
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 282
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 283
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$9;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 290
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 261
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->reloadVideoIfNecessary()V

    .line 262
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$8;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 269
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    const-string v0, "state_fragment_is_hidden"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 249
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 255
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method reloadVideoIfNecessary()V
    .registers 3

    .prologue
    .line 209
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    if-eq v1, v0, :cond_3d

    .line 210
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;

    .line 213
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 214
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setVideoPath(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setOnVideoViewSizeChangeListner(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)V

    .line 226
    :cond_3d
    :goto_3d
    return-void

    .line 217
    :cond_3e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getCurrentState()Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    move-result-object v0

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;->END:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaPlayer$State;

    if-ne v0, v1, :cond_5a

    .line 218
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setVideoPath(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setOnVideoViewSizeChangeListner(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)V

    .line 220
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->invalidate()V

    goto :goto_3d

    .line 222
    :cond_5a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->resetMediaPlayer(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public uploadVideo()V
    .registers 7

    .prologue
    .line 342
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 390
    :goto_6
    return-void

    .line 345
    :cond_7
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->getVideoDurationMs(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getVideoMaxLengthMs(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 346
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->createToUploadViewTooLongDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_6

    .line 358
    :cond_31
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    goto :goto_6
.end method
