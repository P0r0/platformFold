.class public Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
.super Landroid/app/Fragment;
.source "MediaUploadFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;
.implements Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSGetNameTask;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;,
        Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;
    }
.end annotation


# static fields
.field public static final ARGUMENT_MEDIA_PATH:Ljava/lang/String; = "path"

.field public static final ARGUMENT_MEDIA_TYPE:Ljava/lang/String; = "type"

.field public static final ARGUMENT_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field static final TAG:Ljava/lang/String; = "VideoUpload"

.field public static TYPE_SCREENSHOT:Ljava/lang/String;

.field public static TYPE_VIDEO:Ljava/lang/String;


# instance fields
.field _AgreeCheckbox:Landroid/widget/CheckBox;

.field _AgreeCheckboxContainer:Landroid/view/View;

.field _BackButton:Landroid/widget/ImageButton;

.field _DescriptionEditText:Landroid/widget/EditText;

.field private _InteractionListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;

.field _IsUploading:Z

.field _LoginHelper:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

.field _MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

.field _MediaPath:Ljava/lang/String;

.field _MediaType:Ljava/lang/String;

.field _NameDescriptionTextView:Landroid/widget/TextView;

.field _NameEditText:Landroid/widget/EditText;

.field _NameLabelTextView:Landroid/widget/TextView;

.field _NameWarningView:Landroid/view/View;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field _RestViewGroup:Landroid/view/ViewGroup;

.field _Screenshot:Landroid/widget/ImageView;

.field _ScrollView:Landroid/widget/ScrollView;

.field _Streamable:Z

.field _TagButton:Landroid/view/View;

.field private _TagButtonOnClickListener:Landroid/view/View$OnClickListener;

.field _TagContainerViewGroup:Landroid/view/ViewGroup;

.field _TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

.field _TagImage:Landroid/widget/ImageView;

.field private _TagOnClickListener:Landroid/view/View$OnClickListener;

.field _TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

.field _TagSelectedViewGroup:Landroid/view/ViewGroup;

.field _TitleEditText:Landroid/widget/EditText;

.field _TitleWarningView:Landroid/view/View;

.field _TopBarTitle:Landroid/widget/TextView;

.field _TopBarViewGroup:Landroid/view/ViewGroup;

.field _UploadFailedDialog:Landroid/app/Dialog;

.field _UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

.field private _UploadProgressReceiver:Landroid/content/BroadcastReceiver;

.field _UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

.field _VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-string v0, "video"

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_VIDEO:Ljava/lang/String;

    .line 79
    const-string v0, "screenshot"

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_SCREENSHOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 406
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$9;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 428
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagOnClickListener:Landroid/view/View$OnClickListener;

    .line 706
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$14;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$14;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isBaidu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->removeTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->addTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V

    return-void
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->reloadNameField()V

    return-void
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getMediaEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    .registers 9
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .prologue
    .line 443
    const/4 v3, 0x1

    iput-boolean v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->isAdded:Z

    .line 444
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_video_upload_tag_image_selector_switch"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_tag_text_selector_switch"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 446
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagView:Landroid/view/View;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_video_upload_tag_button_selector_switch"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 447
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_video_upload_tag_selected_button"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 448
    .local v1, "tag":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_tag_text"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 449
    .local v2, "tagText":Landroid/widget/TextView;
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    .line 451
    .local v0, "selected_holder":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    iget v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->index:I

    iput v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->index:I

    .line 452
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->szTagText:Ljava/lang/String;

    iput-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->szTagText:Ljava/lang/String;

    .line 453
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 454
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v3, v1}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 455
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->removeView(Landroid/view/View;)V

    .line 456
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 457
    return-void
.end method

.method private ensureUserAuth()V
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 676
    return-void
.end method

.method private getMediaEvent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "eventBase"    # Ljava/lang/String;

    .prologue
    .line 718
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideNameField()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 701
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameWarningView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    return-void
.end method

.method private isBaidu()Z
    .registers 4

    .prologue
    .line 853
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_config_flavor"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private reloadNameField()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 679
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 680
    .local v0, "c":Landroid/app/Activity;
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 681
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isBaidu()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 682
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->hideNameField()V

    .line 683
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 698
    :cond_1b
    :goto_1b
    return-void

    .line 685
    :cond_1c
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->getGlobalSharedDuokuUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 687
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 688
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_upload_media_no_dk_id"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 689
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 690
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1b

    .line 694
    :cond_47
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSGetNameTask;

    invoke-direct {v1, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSGetNameTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSGetNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b
.end method

.method private removeTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    .registers 9
    .param p1, "holder"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .prologue
    .line 460
    const/4 v3, 0x0

    iput-boolean v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->isAdded:Z

    .line 461
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_video_upload_tag_image_selector"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_tag_text_selector"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 463
    iget-object v3, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagView:Landroid/view/View;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_video_upload_tag_button_selector"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "removeTag":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 466
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v3, v0}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 467
    .local v2, "tagView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 468
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    iget v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->index:I

    iget v4, p1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->index:I

    if-ne v3, v4, :cond_63

    .line 469
    move-object v1, v2

    .line 474
    .end local v2    # "tagView":Landroid/view/View;
    :cond_5b
    if-eqz v1, :cond_62

    .line 475
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v3, v1}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->removeView(Landroid/view/View;)V

    .line 476
    :cond_62
    return-void

    .line 465
    .restart local v2    # "tagView":Landroid/view/View;
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method private showUploadFailedDialog(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 11
    .param p1, "upload"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 784
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 785
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0, v8}, Lmobisocial/omlet/overlaybar/util/Misc;->getNetworkState(Landroid/content/Context;I)Z

    move-result v1

    .line 786
    .local v1, "isMobile":Z
    invoke-static {v0, v7}, Lmobisocial/omlet/overlaybar/util/Misc;->getNetworkState(Landroid/content/Context;I)Z

    move-result v2

    .line 788
    .local v2, "isWifi":Z
    if-nez v1, :cond_83

    if-nez v2, :cond_83

    .line 789
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_upload_warning_msg_no_network_connection"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "msg":Ljava/lang/String;
    :goto_20
    new-array v4, v7, [Z

    .line 796
    .local v4, "positiveResult":[Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "omp_upload_failed"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "omp_retry"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$18;

    invoke-direct {v7, p0, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$18;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;[Z)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 804
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "omp_cancel"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$17;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$17;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;

    invoke-direct {v6, p0, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;[Z)V

    .line 811
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 829
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadFailedDialog:Landroid/app/Dialog;

    .line 830
    return-void

    .line 790
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "positiveResult":[Z
    :cond_83
    iget-object v5, p1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    invoke-static {v5}, Lmobisocial/util/PlatformUtils;->includesNetworkOrSocketTimeoutException(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 791
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_please_try_upload_again_network_timeout"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto :goto_20

    .line 793
    .end local v3    # "msg":Ljava/lang/String;
    :cond_9a
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_please_try_upload_again"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "msg":Ljava/lang/String;
    goto/16 :goto_20
.end method


# virtual methods
.method public OnVideoViewGroupPrepared()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method public fitVideoToContainer()V
    .registers 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 487
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showOverlayDefaultSize()V

    .line 489
    :cond_f
    return-void
.end method

.method public fitVideoToDeviceScreen()V
    .registers 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 499
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setOverlayToFullScreen()V

    .line 501
    :cond_f
    return-void
.end method

.method getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
    .registers 3

    .prologue
    .line 835
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_LoginHelper:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    if-nez v0, :cond_f

    .line 836
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_LoginHelper:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    .line 838
    :cond_f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_LoginHelper:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    return-object v0
.end method

.method public getPrimaryTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 575
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 576
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0}, Lmobisocial/omlib/api/OmletApiManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public getSecondaryTagList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getSecondaryTagsAsStringSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSecondaryTagsAsStringSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 588
    .local v3, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_28

    .line 589
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v4, v1}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 590
    .local v2, "tagView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .line 592
    .local v0, "customTag":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->szTagText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v0    # "customTag":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 595
    .end local v2    # "tagView":Landroid/view/View;
    :cond_28
    return-object v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 618
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 619
    if-eqz p1, :cond_d

    .line 620
    const-string v0, "IsUploading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 622
    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 510
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 512
    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 159
    :try_start_9
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_InteractionListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_11} :catch_12

    .line 163
    return-void

    .line 160
    :catch_12
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Activity must implement InteractionListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "omp_fragment_media_upload"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 183
    .local v7, "screen":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 184
    .local v2, "args":Landroid/os/Bundle;
    const-string v14, "path"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    .line 185
    const-string v14, "type"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "relative_layout_video_upload_top_bar"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TopBarViewGroup:Landroid/view/ViewGroup;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "top_bar_title"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TopBarTitle:Landroid/widget/TextView;

    .line 188
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "view_group_title_warning"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleWarningView:Landroid/view/View;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "view_group_name_warning"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameWarningView:Landroid/view/View;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "text_name_description"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    .line 191
    new-instance v14, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "video_view_group"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .line 193
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "screenshot"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_Screenshot:Landroid/widget/ImageView;

    .line 194
    sget-object v14, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_VIDEO:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_371

    .line 195
    new-instance v14, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-direct {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAlwaysHideMediaController(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setAutoplay(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setDefaultPlayFullscreen(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setUsingHlsLink(Z)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;->setOnVideoViewSizeChangeListener(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;

    move-result-object v3

    .line 196
    .local v3, "configuration":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v14, v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setConfiguration(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->setVisibility(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TopBarTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "omp_title_video_upload"

    invoke-static/range {v15 .. v16}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 206
    .end local v3    # "configuration":Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$Configuration;
    :goto_111
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_text_name"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "text_view_name_label"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameLabelTextView:Landroid/widget/TextView;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_text_title"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleEditText:Landroid/widget/EditText;

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleEditText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoTitleToRecover(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleEditText:Landroid/widget/EditText;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleEditText:Landroid/widget/EditText;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_text_description"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_DescriptionEditText:Landroid/widget/EditText;

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_DescriptionEditText:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoDescriptionToRecover(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_DescriptionEditText:Landroid/widget/EditText;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "view_group_video_upload_button"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "scroll_view_content_container"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_ScrollView:Landroid/widget/ScrollView;

    .line 349
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "relative_layout_rest_views"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_RestViewGroup:Landroid/view/ViewGroup;

    .line 350
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "image_button_upload_video_back"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_BackButton:Landroid/widget/ImageButton;

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_BackButton:Landroid/widget/ImageButton;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_tag_selected"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedViewGroup:Landroid/view/ViewGroup;

    .line 359
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_tag_selected_flowlayout"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lmobisocial/omlet/overlaybar/util/FlowLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    .line 360
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_tag_container"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagContainerViewGroup:Landroid/view/ViewGroup;

    .line 361
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "omp_video_upload_tag_open_button"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "view_group_video_tag_open_button"

    invoke-static/range {v15 .. v16}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 363
    .local v8, "tagButtonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "video_tag_open_image"

    invoke-static/range {v15 .. v16}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagImage:Landroid/widget/ImageView;

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagSelectedFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagButton:Landroid/view/View;

    invoke-virtual {v14, v15}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "edit_tag_flowlayout"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lmobisocial/omlet/overlaybar/util/FlowLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v14}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->removeAllViews()V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getTags(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, "tags":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoTagsToRecover(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 370
    .local v6, "preselectedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2ea
    array-length v14, v13

    if-ge v5, v14, :cond_3c6

    .line 371
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "omp_video_upload_tag_button"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 372
    .local v12, "tagViewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "video_tag_view_grooup"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 373
    .local v11, "tagView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "video_tag_add_image"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 375
    .local v9, "tagImg":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "video_tag_text"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 376
    .local v10, "tagText":Landroid/widget/TextView;
    aget-object v14, v13, v5

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    .line 378
    .local v4, "holder":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    iput v5, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->index:I

    .line 379
    iput-object v11, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagView:Landroid/view/View;

    .line 380
    iput-object v9, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagImg:Landroid/widget/ImageView;

    .line 381
    iput-object v10, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->tagText:Landroid/widget/TextView;

    .line 382
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->szTagText:Ljava/lang/String;

    .line 383
    const/4 v14, 0x0

    iput-boolean v14, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->isAdded:Z

    .line 384
    invoke-virtual {v11, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v14, v12}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v14, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->szTagText:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36d

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->addTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V

    .line 370
    :cond_36d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2ea

    .line 199
    .end local v4    # "holder":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    .end local v5    # "i":I
    .end local v6    # "preselectedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "tagButtonView":Landroid/view/View;
    .end local v9    # "tagImg":Landroid/widget/ImageView;
    .end local v10    # "tagText":Landroid/widget/TextView;
    .end local v11    # "tagView":Landroid/view/View;
    .end local v12    # "tagViewGroup":Landroid/view/ViewGroup;
    .end local v13    # "tags":[Ljava/lang/String;
    :cond_371
    sget-object v14, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_SCREENSHOT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a7

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_Screenshot:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_Screenshot:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TopBarTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "omp_title_screenshot_upload"

    invoke-static/range {v15 .. v16}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_111

    .line 204
    :cond_3a7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported media type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 390
    .restart local v5    # "i":I
    .restart local v6    # "preselectedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "tagButtonView":Landroid/view/View;
    .restart local v13    # "tags":[Ljava/lang/String;
    :cond_3c6
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "view_group_agree"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckboxContainer:Landroid/view/View;

    .line 391
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "checkbox_agree"

    invoke-static {v14, v15}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckbox:Landroid/widget/CheckBox;

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckbox:Landroid/widget/CheckBox;

    new-instance v15, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    return-object v7
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 843
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 844
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 845
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 846
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    if-eqz v0, :cond_1d

    .line 847
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dismiss()V

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .line 850
    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 626
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 627
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->ensureUserAuth()V

    .line 628
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgressReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "omlet.glrecorder.UPLOAD_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->updateProgressStatus()V

    .line 630
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 613
    const-string v0, "IsUploading"

    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 614
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 601
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 602
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 606
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 607
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 608
    return-void
.end method

.method public updateProgressStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 722
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getStatus(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    move-result-object v1

    .line 723
    .local v1, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-nez v1, :cond_c

    .line 781
    :cond_b
    :goto_b
    return-void

    .line 726
    :cond_c
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Cancelled:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v2, v3, :cond_2f

    .line 727
    iput-boolean v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 728
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->clearStatus(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    if-eqz v2, :cond_24

    .line 730
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dismiss()V

    .line 731
    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .line 733
    :cond_24
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$15;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$15;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    goto :goto_b

    .line 740
    :cond_2f
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Completed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v2, v3, :cond_95

    .line 741
    iput-boolean v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 742
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isBaidu()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 743
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedHasUploadedVideo(Landroid/content/Context;Z)V

    .line 745
    :cond_44
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "share_link"

    iget-object v3, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultShareLink:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v4}, Lmobisocial/omlet/overlaybar/util/Misc;->clearDirectory(Ljava/io/File;[Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_InteractionListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;

    invoke-interface {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;->onUploadComplete()V

    .line 751
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 752
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 753
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->clearStatus(Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    if-eqz v2, :cond_8c

    .line 755
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dismiss()V

    .line 756
    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .line 760
    :cond_8c
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    goto/16 :goto_b

    .line 761
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_95
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->Failed:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-eq v2, v3, :cond_a1

    iget-object v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v3, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->RetryableFailure:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v2, v3, :cond_d6

    .line 762
    :cond_a1
    iput-boolean v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 763
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    if-eqz v2, :cond_ae

    .line 764
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dismiss()V

    .line 765
    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .line 767
    :cond_ae
    iget-object v2, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->resultFailure:Ljava/lang/Throwable;

    invoke-static {v2}, Lmobisocial/util/PlatformUtils;->includesCertException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 768
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_upload_failed_wrong_system_time"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 769
    :cond_cd
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadFailedDialog:Landroid/app/Dialog;

    if-nez v2, :cond_b

    .line 770
    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->showUploadFailedDialog(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    goto/16 :goto_b

    .line 773
    :cond_d6
    iput-boolean v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 775
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    if-nez v2, :cond_ef

    .line 776
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->cancellation:Landroid/os/CancellationSignal;

    invoke-direct {v2, v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;-><init>(Landroid/app/Activity;ILandroid/os/CancellationSignal;)V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .line 777
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->show()V

    .line 779
    :cond_ef
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadProgress:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    iget v3, v1, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->progress:I

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->setProgress(I)V

    goto/16 :goto_b
.end method

.method public uploadMedia()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 515
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->setSharedPendingBBSName(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0}, Lmobisocial/omlib/api/OmletApiManager;->getConnectedService()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmobisocial/omlib/api/OmletApi;

    .line 517
    .local v8, "omletApi":Lmobisocial/omlib/api/OmletApi;
    if-nez v8, :cond_28

    .line 518
    const-string v0, "VideoUpload"

    const-string v1, "service api not available!"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .end local v8    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_27
    :goto_27
    return-void

    .line 521
    .restart local v8    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_28
    invoke-interface {v8}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 522
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$11;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$11;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->createLoginTask(Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Void;

    .line 539
    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_27

    .line 542
    :cond_4c
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    if-nez v0, :cond_27

    .line 544
    const/4 v7, 0x0

    .line 545
    .local v7, "needsField":Z
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 548
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleWarningView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 549
    const/4 v7, 0x1

    .line 551
    :cond_79
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8d

    .line 552
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 553
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameWarningView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 554
    const/4 v7, 0x1

    .line 560
    :cond_8d
    if-nez v7, :cond_27

    .line 562
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_DescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "description":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 564
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getPrimaryTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getSecondaryTagList()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->uploadVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 570
    :goto_b4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 571
    check-cast v8, Lmobisocial/omlib/service/OmlibService;

    .end local v8    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "omp_config_flavor"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_Upload"

    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getMediaEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lmobisocial/omlet/overlaybar/util/EventReportUtil;->sendEvent(Lmobisocial/omlib/service/OmlibService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 565
    .restart local v8    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_d2
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 566
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getPrimaryTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getSecondaryTagList()Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->uploadScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_b4

    .line 568
    :cond_ee
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported media type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
