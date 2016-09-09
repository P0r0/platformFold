.class public Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
.super Landroid/app/Fragment;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;,
        Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;
    }
.end annotation


# static fields
.field public static final EXTRA_CACHED_PROFILE_NAME:Ljava/lang/String; = "extraCachedProfileName"

.field public static final EXTRA_CACHED_PROFILE_PICTURE_HASH:Ljava/lang/String; = "extraCachedProfilePictureHash"

.field public static final EXTRA_USER_ACCOUNT:Ljava/lang/String; = "extraUserAccount"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "extraUserName"

.field public static final TAG:Ljava/lang/String; = "ProfileFragment"


# instance fields
.field private final TagContent:Ljava/lang/String;

.field private _Activity:Landroid/app/Activity;

.field _AddFollow:Landroid/view/View;

.field _BackImageButton:Landroid/widget/ImageButton;

.field private _CachedProfileName:Ljava/lang/String;

.field private _CachedProfilePictureHash:[B

.field _CancelFollow:Landroid/view/View;

.field _CurrentTab:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

.field private _DoSetProfile:Z

.field _EmptyText:Landroid/widget/TextView;

.field _FansAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

.field _FansCount:Landroid/widget/TextView;

.field _FansItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;"
        }
    .end annotation
.end field

.field _FansLine:Landroid/view/View;

.field _FansText:Landroid/widget/TextView;

.field _FansView:Landroid/view/View;

.field _FindUserView:Landroid/view/View;

.field _FollowCount:Landroid/widget/TextView;

.field _FollowItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDUser;",
            ">;"
        }
    .end annotation
.end field

.field _FollowLine:Landroid/view/View;

.field _FollowText:Landroid/widget/TextView;

.field _FollowView:Landroid/view/View;

.field _FollowsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

.field _FooterView:Landroid/view/View;

.field private _FragmentManager:Landroid/app/FragmentManager;

.field _HeaderView:Landroid/view/View;

.field _Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation
.end field

.field _ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field private _ItemsView:Landroid/support/v7/widget/RecyclerView;

.field private _MyAccount:Ljava/lang/String;

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

.field _NameEditButton:Landroid/widget/ImageButton;

.field _NameEditText:Landroid/widget/EditText;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field _OmletIdSection:Landroid/view/View;

.field _OmletIdText:Landroid/widget/TextView;

.field private _OneColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field _Profile:Lmobisocial/longdan/LDProtocols$LDContactProfile;

.field _ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

.field private _ProfileBitmapToSend:Landroid/graphics/Bitmap;

.field _ProfileImageView:Landroid/widget/ImageView;

.field _TitleTextView:Landroid/widget/TextView;

.field _TutorialNameView:Landroid/view/View;

.field _TutorialPictureView:Landroid/view/View;

.field private _TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field _UploadCount:Landroid/widget/TextView;

.field _UploadLine:Landroid/view/View;

.field _UploadText:Landroid/widget/TextView;

.field _UploadView:Landroid/view/View;

.field _UserAccount:Ljava/lang/String;

.field _UserName:Ljava/lang/String;

.field isUserFollow:Z

.field private openAddFollowUser:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    .line 164
    const-string v0, "content"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->TagContent:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FragmentManager:Landroid/app/FragmentManager;

    .line 962
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$26;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$26;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->openAddFollowUser:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method private SetFollowBtn()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method private SetProfileTab(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V
    .registers 9
    .param p1, "profileTab"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 428
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CurrentTab:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

    .line 430
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_gray_text_70706f"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadLine:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansLine:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowLine:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$27;->$SwitchMap$mobisocial$omlet$overlaybar$ui$fragment$ProfileFragment$ProfileTab:[I

    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_246

    .line 516
    :goto_9e
    return-void

    .line 441
    :pswitch_9f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 445
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 446
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 453
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FindUserView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12d

    .line 456
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profileFragment_no_videos_yet"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9e

    .line 459
    :cond_12d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 463
    :pswitch_134
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OneColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 467
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 468
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FindUserView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b6

    .line 471
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profileFragment_no_followers_yet"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9e

    .line 474
    :cond_1b6
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9e

    .line 478
    :pswitch_1bd
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OneColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 482
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 483
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23a

    .line 485
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profileFragment_following_no_one_yet"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9e

    .line 511
    :cond_23a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FindUserView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9e

    .line 439
    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_134
        :pswitch_1bd
    .end packed-switch
.end method

.method static synthetic access$1000(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    return v0
.end method

.method static synthetic access$1002(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    return p1
.end method

.method static synthetic access$1100(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->serverSetProfilePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserProfile()V

    return-void
.end method

.method static synthetic access$1400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)[B
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B

    return-object v0
.end method

.method static synthetic access$1602(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;[B)[B
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B

    return-object p1
.end method

.method static synthetic access$1700(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetOmletId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->takeProfilePicture()V

    return-void
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V

    return-void
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;
    .param p1, "x1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetProfileTab(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V

    return-void
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$900(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->closeTutorialView()V

    return-void
.end method

.method private closeTutorialView()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 700
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialNameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 701
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialPictureView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 702
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialNameView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialPictureView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    return-void
.end method

.method private getUserProfile()V
    .registers 5

    .prologue
    .line 783
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetName(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile([BLandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 785
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 824
    return-void
.end method

.method private promptUserName()V
    .registers 6

    .prologue
    .line 890
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 891
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omp_profileFragment_enter_profile_name"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 892
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 893
    .local v1, "input":Landroid/widget/EditText;
    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 895
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omp_dialog_ok"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$22;

    invoke-direct {v3, p0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$22;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 902
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omp_dialog_cancel"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$23;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$23;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 909
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 910
    return-void
.end method

.method private reverseLDPostContainerList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v2, "reversedList":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    if-eqz p1, :cond_1c

    .line 829
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 830
    .local v1, "postCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_1c

    .line 831
    add-int/lit8 v3, v0, 0x1

    sub-int v3, v1, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 834
    .end local v0    # "i":I
    .end local v1    # "postCount":I
    :cond_1c
    return-object v2
.end method

.method private serverSetProfilePicture(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 931
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$25;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 960
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .registers 4
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$24;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$24;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 927
    return-void
.end method

.method private takeProfilePicture()V
    .registers 3

    .prologue
    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 915
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 917
    :cond_19
    return-void
.end method

.method private uiSetName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 746
    :goto_4
    return-void

    .line 732
    :cond_5
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private uiSetOmletId(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 762
    :goto_4
    return-void

    .line 752
    :cond_5
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$16;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$16;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private uiSetThumbnailDefault()V
    .registers 4

    .prologue
    .line 765
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    .line 766
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_5

    .line 780
    :goto_4
    return-void

    .line 769
    :cond_5
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;

    invoke-direct {v2, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$17;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method


# virtual methods
.method public getUserAccount(Z)V
    .registers 5
    .param p1, "doSigninIfNeeded"    # Z

    .prologue
    .line 558
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 559
    .local v0, "context":Landroid/app/Activity;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    invoke-direct {v2, p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 697
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    if-ne p1, v2, :cond_1c

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1c

    .line 404
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 405
    .local v0, "extras":Landroid/os/Bundle;
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    .line 407
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    .line 409
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1c
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 186
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 225
    .local v9, "arguments":Landroid/os/Bundle;
    if-eqz v9, :cond_3d7

    .line 226
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extraUserAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extraUserName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserName:Ljava/lang/String;

    .line 228
    sget-object v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->USER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    .line 233
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FragmentManager:Landroid/app/FragmentManager;

    .line 234
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_fragment_profile"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 236
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "title"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TitleTextView:Landroid/widget/TextView;

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "image_button_back"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "items_container"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    .line 239
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 240
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OneColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profile_footer"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "empty_text"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_EmptyText:Landroid/widget/TextView;

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "view_group_find_user"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FindUserView:Landroid/view/View;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v2, v3, :cond_3ed

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profile_header"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    .line 250
    :goto_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "user_profile_image"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omp_btn_loadingheadpic_onpost"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 252
    .local v10, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    invoke-static {v10}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "user_profile_name"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditText:Landroid/widget/EditText;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "user_omlet_id"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletIdText:Landroid/widget/TextView;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omlet_id_section"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletIdSection:Landroid/view/View;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v2, v3, :cond_404

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v5, "omp_profileFragment_me"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditText:Landroid/widget/EditText;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "user_profile_name_edit_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditButton:Landroid/widget/ImageButton;

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditButton:Landroid/widget/ImageButton;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "cam_view_group"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 279
    .local v11, "camView":Landroid/view/View;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "view_group_tutorial_profile_name"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialNameView:Landroid/view/View;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "view_group_tutorial_profile_picture"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialPictureView:Landroid/view/View;

    .line 355
    .end local v11    # "camView":Landroid/view/View;
    :cond_22d
    :goto_22d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "view_group_tab"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 356
    .local v14, "tabViewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profile_tab"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 357
    .local v13, "tab":Landroid/view/View;
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "upload_text"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadText:Landroid/widget/TextView;

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "fans_text"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansText:Landroid/widget/TextView;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "follow_text"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowText:Landroid/widget/TextView;

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "upload_count"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadCount:Landroid/widget/TextView;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "fans_count"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansCount:Landroid/widget/TextView;

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "follow_count"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowCount:Landroid/widget/TextView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "upload_line"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadLine:Landroid/view/View;

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "fans_line"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansLine:Landroid/view/View;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "follow_line"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowLine:Landroid/view/View;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "user_profile_upload"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadView:Landroid/view/View;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "user_profile_fans"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansView:Landroid/view/View;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "user_profile_follow"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowView:Landroid/view/View;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowView:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$9;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    .line 392
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    invoke-direct/range {v2 .. v8}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansItems:Ljava/util/List;

    .line 394
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    invoke-direct/range {v2 .. v7}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FansAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    .line 396
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    invoke-direct/range {v2 .. v7}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .line 397
    return-object v15

    .line 230
    .end local v10    # "bm":Landroid/graphics/Bitmap;
    .end local v13    # "tab":Landroid/view/View;
    .end local v14    # "tabViewGroup":Landroid/view/ViewGroup;
    .end local v15    # "view":Landroid/view/View;
    :cond_3d7
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    .line 231
    sget-object v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    goto/16 :goto_2a

    .line 248
    .restart local v15    # "view":Landroid/view/View;
    :cond_3ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v3, "omp_profile_user_header"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    goto/16 :goto_114

    .line 288
    .restart local v10    # "bm":Landroid/graphics/Bitmap;
    :cond_404
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->USER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v2, v3, :cond_22d

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserName:Ljava/lang/String;

    if-nez v2, :cond_482

    const-string v2, ""

    :goto_418
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_BackImageButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "add_follow_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_AddFollow:Landroid/view/View;

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "cancel_follow_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CancelFollow:Landroid/view/View;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 301
    .local v12, "context":Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_AddFollow:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CancelFollow:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-direct/range {p0 .. p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V

    goto/16 :goto_22d

    .line 289
    .end local v12    # "context":Landroid/app/Activity;
    :cond_482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v6, "omp_profileFragment_profile"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_418
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 724
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    .line 726
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 879
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 880
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$21;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$21;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 887
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 846
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 847
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$19;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$19;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 854
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->USER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 855
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$20;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$20;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 864
    :cond_2e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_3c

    .line 865
    :cond_38
    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserAccount(Z)V

    .line 875
    :goto_3b
    return-void

    .line 867
    :cond_3c
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    if-eqz v0, :cond_5e

    .line 868
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z

    .line 869
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 870
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->serverSetProfilePicture(Landroid/graphics/Bitmap;)V

    goto :goto_3b

    .line 872
    :cond_5e
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserProfile()V

    goto :goto_3b
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 708
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 709
    const-string v0, "extraCachedProfileName"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "extraCachedProfilePictureHash"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 711
    return-void
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 521
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 522
    .local v1, "context":Landroid/app/Activity;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v2, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 523
    invoke-virtual {p0, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserAccount(Z)V

    .line 524
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getTutorialNamePref(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v2, v3, :cond_5e

    .line 525
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$12;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$12;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 533
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialNameView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialPictureView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 535
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;

    const-string v4, "omp_tutorial_right_to_left"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 536
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialNameView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TutorialPictureView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 538
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$13;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$13;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 553
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setTutorialNamePref(Landroid/content/Context;Z)V

    .line 555
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_5e
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 839
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 840
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 841
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 842
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 715
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 716
    if-eqz p1, :cond_15

    .line 717
    const-string v0, "extraCachedProfileName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;

    .line 718
    const-string v0, "extraCachedProfilePictureHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B

    .line 720
    :cond_15
    return-void
.end method
