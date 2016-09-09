.class public Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;


# static fields
.field public static final MESSAGE_DATA_EMPTY:I = 0x1

.field public static final MESSAGE_DATA_READY:I = 0x3

.field protected static final MESSAGE_REFRESH_DATA_READY:I = 0x4

.field public static final MESSAGE_REQUEST_FAILED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "InfoMoreListFragment"

.field private static synthetic x:[I


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/util/List;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Lcom/vivo/sdkplugin/Utils/FooterController;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Lcom/vivo/sdkplugin/Utils/FooterListView;

.field private n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/util/ArrayList;

.field private s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

.field private t:Landroid/os/Handler;

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    const-string v0, "stregty_all_tag"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->p:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->u:Z

    new-instance v0, Lcom/vivo/sdkplugin/activity/bW;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/bW;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->w:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f:I

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->v:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->r:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->u:Z

    return-void
.end method

.method private static synthetic a()[I
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->x:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->values()[Lcom/vivo/sdkplugin/Utils/FooterController$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->EMPTY:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->HAS_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->LOADING:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/vivo/sdkplugin/Utils/FooterController$State;->NO_MORE:Lcom/vivo/sdkplugin/Utils/FooterController$State;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->x:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->g:Z

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/FooterController;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/HJDataUtil;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->v:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/FooterListView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    return-object v0
.end method

.method public static newInstance()Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;
    .registers 1

    new-instance v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-direct {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public convertInfo(Lcom/huanju/data/content/raw/info/HjInfoListItem;)Lcom/huanju/data/content/raw/info/HjInfoListItem;
    .registers 6

    new-instance v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-direct {v0}, Lcom/huanju/data/content/raw/info/HjInfoListItem;-><init>()V

    iget-object v1, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->title:Ljava/lang/String;

    iget-wide v2, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    iput-wide v2, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->ctime:J

    iget-object v1, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    iget-wide v2, p1, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J

    iput-wide v2, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->vcnt:J

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    :try_start_9
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_1e

    move-result-object v0

    :goto_14
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_1b
    move-exception v1

    move-object v1, v0

    goto :goto_14

    :catch_1e
    move-exception v2

    goto :goto_14
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->w:Landroid/os/Handler;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vivo/sdkplugin/Utils/HJDataUtil;)V
    .registers 8

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->q:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->p:Z

    iput-object p6, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {v0, p3, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->addmListItemListener(Ljava/lang/String;Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    iput v5, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "layout"

    const-string v3, "common_listview"

    invoke-static {v0, v1, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "id"

    const-string v4, "tv_TAG"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "id"

    const-string v4, "loading_view"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "id"

    const-string v4, "content_layout"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "id"

    const-string v4, "error_msg_view"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "id"

    const-string v4, "common_list"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/FooterListView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0, v5}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setNeedFooterView(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bX;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bX;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setLoadDataListener(Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-string v1, "layout"

    const-string v4, "load_more"

    invoke-static {v0, v1, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/Utils/FooterController;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-direct {v1, v0, v4}, Lcom/vivo/sdkplugin/Utils/FooterController;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setHasMore()V

    new-instance v0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-direct {v0, v1, v4}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bY;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bY;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_c2
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_14c

    const-string v0, "InfoMoreListFragment"

    const-string v1, "onCreateViewonCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_108

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "infoList"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "infoList.size()"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->n:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;->notifyDataSetChanged()V

    :cond_108
    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->t:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmListItemListener(Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->addmListItemListener(Ljava/lang/String;Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmGameName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->s:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    const/4 v1, 0x3

    iget v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f:I

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestHjStrategyList(IILjava/lang/String;)V

    return-object v3

    :cond_14c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->convertInfo(Lcom/huanju/data/content/raw/info/HjInfoListItem;)Lcom/huanju/data/content/raw/info/HjInfoListItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c2
.end method

.method public onEmpty(I)V
    .registers 2

    return-void
.end method

.method public onFailed(I)V
    .registers 2

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---onItemClick()--position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " di: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->m:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_50

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->getState()Lcom/vivo/sdkplugin/Utils/FooterController$State;

    move-result-object v0

    invoke-static {}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_76

    :goto_41
    return-void

    :pswitch_42
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setLoading()V

    iget v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->f:I

    const/4 v1, 0x3

    sget-object v2, Lcom/huanju/data/content/raw/HjRequestFrom;->hj_gamedetial:Lcom/huanju/data/content/raw/HjRequestFrom;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->request(IILcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_41

    :cond_50
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;

    iget-object v0, v0, Lcom/huanju/data/content/raw/info/HjInfoListItem;->id:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    const-class v3, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tab"

    const-string v2, "\u653b\u7565"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_41

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onSuccess(IZLjava/lang/Object;Ljava/util/List;)V
    .registers 8

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccessobj type"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasMore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDefaultObj"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->v:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->t:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ca;

    invoke-direct {v1, p0, p2, p3}, Lcom/vivo/sdkplugin/activity/ca;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    return-void
.end method

.method public refreshData()V
    .registers 6

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TAG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->g:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setHasMore()V

    :goto_32
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    return-void

    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    move-object v1, v0

    goto :goto_1a

    :cond_6a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h:Lcom/vivo/sdkplugin/Utils/FooterController;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterController;->setNoMore()V

    goto :goto_32
.end method

.method public refreshData(Ljava/util/List;)V
    .registers 5

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshDatamdataList"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public request(IILcom/huanju/data/content/raw/HjRequestFrom;)V
    .registers 19

    add-int/lit8 v7, p1, 0x1

    const-string v1, "InfoMoreListFragment"

    const-string v2, "%%%%%%requestNewsList%%%%%%%%"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InfoMoreListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/vivo/sdkplugin/activity/bZ;

    move/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/vivo/sdkplugin/activity/bZ;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;I)V

    iget-boolean v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->p:Z

    if-eqz v1, :cond_92

    const-string v1, "MyView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Strategy :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->o:Ljava/lang/String;

    const/16 v6, 0xa

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    :goto_61
    return-void

    :cond_62
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->q:Ljava/lang/String;

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->q:Ljava/lang/String;

    const/16 v6, 0xa

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/huanju/data/HjDataClient;->searchStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_61

    :cond_7c
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v8

    iget-object v10, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->d:Ljava/lang/String;

    iget-object v11, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->e:Ljava/lang/String;

    const/16 v12, 0xa

    move-object v9, v2

    move v13, v7

    move-object/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lcom/huanju/data/HjDataClient;->requestStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_61

    :cond_92
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/data/HjDataClient;->getInstance(Landroid/content/Context;)Lcom/huanju/data/HjDataClient;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->q:Ljava/lang/String;

    const/16 v4, 0xa

    move v5, v7

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/huanju/data/HjDataClient;->searchStrategyList(Lcom/huanju/data/content/raw/listener/IHjRequestItemListListener;Ljava/lang/String;IILcom/huanju/data/content/raw/HjRequestFrom;)V

    goto :goto_61
.end method

.method public showerror(I)V
    .registers 2

    return-void
.end method
