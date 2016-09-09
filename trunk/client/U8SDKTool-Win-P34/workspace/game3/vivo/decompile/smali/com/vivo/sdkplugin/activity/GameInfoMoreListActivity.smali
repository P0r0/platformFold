.class public Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;


# static fields
.field public static final GAME_DEATIL_KEY:Ljava/lang/String; = "game_detail"

.field public static final GAME_INFO_DETAIL_KEY:Ljava/lang/String; = "game_info_detail"

.field public static final GAME_INFO_HJ_STRATEGY_FILTER_KEY:Ljava/lang/String; = "game_info_hj_strategy_filter_key"

.field public static final GAME_INFO_TYPE_KEY:Ljava/lang/String; = "game_info_type"

.field public static mActivity:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# instance fields
.field a:Lcom/vivo/sdkplugin/Utils/FooterListView;

.field b:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

.field c:Ljava/util/ArrayList;

.field d:Landroid/content/Context;

.field e:I

.field f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

.field private o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Landroid/widget/Button;

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->q:I

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    iput v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e:I

    iput-boolean v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->s:Z

    new-instance v0, Lcom/vivo/sdkplugin/activity/bO;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/bO;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;I)V
    .registers 2

    iput p1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->t:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->t:I

    return v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)I
    .registers 2

    iget v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->q:I

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_8
    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_15
    move v0, v1

    goto :goto_8

    :cond_17
    const/16 v1, 0x8

    goto :goto_c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->u:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_25
.end method

.method public onBackPressed()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/FooterListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u4e0d\u5230\u4f60\u8981\u7684\u653b\u7565"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_21
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_35
    return-void

    :cond_36
    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onBackPressed()V

    goto :goto_35
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/16 v4, 0x8

    const-string v0, "VivoGame.GameInfoMoreActivity"

    const-string v1, "1111111111111111111111111"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    :cond_1f
    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    const-string v2, "\u65e0\u6cd5\u8fde\u63a5\u7f51\u7edc,\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u91cd\u8bd5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_58
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e:I

    iget v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e:I

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->onLoadDatamore(I)V

    goto :goto_2b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->mActivity:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->setOritation(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "game_info_more_list_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "info_search_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "info_search_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "close_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "search_result_list_view"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/Utils/FooterListView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setNeedFooterView(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "titleRightBtn"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bP;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bP;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bQ;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bQ;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->b:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->b:Lcom/vivo/sdkplugin/adapter/HjStrategyListAdapter;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bR;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bR;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setLoadDataListener(Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a:Lcom/vivo/sdkplugin/Utils/FooterListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/FooterListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "info_category"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "reload_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bS;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bS;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "tv_TAG_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->initView(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_info_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v1, "game_info_hj_strategy_filter_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->l:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->q:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->m:Landroid/os/Handler;

    const-string v1, "game_info_hj_strategy_filter_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->l:Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmListItemListener(Lcom/vivo/sdkplugin/Utils/HJDataUtil$RequestListItemListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmGameName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->setmPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->setParams(Lcom/vivo/sdkplugin/Utils/HJDataUtil;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->o:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->q:I

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->requestAllStraegty(I)V

    return-void
.end method

.method public onEmpty(I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->m:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bT;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bT;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFailed(I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->m:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bU;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bU;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadDatamore(I)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    :cond_16
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e:I

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->n:Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v0}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestSearchStrategy(IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(IZLjava/lang/Object;Ljava/util/List;)V
    .registers 8

    check-cast p3, Ljava/util/ArrayList;

    const-string v0, "VivoGame.GameInfoMoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "infoListonSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasMore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->s:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->s:Z

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->m:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bV;

    invoke-direct {v1, p0, p2}, Lcom/vivo/sdkplugin/activity/bV;-><init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_37
    iput-object p3, p0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c:Ljava/util/ArrayList;

    goto :goto_2c
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
