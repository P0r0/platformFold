.class public Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;
.super Landroid/app/Fragment;
.source "LatestFragment.java"


# static fields
.field public static final ARGUMENT_PACKAGE_ID:Ljava/lang/String; = "package_id"

.field static final TAG:Ljava/lang/String; = "Latest"


# instance fields
.field _BackImageButton:Landroid/widget/ImageButton;

.field private _CachedPages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field _FilterButton:Landroid/widget/ImageButton;

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

.field _NextImageButton:Landroid/widget/ImageButton;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _PageKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private _PageNumber:I

.field _PageNumberText:Landroid/widget/TextView;

.field private _ResultsPerPage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    const/16 v0, 0x28

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ResultsPerPage:I

    .line 126
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuOnClickListener:Landroid/view/View$OnClickListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->loadPreviousPage()V

    return-void
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->loadNextPage()V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Lmobisocial/omlib/api/OmletApiManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ResultsPerPage:I

    return v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_CachedPages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->uiSetPageNumber(I)V

    return-void
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->updateVideos(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$902(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    return p1
.end method

.method private getVideosForPage(I)V
    .registers 4
    .param p1, "pageNumber"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_CachedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 202
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_CachedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_Items:Ljava/util/List;

    .line 203
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->uiSetPageNumber(I)V

    .line 204
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_Items:Ljava/util/List;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->updateVideos(Ljava/util/List;)V

    .line 205
    iput p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    .line 254
    :goto_24
    return-void

    .line 208
    :cond_25
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    goto :goto_24
.end method

.method private loadNextPage()V
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getVideosForPage(I)V

    .line 268
    return-void
.end method

.method private loadPreviousPage()V
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 272
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getVideosForPage(I)V

    .line 274
    :cond_c
    return-void
.end method

.method private uiSetPageNumber(I)V
    .registers 4
    .param p1, "pageNumber"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumberText:Landroid/widget/TextView;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method

.method private updateVideos(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDProtocols$LDPostContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lmobisocial/longdan/LDProtocols$LDPostContainer;>;"
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->setPostItems(Ljava/util/List;)V

    .line 258
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "omp_fragment_latest"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 88
    .local v6, "screen":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "filter_menu"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    .line 90
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "image_button_back"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_BackImageButton:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_BackImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "image_button_next"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_NextImageButton:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_NextImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    .line 108
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "text_page_number"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumberText:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "items_container"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    .line 110
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 111
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 113
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_CachedPages:Ljava/util/HashMap;

    .line 123
    return-object v6
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 184
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$6;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$6;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 191
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 172
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$5;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 179
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 196
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 197
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getVideosForPage(I)V

    .line 198
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 263
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 264
    return-void
.end method
