.class public Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;
.super Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/os/Handler;

.field private f:Lcom/vivo/sdkplugin/activity/fx;

.field private g:Landroid/content/res/Resources;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/HandlerThread;

.field private n:Lcom/vivo/sdkplugin/activity/ft;

.field private o:Landroid/content/Context;

.field private p:Lcom/vivo/sdkplugin/net/HttpConnect;

.field private q:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f:Lcom/vivo/sdkplugin/activity/fx;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->g:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->n:Lcom/vivo/sdkplugin/activity/ft;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account"

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pwd"

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_COMMIT_VERIFY_CODE_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/fu;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/fu;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method private a(I)V
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    iget v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    if-ne v0, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pwd"

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-direct {v0, p0, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_GET_VERIFY_CODE_URL:Ljava/lang/String;

    new-instance v7, Lcom/vivo/sdkplugin/activity/fv;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/activity/fv;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    return-object v3
.end method

.method private b(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->showDialog(I)V

    iput p1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    :cond_b
    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V
    .registers 3

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.CIMMIT_VERIFY_CODE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/activity/ft;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/activity/ft;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->n:Lcom/vivo/sdkplugin/activity/ft;

    :cond_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->e:Landroid/os/Handler;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/vivo/sdkplugin/activity/fw;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/fw;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->e:Landroid/os/Handler;

    :cond_2b
    invoke-static {p0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b(I)V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->n:Lcom/vivo/sdkplugin/activity/ft;

    invoke-virtual {v0, p1}, Lcom/vivo/sdkplugin/activity/ft;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    return-void
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(I)V

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Lcom/vivo/sdkplugin/activity/fx;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f:Lcom/vivo/sdkplugin/activity/fx;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public cancelBgThread()V
    .registers 4

    const-string v0, "VerifyMobileNumLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelBgThread, mBackgroundThread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->m:Landroid/os/HandlerThread;

    :cond_22
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->p:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/net/HttpConnect;->cancelConnect()V

    :cond_2b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VerifyMobileNumLog"

    const-string v1, "***********************onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->o:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_verify_phone_num"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleRightBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_num_verify_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "get_verify_code"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->g:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->g:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->g:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fo;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fo;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fp;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fp;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fq;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fq;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/fr;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fr;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->k:Ljava/lang/String;

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/vivo/sdkplugin/activity/fx;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/sdkplugin/activity/fx;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;JJ)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f:Lcom/vivo/sdkplugin/activity/fx;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->f:Lcom/vivo/sdkplugin/activity/fx;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/fx;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "VerifyMobileNumLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateDialog, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    sparse-switch p1, :sswitch_data_52

    const-string v0, "VerifyMobileNumLog"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_24
    return-object v0

    :sswitch_25
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_24

    :sswitch_3e
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/fs;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/fs;-><init>(Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_20

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_25
        0x64 -> :sswitch_3e
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoGameSDKBaseActvitiy;->onDestroy()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->cancelBgThread()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "VerifyMobileNumLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onKey,keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curDlgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2f

    iget v1, p0, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->q:I

    if-nez v1, :cond_2e

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->a(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/VerifyPhoneNumActivity;->cancelBgThread()V

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    return v0
.end method
