.class public Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;
.super Landroid/app/Fragment;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "extraFromNotification"

.field public static final EXTRA_FROM_PROFILE:Ljava/lang/String; = "extraFromProfile"

.field public static final EXTRA_PROFILE_BITMAP:Ljava/lang/String; = "extraProfileBitmap"

.field public static final EXTRA_SCREENSHOT_POST:Ljava/lang/String; = "extraScreenshotPost"

.field public static final TAG:Ljava/lang/String; = "ScreenshotDetails"


# instance fields
.field _AddFollow:Landroid/view/View;

.field _BackImageButton:Landroid/widget/ImageButton;

.field _BlobLink:Ljava/lang/String;

.field _CancelFollow:Landroid/widget/TextView;

.field _DescriptionTextView:Landroid/widget/TextView;

.field _DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

.field _DownloadButton:Landroid/widget/TextView;

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

.field _ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

.field _ScreenshotPreview:Landroid/widget/ImageView;

.field _ScrollDownHint:Landroid/widget/ImageView;

.field _ScrollView:Landroid/widget/ScrollView;

.field _ScrollViewContentContainerView:Landroid/view/ViewGroup;

.field _ShareButton:Landroid/widget/ImageButton;

.field _TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

.field _TimeTextview:Landroid/widget/TextView;

.field _TitleTextView:Landroid/widget/TextView;

.field _TopBarTitleTextView:Landroid/widget/TextView;

.field _TopBarViewGroup:Landroid/view/ViewGroup;

.field _UserNameTextView:Landroid/widget/TextView;

.field _UserYouFollowed:Ljava/lang/Boolean;

.field _VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

.field _VideoInfoTopViewGroup:Landroid/view/ViewGroup;

.field _ViewCountTextView:Landroid/widget/TextView;

.field _YouLiked:Ljava/lang/Boolean;

.field mCancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    .line 461
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 163
    return-void
.end method

.method private SetFollowBtn()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 558
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    :goto_15
    return-void

    .line 561
    :cond_16
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method

.method private UpdateView()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 228
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getYouLiked()Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_YouLiked:Ljava/lang/Boolean;

    .line 229
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getLikes()J

    move-result-wide v6

    iput-wide v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_Likes:J

    .line 230
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TopBarTitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$2;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ShareButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b8

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_like_onepage_click"

    invoke-static {v6, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    :goto_44
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 290
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$4;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TimeTextview:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getCreationDate()J

    move-result-wide v8

    invoke-static {v8, v9}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatTimestampPretty(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c2

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterId()Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "userName":Ljava/lang/String;
    :goto_79
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    if-eq v6, v7, :cond_85

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_1ca

    .line 343
    :cond_85
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v9, "omp_stub_game_name"

    invoke-static {v8, v9}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_omplaylogo_reaction"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DownloadButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_d7

    .line 348
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v9, "omp_omlet_blue"

    invoke-static {v8, v9}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$5;

    invoke-direct {v7, p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_d7
    :goto_d7
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_216

    .line 425
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v7}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :goto_f9
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_LikeCountTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v8}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getLikes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ViewCountTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v8}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getViews()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->removeAllViews()V

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13b
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_21d

    .line 432
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTagType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b5

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTagType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Game"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b5

    .line 433
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_video_item_tag_selected_button"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 434
    .local v3, "tag":Landroid/view/ViewGroup;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v7, "video_tag_text"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 435
    .local v4, "tagText":Landroid/widget/TextView;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPostTags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    .line 436
    .local v2, "ldPostTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;

    invoke-direct {v6, p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    invoke-virtual {v6, v3}, Lmobisocial/omlet/overlaybar/util/FlowLayout;->addView(Landroid/view/View;)V

    .line 431
    .end local v2    # "ldPostTag":Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;
    .end local v3    # "tag":Landroid/view/ViewGroup;
    .end local v4    # "tagText":Landroid/widget/TextView;
    :cond_1b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_13b

    .line 289
    .end local v1    # "i":I
    .end local v5    # "userName":Ljava/lang/String;
    :cond_1b8
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_like_onepage_normal"

    invoke-static {v6, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_44

    .line 341
    :cond_1c2
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v6}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_79

    .line 364
    .restart local v5    # "userName":Ljava/lang/String;
    :cond_1ca
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    if-ne v6, v7, :cond_d7

    .line 365
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v8, "omp_btn_loadingheadpic_onpost"

    invoke-static {v7, v8}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$6;

    invoke-direct {v7, p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_AddFollow:Landroid/view/View;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$7;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$8;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->SetFollowBtn()V

    goto/16 :goto_d7

    .line 427
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_216
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f9

    .line 449
    .restart local v1    # "i":I
    :cond_21d
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$10;

    invoke-direct {v7, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 459
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->dismissMoreMenu()V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->SetFollowBtn()V

    return-void
.end method

.method private dismissMoreMenu()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 553
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 554
    return-void
.end method


# virtual methods
.method public onApiError(Lmobisocial/omlib/api/OmletApiManager$Error;)V
    .registers 2
    .param p1, "error"    # Lmobisocial/omlib/api/OmletApiManager$Error;

    .prologue
    .line 621
    return-void
.end method

.method public onApiReady(Lmobisocial/omlib/api/OmletApi;)V
    .registers 8
    .param p1, "api"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 568
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "api":Lmobisocial/omlib/api/OmletApi;
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    .line 569
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 571
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterPictureBlobLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 572
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterPictureBlobLink()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 578
    :goto_25
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getBlobLink()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v1, v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 579
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_IsOwner:Z

    if-nez v1, :cond_66

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    if-ne v1, v2, :cond_66

    .line 580
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$12;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$12;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 612
    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$12;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 617
    :goto_4b
    return-void

    .line 574
    :cond_4c
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v3, "omp_btn_loadingheadpic_onpost"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 575
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_25

    .line 614
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_66
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2f

    .line 170
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraFromProfile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 171
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    .line 176
    :goto_19
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraScreenshotPost"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    .line 177
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getBlobLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BlobLink:Ljava/lang/String;

    .line 179
    :cond_2f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BlobLink:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 180
    const-string v1, "ScreenshotDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlobLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BlobLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_4d
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 183
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_83

    const/4 v1, 0x1

    :goto_6a
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_IsOwner:Z

    .line 184
    return-void

    .line 172
    :cond_6d
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extraFromNotification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 173
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    goto :goto_19

    .line 175
    :cond_7e
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DetailsBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    goto :goto_19

    .line 183
    :cond_83
    const/4 v1, 0x0

    goto :goto_6a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "omp_fragment_screenshot_details"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "screen":Landroid/view/View;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "top_bar_title"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TopBarTitleTextView:Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "image_button_back"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 191
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "relative_layout_top_bar"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TopBarViewGroup:Landroid/view/ViewGroup;

    .line 192
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_scroll_view_content_container"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScrollViewContentContainerView:Landroid/view/ViewGroup;

    .line 193
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "more_background"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreBackground:Landroid/view/View;

    .line 194
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_video_info"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_VideoInfoTopViewGroup:Landroid/view/ViewGroup;

    .line 195
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_video_post_info"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_VideoInfoBottomViewGroup:Landroid/view/ViewGroup;

    .line 196
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "share"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ShareButton:Landroid/widget/ImageButton;

    .line 197
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "like"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_LikeButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "more"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "image_view_game"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ProfileImageView:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_game_name"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_NameTextView:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_user_id"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_UserNameTextView:Landroid/widget/TextView;

    .line 202
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_post_time"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TimeTextview:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_download_button"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DownloadButton:Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_followed_button"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_CancelFollow:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_add_follow"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_AddFollow:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "screenshot_preview"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPreview:Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_video_title"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TitleTextView:Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_video_description"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_DescriptionTextView:Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_like_count"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_LikeCountTextView:Landroid/widget/TextView;

    .line 210
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "text_view_view_count"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ViewCountTextView:Landroid/widget/TextView;

    .line 211
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "tag_flowlayout"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/util/FlowLayout;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_TagFlowLayout:Lmobisocial/omlet/overlaybar/util/FlowLayout;

    .line 212
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "scrollview_content"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScrollView:Landroid/widget/ScrollView;

    .line 213
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "scrolldownhint"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    .line 214
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v2, "view_group_more_menu"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    .line 215
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreBackground:Landroid/view/View;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->UpdateView()V

    .line 224
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 655
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 656
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$14;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$14;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 663
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 643
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 644
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$13;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$13;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 651
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 625
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 626
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;Lmobisocial/omlib/api/OmletApiManager$ApiReadyListener;)V

    .line 627
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;

    const-string v3, "omp_hint_fade_out_fade_in"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 628
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 629
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 633
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 634
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_c

    .line 635
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 637
    :cond_c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 638
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 639
    return-void
.end method
