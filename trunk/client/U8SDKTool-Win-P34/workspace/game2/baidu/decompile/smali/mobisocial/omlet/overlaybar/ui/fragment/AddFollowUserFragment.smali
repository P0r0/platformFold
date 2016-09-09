.class public Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;
.super Landroid/app/Fragment;
.source "AddFollowUserFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AddFollowUser"


# instance fields
.field _AddFollow:Landroid/view/View;

.field _BackImageButton:Landroid/widget/ImageButton;

.field _CancelFollow:Landroid/view/View;

.field _CleanButton:Landroid/widget/ImageButton;

.field _MyIdText:Landroid/widget/TextView;

.field _NameText:Landroid/widget/TextView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field _SearchButton:Landroid/widget/ImageButton;

.field _SearchEditText:Landroid/widget/EditText;

.field _SearchResultView:Landroid/view/View;

.field isUserFollow:Z

.field myAccount:Ljava/lang/String;

.field myOmletId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    return-void
.end method

.method private SetFollowBtn()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->isUserFollow:Z

    if-eqz v0, :cond_12

    .line 215
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CancelFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_11
    return-void

    .line 218
    :cond_12
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CancelFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->searchUser()V

    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->SetFollowBtn()V

    return-void
.end method

.method private searchUser()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 194
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CleanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->showSearchResult(Z)V

    .line 197
    :cond_16
    return-void
.end method

.method private showSearchResult(Z)V
    .registers 8
    .param p1, "success"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 200
    if-eqz p1, :cond_54

    .line 201
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchResultView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_NameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_followUserFragment_omlet_id"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_55

    .line 204
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CancelFollow:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_54
    :goto_54
    return-void

    .line 207
    :cond_55
    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->isUserFollow:Z

    .line 208
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->SetFollowBtn()V

    goto :goto_54
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myAccount:Ljava/lang/String;

    .line 70
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 71
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_fragment_add_follow_user"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "image_button_back"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 78
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "search_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchButton:Landroid/widget/ImageButton;

    .line 86
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchButton:Landroid/widget/ImageButton;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "cleantext_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CleanButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CleanButton:Landroid/widget/ImageButton;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$3;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "search_text"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    .line 107
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$4;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "my_id_text"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_MyIdText:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_MyIdText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_followUserFragment_your_id"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "search_result"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchResultView:Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user_profile_image"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, "profileImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_btn_loadingheadpic_onpost"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user_profile_name"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_NameText:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "add_follow_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_AddFollow:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "cancel_follow_btn"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CancelFollow:Landroid/view/View;

    .line 139
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_AddFollow:Landroid/view/View;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_CancelFollow:Landroid/view/View;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$7;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    invoke-virtual {v3, v4}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 189
    return-object v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 247
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 248
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 242
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 236
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->searchUser()V

    .line 237
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 226
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 231
    return-void
.end method
