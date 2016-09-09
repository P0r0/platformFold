.class public Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;
.super Landroid/app/Fragment;
.source "FollowingFragment.java"


# instance fields
.field _EmptyView:Landroid/widget/ScrollView;

.field _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;"
        }
    .end annotation
.end field

.field _ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field private _ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private _ItemsView:Landroid/support/v7/widget/RecyclerView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field _UserAccount:Ljava/lang/String;

.field private openAddFollowUser:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 215
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$5;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->openAddFollowUser:Landroid/view/View$OnClickListener;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public getUserAccount(Z)V
    .registers 5
    .param p1, "doSigninIfNeeded"    # Z

    .prologue
    .line 109
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "context":Landroid/app/Activity;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    invoke-direct {v2, p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;ZLandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 170
    return-void
.end method

.method public loadItems()V
    .registers 15

    .prologue
    .line 173
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 174
    .local v1, "context":Landroid/app/Activity;
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_e0

    .line 175
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 176
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "text_hint"

    invoke-static {v12, v13}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    .local v3, "hintText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "omp_followingFragment_follow_people_hint"

    invoke-static {v11, v12}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->fixSpanColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->openAddFollowUser:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, "isRecommend":Z
    if-eqz v6, :cond_f8

    .line 182
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "view_group_find_user"

    invoke-static {v12, v13}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, "findUserView":Landroid/view/View;
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "view_group_recommend_user"

    invoke-static {v12, v13}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 184
    .local v7, "recommendUserView":Landroid/view/ViewGroup;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 186
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6c
    const/4 v11, 0x4

    if-ge v4, v11, :cond_f8

    .line 187
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "omp_recommend_user"

    invoke-static {v11, v12}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 188
    .local v8, "user":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "image_user"

    invoke-static {v11, v12}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 189
    .local v9, "userImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "text_name"

    invoke-static {v11, v12}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 190
    .local v10, "userName":Landroid/widget/TextView;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "omp_btn_loadingheadpic_onpost"

    invoke-static {v12, v13}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "omp_followingFragment_superplayer"

    invoke-static {v12, v13}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 197
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "findUserView":Landroid/view/View;
    .end local v3    # "hintText":Landroid/widget/TextView;
    .end local v4    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "isRecommend":Z
    .end local v7    # "recommendUserView":Landroid/view/ViewGroup;
    .end local v8    # "user":Landroid/view/View;
    .end local v9    # "userImage":Landroid/widget/ImageView;
    .end local v10    # "userName":Landroid/widget/TextView;
    :cond_e0
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 198
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 199
    iget-object v11, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v12, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;

    invoke-direct {v12, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 207
    :cond_f8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_Items:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_fragment_following"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "items_container"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    .line 63
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 64
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "empty_following"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    .line 66
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_EmptyView:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "add_follow_user_btn"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 68
    .local v0, "addFollowUserBtn":Landroid/widget/ImageButton;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->openAddFollowUser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 92
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 75
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 82
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_UserAccount:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_UserAccount:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1c

    .line 83
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getUserAccount(Z)V

    .line 87
    :goto_1b
    return-void

    .line 85
    :cond_1c
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->loadItems()V

    goto :goto_1b
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 104
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getUserAccount(Z)V

    .line 106
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 212
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 213
    return-void
.end method
