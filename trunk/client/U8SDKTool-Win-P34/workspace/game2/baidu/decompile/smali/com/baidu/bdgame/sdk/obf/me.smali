.class public Lcom/baidu/bdgame/sdk/obf/me;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/me$b;,
        Lcom/baidu/bdgame/sdk/obf/me$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/baidu/bdgame/sdk/obf/me$a;

.field private i:Lcom/baidu/bdgame/sdk/obf/me$b;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/me$a;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 41
    if-nez p2, :cond_d

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionListener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/me;->h:Lcom/baidu/bdgame/sdk/obf/me$a;

    .line 45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/me$b;-><init>(Lcom/baidu/bdgame/sdk/obf/me;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/me;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/me;->n()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/me;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->f:Landroid/widget/Button;

    return-object v0
.end method

.method private n()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    :goto_20
    return-void

    .line 158
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 162
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 69
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_phonereg"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->a:Landroid/widget/ImageView;

    .line 73
    const-string v0, "edt_phone"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    .line 74
    const-string v0, "img_phone_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Landroid/widget/ImageView;

    .line 75
    const-string v0, "edt_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    .line 76
    const-string v0, "img_verifycode_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/widget/ImageView;

    .line 77
    const-string v0, "btn_get_verifycode"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->f:Landroid/widget/Button;

    .line 78
    const-string v0, "btn_reg"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    .line 79
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/me$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/me$1;-><init>(Lcom/baidu/bdgame/sdk/obf/me;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/me$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/me$2;-><init>(Lcom/baidu/bdgame/sdk/obf/me;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/me$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/me$3;-><init>(Lcom/baidu/bdgame/sdk/obf/me;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/me$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/me$4;-><init>(Lcom/baidu/bdgame/sdk/obf/me;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me$b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me$b;->b()V

    .line 52
    :cond_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me$b;->a()V

    .line 53
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me$b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->i:Lcom/baidu/bdgame/sdk/obf/me$b;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/me$b;->b()V

    .line 59
    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_b
    :goto_b
    return-void

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_18

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 171
    :cond_18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_39

    .line 173
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 175
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->h:Lcom/baidu/bdgame/sdk/obf/me$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/me$a;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 176
    :cond_39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_64

    .line 178
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->h:Lcom/baidu/bdgame/sdk/obf/me$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/me;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/me;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/me$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 181
    :cond_64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_b

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/me;->h:Lcom/baidu/bdgame/sdk/obf/me$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/me$a;->a()V

    goto :goto_b
.end method
