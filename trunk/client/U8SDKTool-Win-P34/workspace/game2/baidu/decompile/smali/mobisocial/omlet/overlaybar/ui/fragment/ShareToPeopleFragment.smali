.class public Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
.super Landroid/app/Fragment;
.source "ShareToPeopleFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShareToPeople"


# instance fields
.field _BackImageButton:Landroid/widget/ImageButton;

.field _CleanButton:Landroid/widget/ImageButton;

.field _EmptyText:Landroid/widget/TextView;

.field _FansUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _FinishText:Landroid/widget/TextView;

.field _FollowUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _ListView:Landroid/widget/ListView;

.field _SearchButton:Landroid/widget/ImageButton;

.field _SearchEditText:Landroid/widget/EditText;

.field _SearchNoResultText:Landroid/widget/TextView;

.field _SelectedUserContainer:Landroid/view/ViewGroup;

.field _SelectedUserScrollView:Landroid/widget/HorizontalScrollView;

.field private _SelectedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private AddItemToTop(Ljava/lang/String;)V
    .registers 10
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_selected_user_item"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, "user":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "profile_icon"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    .local v3, "userImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_btn_loadingheadpic_onpost"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "text_test"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, "testText":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$5;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$6;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->searchUser()V

    return-void
.end method

.method private searchUser()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 152
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_CleanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->showSearchResult(Z)V

    .line 158
    :goto_16
    return-void

    .line 155
    :cond_17
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_CleanButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->setListViewAdapter()V

    goto :goto_16
.end method

.method private setListViewAdapter()V
    .registers 7

    .prologue
    .line 136
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-direct {v0, v3, p0, v4}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;-><init>(Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;Ljava/util/ArrayList;)V

    .line 137
    .local v0, "adapter":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_shareToPeopleFragment_following"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->addSectionHeaderItem(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FansUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 139
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FansUsers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->addItem(Ljava/lang/String;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 142
    .end local v2    # "user":Ljava/lang/String;
    :cond_37
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_shareToPeopleFragment_follower"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->addSectionHeaderItem(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    :goto_4d
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FollowUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_63

    .line 144
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FollowUsers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .restart local v2    # "user":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->addItem(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 147
    .end local v2    # "user":Ljava/lang/String;
    :cond_63
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method private showSearchResult(Z)V
    .registers 5
    .param p1, "success"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_27

    .line 162
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchNoResultText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;-><init>(Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;Ljava/util/ArrayList;)V

    .line 164
    .local v0, "adapter":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->addItem(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_ListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    .end local v0    # "adapter":Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;
    :goto_26
    return-void

    .line 167
    :cond_27
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchNoResultText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26
.end method


# virtual methods
.method public AddSharePeople(Ljava/lang/String;)V
    .registers 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->AddItemToTop(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public OpenProfile(Ljava/lang/String;)V
    .registers 7
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->myAccount:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    .line 224
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v3, v4, [Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 230
    :goto_16
    return-void

    .line 226
    :cond_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method public RemoveSharePeople(Ljava/lang/String;)V
    .registers 7
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "removeTag":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 206
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, "tagView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3e

    .line 209
    move-object v1, v2

    .line 214
    .end local v2    # "tagView":Landroid/view/View;
    :cond_23
    if-eqz v1, :cond_2f

    .line 215
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    :cond_2f
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3d

    .line 219
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    :cond_3d
    return-void

    .line 205
    .restart local v2    # "tagView":Landroid/view/View;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->myAccount:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "omp_fragment_share_to_people"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "image_button_back"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 74
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "text_finish"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FinishText:Landroid/widget/TextView;

    .line 75
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$1;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    .line 82
    .local v0, "backOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_BackImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$2;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    .line 90
    .local v3, "shareOnClickListener":Landroid/view/View$OnClickListener;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FinishText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "search_btn"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchButton:Landroid/widget/ImageButton;

    .line 92
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "cleantext_btn"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_CleanButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_CleanButton:Landroid/widget/ImageButton;

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$3;

    invoke-direct {v6, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "search_text"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchEditText:Landroid/widget/EditText;

    .line 102
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchEditText:Landroid/widget/EditText;

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$4;

    invoke-direct {v6, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "selected_user_scrollview"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserScrollView:Landroid/widget/HorizontalScrollView;

    .line 113
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "selected_user_container"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "text_empty_hint"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_EmptyText:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "text_search_no_result"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SearchNoResultText:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "share_to_people_listview"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_ListView:Landroid/widget/ListView;

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FansUsers:Ljava/util/List;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f3
    const/4 v5, 0x7

    if-ge v1, v5, :cond_128

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "James00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "user":Ljava/lang/String;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FansUsers:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "James00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    .line 125
    .end local v4    # "user":Ljava/lang/String;
    :cond_128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FollowUsers:Ljava/util/List;

    .line 126
    const/4 v1, 0x0

    :goto_130
    const/4 v5, 0x3

    if-ge v1, v5, :cond_150

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Soudelor00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .restart local v4    # "user":Ljava/lang/String;
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_FollowUsers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 131
    .end local v4    # "user":Ljava/lang/String;
    :cond_150
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->setListViewAdapter()V

    .line 132
    return-object v2
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 256
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 245
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 247
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "user":Ljava/lang/String;
    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->AddItemToTop(Ljava/lang/String;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 250
    .end local v1    # "user":Ljava/lang/String;
    :cond_1f
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->searchUser()V

    .line 251
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 235
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 240
    return-void
.end method
