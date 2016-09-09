.class public Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

.field private d:Ljava/util/ArrayList;

.field private e:Lcom/vivo/sdkplugin/adapter/SubAccount;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:I

.field private j:Landroid/widget/AdapterView$OnItemClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->i:I

    new-instance v0, Lcom/vivo/sdkplugin/activity/eL;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/eL;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/vivo/sdkplugin/activity/eM;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/eM;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .registers 4

    const-string v0, "SubAccountEditActivity"

    const-string v1, "-----refreshSubView() enter ------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SubAccountEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSubAccountList size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->c:Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->c:Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;I)V
    .registers 4

    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_d

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->i:I

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->showDialog(I)V

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;Lcom/vivo/sdkplugin/adapter/SubAccount;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->e:Lcom/vivo/sdkplugin/adapter/SubAccount;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->i:I

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)Lcom/vivo/sdkplugin/adapter/SubAccount;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->e:Lcom/vivo/sdkplugin/adapter/SubAccount;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onActivityResult(IILandroid/content/Intent;)V

    const-string v1, "SubAccountEditActivity"

    const-string v2, "--------onActivityResult-------"

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_42

    move v1, v0

    :goto_10
    if-eqz p3, :cond_44

    :goto_12
    and-int/2addr v0, v1

    if-eqz v0, :cond_3c

    const-string v0, "subAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/adapter/SubAccount;

    const-string v1, "SubAccountEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "-------subAccount: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3c

    move v2, v3

    :goto_34
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_46

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_42
    move v1, v3

    goto :goto_10

    :cond_44
    move v0, v3

    goto :goto_12

    :cond_46
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/sdkplugin/adapter/SubAccount;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMopenid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/adapter/SubAccount;->getMopenid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a()V

    const-string v0, "SubAccountEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "-----\u66ff\u6362\u7684\u7b2c\u51e0\u4e2a------: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_7e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_34
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SubAccountEditActivity"

    const-string v1, "---------onCreate------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_subaccount_edit_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "subAccountList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    :cond_27
    const-string v1, "SubAccountEditActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "----------subAccountList: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v1, v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditlist_parent_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditlist_listview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "subeditlist_back"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->c:Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->c:Lcom/vivo/sdkplugin/adapter/SubUserEditAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->a()V

    return-void

    :cond_c3
    const-string v0, ""

    goto/16 :goto_42
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    const-string v0, "SubAccountEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curDlgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->i:I

    packed-switch p1, :pswitch_data_34

    :goto_1b
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_20
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/eN;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/eN;-><init>(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1b

    :pswitch_data_34
    .packed-switch 0x64
        :pswitch_20
    .end packed-switch
.end method
