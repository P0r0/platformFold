.class public Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/sdkplugin/adapter/SubAccount;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private h:Landroid/os/HandlerThread;

.field private i:Lcom/vivo/sdkplugin/activity/eR;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->i:Lcom/vivo/sdkplugin/activity/eR;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/sdkplugin/activity/eO;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/eO;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->finish()V

    return-void
.end method

.method private a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;I)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/eR;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/eR;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->i:Lcom/vivo/sdkplugin/activity/eR;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->j:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/eT;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/eT;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->j:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(I)V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->i:Lcom/vivo/sdkplugin/activity/eR;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/eR;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMsubid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickname"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "tk"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3c
    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/vivo/sdkplugin/net/HttpConnect;->setappendSDKGreneralInfomation(Z)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_EDITSUBACCOUNT_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/eS;

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/eS;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3

    :cond_50
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/MD5;->encode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-----------pwd: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   md5Pwd:  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "pwd"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "subAccount"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SubAccountEditCommitActivity"

    const-string v1, "---------onCreate------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_subaccount_edit_commit_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v0, "subAccount"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    const-string v0, "position"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->l:I

    :cond_32
    const-string v0, "SubAccountEditCommitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----------mSubAccount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->g:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/activity/eT;

    invoke-direct {v0, p0, v3}, Lcom/vivo/sdkplugin/activity/eT;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->j:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "sub_edit_commit_subaccount_icon"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->m:Landroid/widget/ImageView;

    iget v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->l:I

    if-nez v0, :cond_111

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->m:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "vivo_sub_icon_blue"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_7b
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditcommit_back"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditcommit_subid"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditcommit_commit_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->b:Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMnickname()Ljava/lang/String;

    move-result-object v0

    :goto_ea
    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/eP;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eP;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_111
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->m:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "vivo_sub_icon_red"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7b

    :cond_120
    const-string v0, ""

    goto :goto_ea
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const/16 v2, 0x64

    const-string v0, "SubAccountEditCommitActivity"

    const-string v1, "---------onCreateDialog() enter ------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_29

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/sdkplugin/activity/eQ;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eQ;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_28
    return-object v0

    :cond_29
    if-ne p1, v2, :cond_35

    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditCommitActivity;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    :cond_35
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_28
.end method
