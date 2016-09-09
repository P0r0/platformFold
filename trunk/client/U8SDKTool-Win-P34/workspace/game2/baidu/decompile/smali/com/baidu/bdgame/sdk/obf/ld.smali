.class public Lcom/baidu/bdgame/sdk/obf/ld;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ld$b;,
        Lcom/baidu/bdgame/sdk/obf/ld$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/Button;

.field private n:Ljava/lang/String;

.field private o:Lcom/baidu/bdgame/sdk/obf/ld$a;

.field private p:Lcom/baidu/bdgame/sdk/obf/ld$b;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ld$a;)V
    .registers 6

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 58
    if-nez p3, :cond_d

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionListener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_d
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ld;->n:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ld;->o:Lcom/baidu/bdgame/sdk/obf/ld$a;

    .line 63
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ld$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ld;Z)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ld;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 264
    if-eqz p1, :cond_1a

    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 273
    :goto_19
    return-void

    .line 269
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_19
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ld;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->p()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ld;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->f:Landroid/widget/Button;

    return-object v0
.end method

.method private p()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    :goto_20
    return-void

    .line 223
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 227
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method private q()V
    .registers 3

    .prologue
    .line 232
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->getCaptchaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 233
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 257
    :cond_22
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 93
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_phonereg_valid"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->a:Landroid/widget/ImageView;

    .line 97
    const-string v0, "edt_phone"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    .line 98
    const-string v0, "img_phone_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->c:Landroid/widget/ImageView;

    .line 99
    const-string v0, "edt_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    .line 100
    const-string v0, "img_verifycode_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->e:Landroid/widget/ImageView;

    .line 101
    const-string v0, "btn_get_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->f:Landroid/widget/Button;

    .line 102
    const-string v0, "lin_captcha"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->g:Landroid/widget/LinearLayout;

    .line 103
    const-string v0, "edt_captcha"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    .line 104
    const-string v0, "img_captcha_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->i:Landroid/widget/ImageView;

    .line 105
    const-string v0, "img_captcha"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->j:Landroid/widget/ImageView;

    .line 106
    const-string v0, "img_captcha_loading"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->k:Landroid/widget/ImageView;

    .line 107
    const-string v0, "img_change_captcha"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->l:Landroid/widget/ImageView;

    .line 108
    const-string v0, "btn_submit"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    .line 109
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ld;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ld$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ld$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->o:Lcom/baidu/bdgame/sdk/obf/ld$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ld;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ld$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld$b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld$b;->b()V

    .line 70
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld$b;->a()V

    .line 71
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld$b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->p:Lcom/baidu/bdgame/sdk/obf/ld$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ld$b;->b()V

    .line 77
    :cond_d
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->q()V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_b
    :goto_b
    return-void

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_18

    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 286
    :cond_18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_69

    .line 287
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 289
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_phonereg_valid_empty_captcha"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_b

    .line 292
    :cond_42
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 294
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->o:Lcom/baidu/bdgame/sdk/obf/ld$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ld$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 297
    :cond_69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->i:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_75

    .line 298
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 299
    :cond_75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->l:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7d

    .line 300
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->q()V

    goto :goto_b

    .line 301
    :cond_7d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_a9

    .line 303
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 305
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->o:Lcom/baidu/bdgame/sdk/obf/ld$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ld;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ld;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ld$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 307
    :cond_a9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ld;->o:Lcom/baidu/bdgame/sdk/obf/ld$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ld$a;->a()V

    goto/16 :goto_b
.end method
