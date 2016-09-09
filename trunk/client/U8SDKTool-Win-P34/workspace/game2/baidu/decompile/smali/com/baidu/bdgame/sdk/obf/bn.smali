.class public Lcom/baidu/bdgame/sdk/obf/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cs;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/baidu/bdgame/sdk/obf/bo;

.field private o:Lcom/baidu/bdgame/sdk/obf/s;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 63
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/bn;->b:Z

    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->b()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bn;Lcom/baidu/bdgame/sdk/obf/bo;)Lcom/baidu/bdgame/sdk/obf/bo;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn;->n:Lcom/baidu/bdgame/sdk/obf/bo;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bn;Lcom/baidu/bdgame/sdk/obf/s;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bn;->o:Lcom/baidu/bdgame/sdk/obf/s;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "bdp_controller_account_login_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "edt_focus"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->d:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "edt_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->e:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "img_account_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->f:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "img_arrow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->g:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "edt_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->h:Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "img_pass_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->i:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "txt_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->j:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->k:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "img_logo"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->l:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    const-string v2, "lin_history"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->m:Landroid/widget/LinearLayout;

    .line 81
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->c()V

    .line 82
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$6;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$7;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$8;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$9;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$10;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$11;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$2;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$3;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->k:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bn$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bn$4;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->b:Z

    if-eqz v0, :cond_82

    .line 295
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :goto_6f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bn$5;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/bn$5;-><init>(Lcom/baidu/bdgame/sdk/obf/bn;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    .line 366
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->d()V

    .line 367
    return-void

    .line 297
    :cond_82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6f
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/bn;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->d()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bn;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    :goto_20
    return-void

    .line 376
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 377
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 380
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/cs;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    instance-of v0, v0, Lcom/baidu/bdgame/sdk/obf/ni;

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ni;->f()V

    .line 387
    :cond_d
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/bn;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->o:Lcom/baidu/bdgame/sdk/obf/s;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/bn;)V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->e()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/bn;)Lcom/baidu/bdgame/sdk/obf/bo;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->n:Lcom/baidu/bdgame/sdk/obf/bo;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    if-nez v0, :cond_7

    .line 395
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bn;->b()V

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bn;->c:Landroid/view/View;

    return-object v0
.end method
