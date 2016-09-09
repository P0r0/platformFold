.class public Lcom/vivo/sdkplugin/activity/RegisterActivity;
.super Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final KEY_SWITCH_ACCOUNT:Ljava/lang/String; = "switchAccount"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private n:Lcom/vivo/sdkplugin/accounts/RegisterManager;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Z

.field private t:Lcom/vivo/sdkplugin/ReportFirstLoginManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;-><init>()V

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/vivo/sdkplugin/activity/dl;

    invoke-direct {v0, p0, v2}, Lcom/vivo/sdkplugin/activity/dl;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c:Landroid/os/Handler;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->d:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->f:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    iput-boolean v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->s:Z

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "RegisterActivity"

    const-string v1, "-----setCancelResult()-------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->finish()V

    return-void
.end method

.method private a(I)V
    .registers 4

    const/4 v1, -0x1

    :try_start_1
    iget v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    if-ne v0, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->dismissDialog(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I
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

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/RegisterActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_b

    iput p1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    invoke-virtual {p0, p1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->showDialog(I)V

    :cond_b
    return-void
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/activity/RegisterActivity;I)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    return-void
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->t:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Lcom/vivo/sdkplugin/accounts/RegisterManager;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->n:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/vivo/sdkplugin/activity/RegisterActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->s:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "RegisterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------onActivityResult-----resultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2c

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->finish()V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2b
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onBackPressed()V

    invoke-direct {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RegisterActivity"

    const-string v1, "***********************onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "vivo_phone_register_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->h:Landroid/content/Context;

    const-string v0, "014"

    const-string v1, "\u2014\u2014"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->h:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "visitor"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->s:Z

    :cond_33
    new-instance v0, Lcom/vivo/sdkplugin/accounts/RegisterManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/RegisterManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->n:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->m:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_phone_icon"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "phone_reg_title"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "titleLeftBtn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/de;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/de;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/sdkplugin/activity/df;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/df;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_login_total_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->hideKeyboradListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_registe_email_layout"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "turn_to_regist2_btn"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "account_name_input"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dg;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dg;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dh;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dh;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->d:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->d:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_error"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->d:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "vivo_indicator_input_pass"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/di;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/di;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "read_protocol_textview"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/activity/dj;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dj;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->s:Z

    if-eqz v0, :cond_1bd

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->h:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_temp_bind_phone_title"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->j:Landroid/widget/TextView;

    const-string v1, "\u90ae\u7bb1\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1bd
    new-instance v0, Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->t:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    const-string v0, "RegisterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curDlgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    sparse-switch p1, :sswitch_data_4e

    :goto_1b
    invoke-super {p0, p1, p2}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_1f
    return-object v0

    :sswitch_20
    new-instance v0, Lcom/vivo/sdkplugin/Utils/DialogUtil;

    invoke-direct {v0, p0, p0}, Lcom/vivo/sdkplugin/Utils/DialogUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/DialogUtil;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/vivo/sdkplugin/activity/dk;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dk;-><init>(Lcom/vivo/sdkplugin/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1b

    :sswitch_34
    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "vivo_loading_string"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1f

    nop

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_34
        0x64 -> :sswitch_20
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onDestroy()V

    const-string v0, "RegisterActivity"

    const-string v1, "------onDestroy()---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->n:Lcom/vivo/sdkplugin/accounts/RegisterManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/RegisterManager;->cleanSp()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->t:Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->cancelReportFirstLogin()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "RegisterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---------------keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curDlgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2c

    iget v1, p0, Lcom/vivo/sdkplugin/activity/RegisterActivity;->l:I

    if-nez v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/activity/RegisterActivity;->a(I)V

    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onResume()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->onStop()V

    const-string v0, "RegisterActivity"

    const-string v1, "------onStop()---------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
