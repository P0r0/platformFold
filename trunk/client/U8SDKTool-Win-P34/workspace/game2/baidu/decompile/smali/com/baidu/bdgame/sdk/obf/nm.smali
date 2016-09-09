.class public Lcom/baidu/bdgame/sdk/obf/nm;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/nm$a;,
        Lcom/baidu/bdgame/sdk/obf/nm$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/baidu/bdgame/sdk/obf/nm$b;

.field private p:Lcom/baidu/bdgame/sdk/obf/nm$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->n:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nm;Z)Z
    .registers 2

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/nm;->n:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    :cond_7
    :goto_7
    return v0

    .line 316
    :cond_8
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nm;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/md;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lw;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    :cond_1c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nm;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/nm;)Lcom/baidu/bdgame/sdk/obf/nm$b;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->o:Lcom/baidu/bdgame/sdk/obf/nm$b;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/nm;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/nm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 287
    :goto_2e
    return-void

    .line 278
    :cond_2f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 279
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 282
    :cond_3b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e

    .line 286
    :cond_47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2e
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/nm;)Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/nm;)Lcom/baidu/bdgame/sdk/obf/nm$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->p:Lcom/baidu/bdgame/sdk/obf/nm$a;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/nm;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/bdgame/sdk/obf/nm;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->j:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_not_baidu_bind"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->a:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_account"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->b:Landroid/widget/EditText;

    .line 63
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_account_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->c:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_password"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    .line 65
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->e:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_password_show"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->f:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->g:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->h:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->i:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->j:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_login_mail"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->k:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_complete"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    .line 73
    return-object v1
.end method

.method public a(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_46

    .line 292
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/nm;->m:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->f()V

    .line 295
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nm$b;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/nm$b;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->o:Lcom/baidu/bdgame/sdk/obf/nm$b;

    .line 297
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->o:Lcom/baidu/bdgame/sdk/obf/nm$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/nm$b;->a()V

    .line 298
    if-eqz p3, :cond_31

    .line 299
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->k:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_sent_tip_sms"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :goto_30
    return-void

    .line 302
    :cond_31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_sent_tip_mail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30

    .line 306
    :cond_46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_visitor_bind_verifycode_get"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 79
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$14;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$15;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$3;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$4;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$5;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$6;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$7;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$8;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$9;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$10;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$11;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$12;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nm;->l:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nm$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nm$13;-><init>(Lcom/baidu/bdgame/sdk/obf/nm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/nm;->f()V

    .line 267
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/nm$a;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nm;->p:Lcom/baidu/bdgame/sdk/obf/nm$a;

    .line 363
    return-void
.end method
