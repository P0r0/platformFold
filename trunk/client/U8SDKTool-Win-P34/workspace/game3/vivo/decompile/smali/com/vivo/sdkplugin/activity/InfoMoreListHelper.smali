.class public Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Lcom/vivo/sdkplugin/activity/cg;

.field e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

.field private f:Landroid/content/Context;

.field private g:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

.field private h:Landroid/os/Handler;

.field private i:Lcom/vivo/sdkplugin/activity/cf;

.field private j:Landroid/app/FragmentManager;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private m:Ljava/util/ArrayList;

.field private n:I

.field private o:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stregty_all_tag"

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->h:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;I)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->n:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Lcom/vivo/sdkplugin/activity/cg;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/cg;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->l:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/util/List;)V
    .registers 5

    const-string v0, "\u5168\u90e8"

    new-instance v1, Lcom/vivo/sdkplugin/activity/cg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/activity/cg;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;B)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    const-string v2, "stregty_all_tag"

    iput-object v2, v1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    const-string v2, "stregty_all_tag"

    iput-object v2, v1, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/vivo/sdkplugin/activity/cg;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->m:Ljava/util/ArrayList;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/vivo/sdkplugin/activity/cf;

    invoke-direct {v2, p0, v0}, Lcom/vivo/sdkplugin/activity/cf;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->o:Ljava/util/ArrayList;

    :cond_46
    invoke-direct {p0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/cg;)V

    return-void
.end method

.method private a(Lcom/vivo/sdkplugin/activity/cg;)V
    .registers 10

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    :cond_18
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    if-nez v0, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    if-eqz v0, :cond_32

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_32
    const-string v1, "VivoGame.InfoMoreListHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mPreFragTag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data.tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->j:Landroid/app/FragmentManager;

    iget-object v1, p1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    if-nez v0, :cond_e6

    invoke-static {}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->newInstance()Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "game_info_more_category_grid_layout"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->l:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->refreshData(Ljava/util/List;)V

    const-string v1, "stregty_all_tag"

    iget-object v2, p1, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->g:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vivo/sdkplugin/Utils/HJDataUtil;)V

    :cond_d3
    const v1, 0x1020011

    iget-object v2, p1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-virtual {v7, v1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_db
    :try_start_db
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_e0

    goto/16 :goto_1c

    :catch_e0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    :cond_e6
    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_ef
    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_db
.end method

.method private a(Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 9

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2f

    add-int/lit8 v0, v0, -0x1

    :goto_16
    const/4 v1, 0x6

    if-gt v0, v1, :cond_59

    const-string v0, "\u66f4\u591a..."

    new-instance v1, Lcom/vivo/sdkplugin/activity/cg;

    invoke-direct {v1, p0, v2}, Lcom/vivo/sdkplugin/activity/cg;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;B)V

    iput-boolean v2, v1, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    const-string v2, "more_stragety_tag"

    iput-object v2, v1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    const-string v2, "more_stragety_tag"

    iput-object v2, v1, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/vivo/sdkplugin/activity/cg;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lcom/vivo/sdkplugin/activity/cg;

    invoke-direct {v4, p0, v2}, Lcom/vivo/sdkplugin/activity/cg;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;B)V

    iput-boolean v2, v4, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/vivo/sdkplugin/activity/cg;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/vivo/sdkplugin/activity/cg;->d:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_16
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_1d

    move-result-object v1

    :try_start_b
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_15} :catch_20

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_1d
    move-exception v1

    move-object v1, v0

    goto :goto_16

    :catch_20
    move-exception v2

    goto :goto_16
.end method

.method public initView(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 7

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cb;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cb;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "tv_TAG_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a:Landroid/widget/LinearLayout;

    const v0, 0x1020011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iput-object p3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->c:Landroid/view/View;

    return-void
.end method

.method public onEmpty(I)V
    .registers 5

    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------onEmpty-------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->h:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cc;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cc;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public onFailed(I)V
    .registers 5

    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------onFailed-------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->h:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/cd;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cd;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    invoke-virtual {v0, p3}, Lcom/vivo/sdkplugin/activity/cf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/activity/cg;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data.key"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPreFragTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    :goto_4f
    return-void

    :cond_50
    const-string v0, "more_stragety_tag"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/cf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_86

    :goto_6f
    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPreFragTagonItemClick"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v2, 0x32

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_69

    :cond_95
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->n:I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e1

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u7f51\u7edc\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_c1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cf;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e7

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iput-boolean v4, v0, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->i:Lcom/vivo/sdkplugin/activity/cf;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/cf;->notifyDataSetChanged()V

    goto :goto_6f

    :cond_e1
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/cg;)V

    goto :goto_c1

    :cond_e7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/activity/cg;

    iget-boolean v2, v0, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    if-eqz v2, :cond_d1

    iput-boolean v3, v0, Lcom/vivo/sdkplugin/activity/cg;->a:Z

    goto :goto_d1
.end method

.method public onSuccess(IZLjava/lang/Object;Ljava/util/List;)V
    .registers 8

    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------onSuccess-------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasMore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->h:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/ce;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/vivo/sdkplugin/activity/ce;-><init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;ZLjava/lang/Object;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method

.method public requestAllStraegty(I)V
    .registers 8

    iget v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->n:I

    if-gtz v0, :cond_6

    iput p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->n:I

    :cond_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->g:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    const/4 v1, 0x1

    const-string v2, "stregty_all_tag"

    invoke-virtual {v0, p1, v1, v2}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestHjStrategyList(IILjava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->f:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "vivo_loading_string"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->show()V

    return-void
.end method

.method public setLoadingState(I)V
    .registers 2

    return-void
.end method

.method public setParams(Lcom/vivo/sdkplugin/Utils/HJDataUtil;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->g:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->g:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    const-string v1, "stregty_all_tag"

    invoke-virtual {v0, v1, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->addmListItemListener(Ljava/lang/String;Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V

    return-void
.end method
