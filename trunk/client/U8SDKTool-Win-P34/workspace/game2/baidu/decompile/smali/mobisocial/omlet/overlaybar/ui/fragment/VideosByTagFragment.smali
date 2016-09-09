.class public Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;
.super Landroid/app/Fragment;
.source "VideosByTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;
    }
.end annotation


# static fields
.field private static final ARGUMENT_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field public static final EXTRA_TAG:Ljava/lang/String; = "extraTag"

.field static final TAG:Ljava/lang/String; = "Latest"


# instance fields
.field _BackImageButton:Landroid/widget/ImageButton;

.field _FilterButton:Landroid/widget/ImageButton;

.field _FilterClearText:Landroid/widget/TextView;

.field _FilterListView:Landroid/widget/ListView;

.field _FilterMenu:Landroid/view/ViewGroup;

.field _FilterMenuContainer:Landroid/view/ViewGroup;

.field private _FilterMenuOnClickListener:Landroid/view/View$OnClickListener;

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

.field private _ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private _ItemsView:Landroid/support/v7/widget/RecyclerView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field _Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

.field _Title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterMenuOnClickListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 75
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "arguments":Landroid/os/Bundle;
    iput-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 77
    const-string v2, ""

    .line 78
    .local v2, "tag":Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 79
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extraTag"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    new-instance v3, Lmobisocial/longdan/LDProtocols$LDPostTag;

    invoke-direct {v3}, Lmobisocial/longdan/LDProtocols$LDPostTag;-><init>()V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 81
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    const-string v4, "String"

    iput-object v4, v3, Lmobisocial/longdan/LDProtocols$LDPostTag;->TagType:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    iput-object v2, v3, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    .line 84
    :cond_27
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 85
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_fragment_videos_by_tag"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "filter_menu"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "filter"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterButton:Landroid/widget/ImageButton;

    .line 88
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterMenuOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "image_button_back"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 90
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "title"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Title:Landroid/widget/TextView;

    .line 98
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "omp_videosByTagFragment_videos_tagged"

    invoke-static {v6, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "items_container"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 101
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;

    invoke-direct {v3, p0, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;)V

    new-array v4, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    return-object v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 174
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$4;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 181
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 162
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$3;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 169
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 186
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/app/Activity;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 188
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 227
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 232
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 233
    return-void
.end method
