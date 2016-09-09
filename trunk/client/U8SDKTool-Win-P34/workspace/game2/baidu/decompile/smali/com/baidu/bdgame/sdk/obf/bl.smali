.class public Lcom/baidu/bdgame/sdk/obf/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x3e7


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/cs;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Lcom/baidu/bdgame/sdk/obf/bo;

.field private u:Lcom/baidu/bdgame/sdk/obf/s;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 75
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/bl;->c:Z

    .line 76
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->b()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bl;Lcom/baidu/bdgame/sdk/obf/bo;)Lcom/baidu/bdgame/sdk/obf/bo;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl;->t:Lcom/baidu/bdgame/sdk/obf/bo;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bl;Lcom/baidu/bdgame/sdk/obf/s;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bl;->u:Lcom/baidu/bdgame/sdk/obf/s;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/bl;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    .line 434
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->b(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$15;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 478
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "bdp_controller_account_login_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "edt_focus"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->e:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "edt_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->f:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_account_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->g:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_arrow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->h:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "edt_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->i:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_pass_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->j:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "txt_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->k:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->l:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "lin_other_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->m:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_qq_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->n:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_renren_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->o:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_sina_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->p:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_txweibo_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->q:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "img_logo"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->r:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    const-string v2, "lin_history"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->s:Landroid/widget/LinearLayout;

    .line 98
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->c()V

    .line 99
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$1;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$16;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$16;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$2;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$3;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$4;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$5;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$6;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$7;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$8;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->l:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$9;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->c:Z

    if-eqz v0, :cond_b0

    .line 312
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$10;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$11;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$12;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$13;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :goto_9d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bl$14;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/bl$14;-><init>(Lcom/baidu/bdgame/sdk/obf/bl;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/o;)V

    .line 413
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->d()V

    .line 414
    return-void

    .line 343
    :cond_b0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9d
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/bl;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->d()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bl;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 420
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    :goto_20
    return-void

    .line 423
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 424
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 427
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/cs;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    instance-of v0, v0, Lcom/baidu/bdgame/sdk/obf/nf;

    if-eqz v0, :cond_d

    .line 482
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->b:Lcom/baidu/bdgame/sdk/obf/cs;

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/nf;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nf;->f()V

    .line 484
    :cond_d
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/bl;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->u:Lcom/baidu/bdgame/sdk/obf/s;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/bl;)V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->e()V

    return-void
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/bl;)Lcom/baidu/bdgame/sdk/obf/bo;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->t:Lcom/baidu/bdgame/sdk/obf/bo;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    if-nez v0, :cond_7

    .line 492
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->b()V

    .line 494
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bl;->d:Landroid/view/View;

    return-object v0
.end method
