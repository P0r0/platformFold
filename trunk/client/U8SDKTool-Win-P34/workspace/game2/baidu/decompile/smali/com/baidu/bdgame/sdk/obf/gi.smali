.class public Lcom/baidu/bdgame/sdk/obf/gi;
.super Lcom/baidu/bdgame/sdk/obf/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gi$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/baidu/bdgame/sdk/obf/hh;

.field private k:Lcom/baidu/bdgame/sdk/obf/jd;

.field private l:Lcom/baidu/bdgame/sdk/obf/hi;

.field private m:Lcom/baidu/bdgame/sdk/obf/hg;

.field private n:Z

.field private o:I

.field private p:Lcom/baidu/bdgame/sdk/obf/gi$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jp;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->n:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gi;I)I
    .registers 2

    .prologue
    .line 29
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->o:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gi;Lcom/baidu/bdgame/sdk/obf/gi$a;)Lcom/baidu/bdgame/sdk/obf/gi$a;
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gi;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->f()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gi;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_dialog_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->e:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->g:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->h:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_get_verify_code"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->i:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "edt_verify_code"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->n:Z

    if-eqz v0, :cond_6b

    .line 62
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->g()V

    .line 64
    :cond_6b
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gi$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/gi$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gi;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gi;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gi;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gi;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gi;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .registers 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->l:Lcom/baidu/bdgame/sdk/obf/hi;

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->l:Lcom/baidu/bdgame/sdk/obf/hi;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->d()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/hi;->a(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;IJ)V

    .line 78
    :cond_17
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 190
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/gi$a;-><init>(Lcom/baidu/bdgame/sdk/obf/gi;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->d()V

    .line 192
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_bank_card_verify_phoneno"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gi;->b(Landroid/view/View;)V

    .line 102
    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/hh;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->j:Lcom/baidu/bdgame/sdk/obf/hh;

    .line 83
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    if-ne p1, v0, :cond_d

    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->a()V

    .line 201
    :cond_d
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/hi;Lcom/baidu/bdgame/sdk/obf/hg;)V
    .registers 4

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 93
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/gi;->l:Lcom/baidu/bdgame/sdk/obf/hi;

    .line 94
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/gi;->m:Lcom/baidu/bdgame/sdk/obf/hg;

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->b()V

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_12
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/gi$a;-><init>(Lcom/baidu/bdgame/sdk/obf/gi;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    .line 126
    const/16 v0, 0x3c

    if-eq p2, v0, :cond_27

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/gi$a;->a(I)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->a()V

    .line 130
    :cond_27
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->i:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->n:Z

    .line 116
    :goto_7
    return-void

    .line 114
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->n:Z

    goto :goto_7
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    if-ne p1, v0, :cond_d

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->b()V

    .line 210
    :cond_d
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->n:Z

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    if-eqz v0, :cond_17

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->b()V

    .line 140
    :cond_17
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->o:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gi$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/gi$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gi;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->e:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_1c

    .line 165
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->dismiss()V

    .line 184
    :cond_1b
    :goto_1b
    return-void

    .line 166
    :cond_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4f

    .line 167
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 168
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_verify_code_null"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1b

    .line 171
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->j:Lcom/baidu/bdgame/sdk/obf/hh;

    if-eqz v0, :cond_1b

    .line 172
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->dismiss()V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->j:Lcom/baidu/bdgame/sdk/obf/hh;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hh;->a(Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;)V

    goto :goto_1b

    .line 175
    :cond_4f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_1b

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    if-eqz v0, :cond_5c

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->p:Lcom/baidu/bdgame/sdk/obf/gi$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gi$a;->b()V

    .line 179
    :cond_5c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->m:Lcom/baidu/bdgame/sdk/obf/hg;

    if-eqz v0, :cond_67

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gi;->m:Lcom/baidu/bdgame/sdk/obf/hg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gi;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hg;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 182
    :cond_67
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gi;->g()V

    goto :goto_1b
.end method
