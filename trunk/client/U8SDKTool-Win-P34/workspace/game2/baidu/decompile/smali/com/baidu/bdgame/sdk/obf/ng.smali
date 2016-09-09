.class public Lcom/baidu/bdgame/sdk/obf/ng;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ng$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/baidu/bdgame/sdk/obf/bz;

.field private f:Lcom/baidu/bdgame/sdk/obf/no;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ng;Lcom/baidu/bdgame/sdk/obf/bz;)Lcom/baidu/bdgame/sdk/obf/bz;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ng;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->p()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ng;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private n()V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_logining"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    return-void
.end method

.method private o()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_sso_login_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_sso_login_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 311
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    .line 312
    packed-switch v0, :pswitch_data_3a

    .line 321
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nh;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nh;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 324
    :goto_20
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ng;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 325
    return-void

    .line 314
    :pswitch_25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nf;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nf;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    goto :goto_20

    .line 317
    :pswitch_2f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ni;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    goto :goto_20

    .line 312
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method private q()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/no;->b()V

    .line 336
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    .line 339
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    if-eqz v0, :cond_17

    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bz;->a()V

    .line 341
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    .line 343
    :cond_17
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_auto"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-string v0, "lin_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->a:Landroid/widget/LinearLayout;

    .line 54
    const-string v0, "txt_login_type"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    .line 55
    const-string v0, "txt_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->c:Landroid/widget/TextView;

    .line 56
    const-string v0, "txt_now_logining"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    .line 58
    return-object v1
.end method

.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bz;)V
    .registers 7

    .prologue
    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_11
    const/4 v0, 0x2

    if-ne v0, p1, :cond_35

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_type_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_logining"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    .line 139
    return-void

    .line 133
    :cond_35
    const/4 v0, 0x1

    if-ne v0, p1, :cond_23

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_type_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 101
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 231
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ng$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ng$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 263
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->n()V

    .line 264
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->h()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_autologin_guest"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :goto_2f
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ag;->a()I

    move-result v0

    .line 271
    packed-switch v0, :pswitch_data_9a

    .line 291
    const/4 v0, 0x0

    .line 294
    :goto_3b
    if-eqz v0, :cond_42

    .line 295
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ng;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 297
    :cond_42
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->a()Lcom/baidu/bdgame/sdk/obf/ag;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ng$4;

    invoke-direct {v4, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ng$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;Lcom/baidu/bdgame/sdk/obf/ng$a;)V

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ag;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->e:Lcom/baidu/bdgame/sdk/obf/bz;

    .line 304
    return-void

    .line 267
    :cond_57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/s;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 273
    :pswitch_61
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_baidu"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 276
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    goto :goto_3b

    .line 279
    :pswitch_73
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_91"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    goto :goto_3b

    .line 285
    :pswitch_86
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_dk"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 288
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Landroid/content/Context;I)V

    goto :goto_3b

    .line 271
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_86
        :pswitch_73
    .end packed-switch
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 329
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    .line 330
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->q()V

    .line 331
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method

.method public g()V
    .registers 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 165
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ng$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ng$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;)V

    .line 187
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->o()V

    .line 189
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ng;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/no;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/no;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    .line 190
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ng$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/ng$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ng;Lcom/baidu/bdgame/sdk/obf/ng$a;)V

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/no;->a(Lcom/baidu/bdgame/sdk/obf/nq;)V

    .line 220
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ng;->f:Lcom/baidu/bdgame/sdk/obf/no;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/no;->a()V

    .line 221
    return-void
.end method
