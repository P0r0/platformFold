.class public Lcom/baidu/bdgame/sdk/obf/kc;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/kc$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Lcom/baidu/bdgame/sdk/obf/kc$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/kc$a;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:Z

    .line 41
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kc;->j:Lcom/baidu/bdgame/sdk/obf/kc$a;

    .line 42
    if-nez p2, :cond_12

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionListener can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/kc;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/kc;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/kc;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/kc;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    :goto_20
    return-void

    .line 138
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 142
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method private g()V
    .registers 4

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:Z

    if-eqz v0, :cond_25

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:Z

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_password_unshow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :goto_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    return-void

    .line 168
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->i:Z

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_password_show"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_phonereg_set_pass"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Landroid/widget/ImageView;

    .line 51
    const-string v0, "edt_phone"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    .line 52
    const-string v0, "img_phone_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->c:Landroid/widget/ImageView;

    .line 53
    const-string v0, "edt_password"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    .line 54
    const-string v0, "img_password_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->e:Landroid/widget/ImageView;

    .line 55
    const-string v0, "img_password_show"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->f:Landroid/widget/ImageView;

    .line 56
    const-string v0, "btn_ok"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    .line 57
    const-string v0, "txt_skip"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:Landroid/widget/TextView;

    .line 58
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kc$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kc$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kc$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kc$2;-><init>(Lcom/baidu/bdgame/sdk/obf/kc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kc$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kc$3;-><init>(Lcom/baidu/bdgame/sdk/obf/kc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kc$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kc$4;-><init>(Lcom/baidu/bdgame/sdk/obf/kc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->j:Lcom/baidu/bdgame/sdk/obf/kc$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/kc$a;->b()V

    .line 160
    :cond_9
    :goto_9
    return-void

    .line 149
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_16

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 151
    :cond_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_22

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 153
    :cond_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2a

    .line 154
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->g()V

    goto :goto_9

    .line 155
    :cond_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_34

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->j:Lcom/baidu/bdgame/sdk/obf/kc$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/kc$a;->a()V

    goto :goto_9

    .line 157
    :cond_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kc;->j:Lcom/baidu/bdgame/sdk/obf/kc$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/kc$a;->b()V

    goto :goto_9
.end method
