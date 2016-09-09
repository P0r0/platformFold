.class public Lcom/baidu/bdgame/sdk/obf/nn;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final a:Ljava/lang/String; = "http://wappass.baidu.com/passport/agreement"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 75
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->q:Z

    .line 77
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->r:Z

    .line 83
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->PV_QUICK_USER_REG:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nn;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nn;Z)Z
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/nn;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nn;Z)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nn;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 471
    if-eqz p1, :cond_9

    .line 472
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    :goto_8
    return-void

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nn;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nn;->n()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nn;Z)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/nn;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 483
    if-eqz p1, :cond_1a

    .line 484
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 492
    :goto_19
    return-void

    .line 488
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_19
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    invoke-direct {v3}, Lcom/baidu/sapi2/dto/QuickUserRegDTO;-><init>()V

    .line 331
    iput-object v0, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->username:Ljava/lang/String;

    .line 332
    iput-object v1, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->password:Ljava/lang/String;

    .line 333
    iput-object v2, v3, Lcom/baidu/sapi2/dto/QuickUserRegDTO;->captcha:Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/nn$18;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/nn$18;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/SapiAccountService;->quickUserReg(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    .line 413
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/nn;)Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 417
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->getCaptchaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 418
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 445
    :cond_22
    return-void
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/nn;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nn;->g()V

    return-void
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/nn;)V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nn;->f()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/nn;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/nn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 452
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 464
    :goto_2a
    return-void

    .line 455
    :cond_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3e

    .line 456
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 459
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 460
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a

    .line 463
    :cond_52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2a
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_register_baidu"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-string v0, "txt_back"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->b:Landroid/widget/TextView;

    .line 90
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->c:Landroid/widget/ImageView;

    .line 91
    const-string v0, "edt_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    .line 92
    const-string v0, "img_account_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->e:Landroid/widget/ImageView;

    .line 93
    const-string v0, "edt_pass"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    .line 94
    const-string v0, "img_pass_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->g:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_show"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->h:Landroid/widget/ImageView;

    .line 96
    const-string v0, "lin_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->i:Landroid/widget/LinearLayout;

    .line 97
    const-string v0, "edt_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    .line 98
    const-string v0, "img_verifycode_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->k:Landroid/widget/ImageView;

    .line 99
    const-string v0, "img_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->l:Landroid/widget/ImageView;

    .line 100
    const-string v0, "img_verifycode_loading"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->m:Landroid/widget/ImageView;

    .line 101
    const-string v0, "img_change_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->n:Landroid/widget/ImageView;

    .line 102
    const-string v0, "btn_register"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    .line 103
    const-string v0, "txt_agreement"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->p:Landroid/widget/TextView;

    .line 104
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$3;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$4;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$5;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$6;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$7;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$8;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$9;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$10;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$11;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$12;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$13;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$14;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$15;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->o:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$16;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$16;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nn$17;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nn$17;-><init>(Lcom/baidu/bdgame/sdk/obf/nn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nn;->n()V

    .line 324
    return-void
.end method

.method protected a(Lcom/baidu/sapi2/utils/StatEvent;)V
    .registers 3

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->r:Z

    if-eqz v0, :cond_a

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nn;->r:Z

    .line 498
    invoke-static {p1}, Lcom/baidu/sapi2/utils/StatService;->onEvent(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 500
    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    sget-object v0, Lcom/baidu/sapi2/utils/StatEvent;->OP_QUICK_USER_REG:Lcom/baidu/sapi2/utils/StatEvent;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/nn;->a(Lcom/baidu/sapi2/utils/StatEvent;)V

    .line 505
    const/4 v0, 0x0

    return v0
.end method
