.class public Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;
.super Landroid/app/Fragment;
.source "VideoDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;
.implements Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;,
        Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "extraFromNotification"

.field public static final EXTRA_FROM_PROFILE:Ljava/lang/String; = "extraFromProfile"

.field public static final EXTRA_PROFILE_BITMAP:Ljava/lang/String; = "extraProfileBitmap"

.field public static final EXTRA_VIDEO_POST:Ljava/lang/String; = "extraVideoPost"

.field public static final TAG:Ljava/lang/String; = "VideoDetails"


# instance fields
.field _AddFollow:Landroid/view/View;

.field _BackImageButton:Landroid/widget/ImageButton;

.field _BlobLink:Ljava/lang/String;

.field _CancelFollow:Landroid/widget/TextView;

.field _DescriptionTextView:Landroid/widget/TextView;

.field _DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

.field _DownloadButton:Landroid/widget/TextView;

.field _HlsLink:Ljava/lang/String;

.field _IsOwner:Z

.field _LikeButton:Landroid/widget/ImageButton;

.field _LikeCountTextView:Landroid/widget/TextView;

.field _Likes:J

.field _MoreBackground:Landroid/view/View;

.field _MoreButton:Landroid/widget/ImageButton;

.field private _MoreButtonOnClickListener:Landroid/view/View$OnClickListener;

.field _MoreMenu:Landroid/view/ViewGroup;

.field _MoreMenuContainer:Landroid/view/ViewGroup;

.field _MyFollowItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;"
        }
    .end annotation
.end field

.field _NameTextView:Landroid/widget/TextView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _OmlibService:Lmobisocial/omlib/service/OmlibService;

.field _ProfileImageView:Landroid/widget/ImageView;

.field _ScrollDownHint:Landroid/widget/ImageView;

.field _ScrollView:Landroid/widget/ScrollView;

.field _ScrollViewContentContainerView:Landroid/view/ViewGroup;

.field _ShareButton:Landroid/widget/ImageButton;

.field _TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

.field _ThumbnailBlobLink:Ljava/lang/String;

.field _TimeTextview:Landroid/widget/TextView;

.field _TitleTextView:Landroid/widget/TextView;

.field _TopBarTitleTextView:Landroid/widget/TextView;

.field _TopBarViewGroup:Landroid/view/ViewGroup;

.field _UserNameTextView:Landroid/widget/TextView;

.field _UserYouFollowed:Ljava/lang/Boolean;

.field _UsingHlsLink:Z

.field _VideoDownloadUrl:Ljava/lang/String;

.field _VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

.field _VideoInfoTopViewGroup:Landroid/view/ViewGroup;

.field _VideoPath:Ljava/lang/String;

.field _VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

.field _VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

.field _ViewCountTextView:Landroid/widget/TextView;

.field _YouLiked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    .line 144
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UsingHlsLink:Z

    .line 478
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 174
    return-void
.end method

.method private SetFollowBtn()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 574
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    :goto_15
    return-void

    .line 577
    :cond_16
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method

.method private UpdateView()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 245
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getYouLiked()Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_YouLiked:Ljava/lang/Boolean;

    .line 246
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getLikes()J

    move-result-wide v6

    iput-wide v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_Likes:J

    .line 247
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TopBarTitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$2;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ShareButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$3;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b4

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_like_onepage_click"

    invoke-static {v6, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    :goto_44
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 307
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TimeTextview:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getCreationDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatTimestampPretty(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1be

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterId()Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "userName":Ljava/lang/String;
    :goto_79
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    if-eq v6, v7, :cond_85

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_1c6

    .line 360
    :cond_85
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v9, "omp_stub_game_name"

    invoke-static {v8, v9}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_omplaylogo_reaction"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DownloadButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_d7

    .line 365
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v9, "omp_omlet_blue"

    invoke-static {v8, v9}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$5;

    invoke-direct {v7, p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_d7
    :goto_d7
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_212

    .line 442
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :goto_f9
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_LikeCountTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_Likes:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ViewCountTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v8}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getViews()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->removeAllViews()V

    .line 448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_137
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_219

    .line 449
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTagType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b1

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTagType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Game"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b1

    .line 450
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_video_item_tag_selected_button"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 451
    .local v3, "tag":Landroid/view/ViewGroup;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v7, "video_tag_text"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 452
    .local v4, "tagText":Landroid/widget/TextView;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    .line 453
    .local v2, "ldPostTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$9;

    invoke-direct {v6, p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v6, v3}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 448
    .end local v2    # "ldPostTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .end local v3    # "tag":Landroid/view/ViewGroup;
    .end local v4    # "tagText":Landroid/widget/TextView;
    :cond_1b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_137

    .line 306
    .end local v1    # "i":I
    .end local v5    # "userName":Ljava/lang/String;
    :cond_1b4
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_like_onepage_normal"

    invoke-static {v6, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_44

    .line 358
    :cond_1be
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_79

    .line 381
    .restart local v5    # "userName":Ljava/lang/String;
    :cond_1c6
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_d7

    .line 382
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_loadingheadpic_onpost"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;

    invoke-direct {v7, p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_AddFollow:Landroid/view/View;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$8;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->SetFollowBtn()V

    goto/16 :goto_d7

    .line 444
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_212
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f9

    .line 466
    .restart local v1    # "i":I
    :cond_219
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 476
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->dismissMoreMenu()V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->SetFollowBtn()V

    return-void
.end method

.method private dismissMoreMenu()V
    .registers 3

    .prologue
    .line 567
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 569
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 570
    return-void
.end method


# virtual methods
.method public fitVideoViewToContainer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TopBarViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoTopViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 760
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 761
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showOverlayDefaultSize()V

    .line 763
    :cond_1f
    return-void
.end method

.method public fitVideoViewToDeviceScreen()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 766
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TopBarViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoTopViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 769
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 770
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setOverlayToFullScreen()V

    .line 772
    :cond_20
    return-void
.end method

.method public onApiError(Lmobisocial/omlib/api/OmletApiManager$Error;)V
    .registers 2
    .param p1, "error"    # Lmobisocial/omlib/api/OmletApiManager$Error;

    .prologue
    .line 714
    return-void
.end method

.method public onApiReady(Lmobisocial/omlib/api/OmletApi;)V
    .registers 9
    .param p1, "api"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 584
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "api":Lmobisocial/omlib/api/OmletApi;
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    .line 585
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v1}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    .line 588
    :cond_16
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterPictureBlobLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 589
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterPictureBlobLink()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 595
    :goto_2d
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ThumbnailBlobLink:Ljava/lang/String;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getThumbnailImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 597
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-direct {v1, p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V

    new-array v2, v5, [Ljava/lang/Void;

    .line 632
    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 633
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_IsOwner:Z

    if-nez v1, :cond_7a

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    if-ne v1, v2, :cond_7a

    .line 634
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    new-array v2, v5, [Ljava/lang/Void;

    .line 666
    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 671
    :goto_5f
    return-void

    .line 591
    :cond_60
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v3, "omp_btn_loadingheadpic_onpost"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 592
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2d

    .line 668
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_7a
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    .line 676
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_3f

    .line 181
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraFromProfile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 182
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    .line 187
    :goto_19
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraVideoPost"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    .line 188
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getBlobLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BlobLink:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getThumbnailBlob()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ThumbnailBlobLink:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getHlsUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_HlsLink:Ljava/lang/String;

    .line 192
    :cond_3f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BlobLink:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 193
    const-string v1, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlobLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BlobLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5d
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_HlsLink:Ljava/lang/String;

    if-eqz v1, :cond_7b

    .line 196
    const-string v1, "VideoDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hls "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_HlsLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_7b
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 199
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b3

    const/4 v1, 0x1

    :goto_98
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_IsOwner:Z

    .line 200
    return-void

    .line 183
    :cond_9b
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraFromNotification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 184
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    goto/16 :goto_19

    .line 186
    :cond_ad
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$DetailsBaseType;

    goto/16 :goto_19

    .line 199
    :cond_b3
    const/4 v1, 0x0

    goto :goto_98
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "omp_fragment_video_details"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "screen":Landroid/view/View;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "top_bar_title"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TopBarTitleTextView:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "image_button_back"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 207
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "relative_layout_top_bar"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TopBarViewGroup:Landroid/view/ViewGroup;

    .line 208
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_scroll_view_content_container"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollViewContentContainerView:Landroid/view/ViewGroup;

    .line 209
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "more_background"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreBackground:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_video_info"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoTopViewGroup:Landroid/view/ViewGroup;

    .line 211
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_video_post_info"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

    .line 212
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "share"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ShareButton:Landroid/widget/ImageButton;

    .line 213
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "like"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    .line 214
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "more"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    .line 215
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "image_view_game"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    .line 216
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_game_name"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_user_id"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    .line 218
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_post_time"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TimeTextview:Landroid/widget/TextView;

    .line 219
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_download_button"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DownloadButton:Landroid/widget/TextView;

    .line 220
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_followed_button"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    .line 221
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_add_follow"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_AddFollow:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "video_view_group"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .line 223
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getThumbnailImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v3, "omp_ic_loadingblankpage"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_video_title"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TitleTextView:Landroid/widget/TextView;

    .line 225
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_video_description"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_like_count"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_LikeCountTextView:Landroid/widget/TextView;

    .line 227
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_view_count"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ViewCountTextView:Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "tag_flowlayout"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/util/FlowLayout;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    .line 229
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "scrollview_content"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollView:Landroid/widget/ScrollView;

    .line 230
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "scrolldownhint"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    .line 231
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_more_menu"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    .line 232
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MoreBackground:Landroid/view/View;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->UpdateView()V

    .line 241
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 746
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 747
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$15;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$15;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 754
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 734
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 735
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$14;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$14;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 742
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 719
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V

    .line 720
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v3, "omp_hint_fade_out_fade_in"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 721
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 722
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 727
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 728
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 729
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getThumbnailImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 730
    return-void
.end method
