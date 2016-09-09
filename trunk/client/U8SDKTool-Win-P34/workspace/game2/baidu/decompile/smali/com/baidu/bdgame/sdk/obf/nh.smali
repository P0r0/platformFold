.class public Lcom/baidu/bdgame/sdk/obf/nh;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/baidu/bdgame/sdk/obf/bm;

.field private f:Lcom/baidu/bdgame/sdk/obf/bl;

.field private g:Lcom/baidu/bdgame/sdk/obf/bn;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nh;)V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->n()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nh;)V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->g()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nh;)V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->h:Z

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_baidu_long"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nh;->e:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->h:Z

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nh;->f:Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bl;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->h:Z

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_login_title_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nh;->g:Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bn;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_baidu"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-string v0, "img_back"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->a:Landroid/widget/ImageView;

    .line 44
    const-string v0, "txt_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->b:Landroid/widget/TextView;

    .line 45
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->c:Landroid/widget/ImageView;

    .line 46
    const-string v0, "lin_view"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    .line 47
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;-><init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->e:Lcom/baidu/bdgame/sdk/obf/bm;

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->e:Lcom/baidu/bdgame/sdk/obf/bm;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nh$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nh$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nh;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Lcom/baidu/bdgame/sdk/obf/bm$a;)V

    .line 72
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/bl;-><init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->f:Lcom/baidu/bdgame/sdk/obf/bl;

    .line 73
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bn;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/bn;-><init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->g:Lcom/baidu/bdgame/sdk/obf/bn;

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nh;->e:Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/bm;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nh$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nh$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nh$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nh$3;-><init>(Lcom/baidu/bdgame/sdk/obf/nh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 52
    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->b()V

    .line 55
    :cond_5
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nh;->h:Z

    if-eqz v0, :cond_9

    .line 95
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nh;->f()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
