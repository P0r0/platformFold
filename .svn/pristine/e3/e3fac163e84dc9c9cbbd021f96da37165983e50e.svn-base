.class public Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;
.super Landroid/app/Fragment;
.source "ScreenshotPreviewFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenshotPreviewFragment"


# instance fields
.field _BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _OriginPath:Ljava/lang/String;

.field private _Path:Ljava/lang/String;

.field _RedoBtn:Landroid/view/View;

.field private _RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

.field _SaveButtonViewGroup:Landroid/view/ViewGroup;

.field _ScreenshotImageView:Landroid/widget/ImageView;

.field _TopBarRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OriginPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 51
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OriginPath:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OriginPath:Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_fragment_screenshot_preview"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "relative_layout_preview_top_bar"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_TopBarRelativeLayout:Landroid/widget/RelativeLayout;

    .line 59
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "relative_layout_preview_bottom_bar"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

    .line 60
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "screenshot_preview_image"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_ScreenshotImageView:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_ScreenshotImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_BottomBarRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "linear_layout_save_button"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_SaveButtonViewGroup:Landroid/view/ViewGroup;

    .line 70
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_SaveButtonViewGroup:Landroid/view/ViewGroup;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "redo_btn"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoButtonOnTouchEvent:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 139
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$6;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 146
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$5;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 134
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 115
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 121
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public uploadScreenshot()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 174
    return-void
.end method
