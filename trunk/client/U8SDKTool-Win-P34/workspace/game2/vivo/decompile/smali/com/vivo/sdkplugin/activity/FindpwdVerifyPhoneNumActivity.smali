.class public Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/os/Handler;

.field private d:Lcom/vivo/sdkplugin/activity/bN;

.field private e:Landroid/content/res/Resources;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/os/HandlerThread;

.field private l:Lcom/vivo/sdkplugin/activity/bJ;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Ljava/lang/String;

.field public smsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->d:Lcom/vivo/sdkplugin/activity/bN;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->e:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->l:Lcom/vivo/sdkplugin/activity/bJ;

    new-instance v0, Lcom/vivo/sdkplugin/activity/bD;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/activity/bD;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/bJ;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/bJ;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->l:Lcom/vivo/sdkplugin/activity/bJ;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/bM;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/bM;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b(I)V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->l:Lcom/vivo/sdkplugin/activity/bJ;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/bJ;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h:Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->showDialog(I)V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V
    .registers 5

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_get_verify_code"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Lcom/vivo/sdkplugin/activity/bN;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->d:Lcom/vivo/sdkplugin/activity/bN;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->q:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->q:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPWDFORVALIDATECODE_URL:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v7, Lcom/vivo/sdkplugin/activity/bK;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/bK;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uuid"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_FINDPASSWORD_BY_PHONE_URL:Ljava/lang/String;

    const/4 v5, 0x1

    new-instance v7, Lcom/vivo/sdkplugin/activity/bL;

    invoke-direct {v7, p0, v4}, Lcom/vivo/sdkplugin/activity/bL;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;B)V

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic l(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->o:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, -0x1

    if-ne v2, p2, :cond_15

    const-string v0, "222222222222222"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, p3}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->finish()V

    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "***********************onCreate---------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_verify_phone_num"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->setContentView(I)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/bM;

    invoke-direct {v0, p0, v6}, Lcom/vivo/sdkplugin/activity/bM;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_find_password"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_verify_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "get_verify_code"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bE;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bE;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bF;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bF;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bG;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bG;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bH;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bH;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/bI;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/bI;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->e:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->e:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "phone_num_tip"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->i:Ljava/lang/String;

    const/4 v4, 0x7

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "uuid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/bN;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/bN;-><init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->d:Lcom/vivo/sdkplugin/activity/bN;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->d:Lcom/vivo/sdkplugin/activity/bN;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/bN;->start()Landroid/os/CountDownTimer;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    sparse-switch p1, :sswitch_data_34

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_e
    return-object v0

    :sswitch_f
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_e

    :sswitch_28
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    goto :goto_a

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_f
        0x64 -> :sswitch_28
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->k:Landroid/os/HandlerThread;

    :cond_f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_19

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public returnResult(Ljava/util/Map;)V
    .registers 2

    return-void
.end method
