.class public Lcom/baidu/bdgame/sdk/obf/ms;
.super Lcom/baidu/bdgame/sdk/obf/mr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ms$1;,
        Lcom/baidu/bdgame/sdk/obf/ms$a;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/baidu/bdgame/sdk/obf/ms$a;

.field private k:Lcom/baidu/bdgame/sdk/obf/ms$a;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ms$a;->a:Lcom/baidu/bdgame/sdk/obf/ms$a;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Lcom/baidu/bdgame/sdk/obf/ms$a;

    .line 31
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ms$a;->a:Lcom/baidu/bdgame/sdk/obf/ms$a;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Lcom/baidu/bdgame/sdk/obf/ms$a;

    .line 37
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ms$a;Landroid/widget/Button;)V
    .registers 6

    .prologue
    .line 109
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ms$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ms$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v2, "bdp_white"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v1, "bdp_btn_blue_selector"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    :goto_2b
    return-void

    .line 111
    :pswitch_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v2, "bdp_deep_gray"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v1, "bdp_btn_gray_selector"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2b

    .line 109
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v1, "bdp_dialog_confirm"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v2, "txt_content"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v2, "btn_a"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const-string v2, "btn_b"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_4d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_73

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Lcom/baidu/bdgame/sdk/obf/ms$a;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->d:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/bdgame/sdk/obf/ms$a;Landroid/widget/Button;)V

    .line 54
    :cond_73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_99

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Lcom/baidu/bdgame/sdk/obf/ms$a;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->e:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ms;->a(Lcom/baidu/bdgame/sdk/obf/ms$a;Landroid/widget/Button;)V

    .line 60
    :cond_99
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ms;
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->l:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/ms;
    .registers 3

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/view/View$OnClickListener;

    .line 80
    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/baidu/bdgame/sdk/obf/ms$a;)Lcom/baidu/bdgame/sdk/obf/ms;
    .registers 4

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->h:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->f:Landroid/view/View$OnClickListener;

    .line 86
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ms;->j:Lcom/baidu/bdgame/sdk/obf/ms$a;

    .line 87
    return-object p0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lv;->f(Landroid/content/Context;)I

    move-result v1

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lv;->a(Landroid/content/Context;F)I

    move-result v2

    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lv;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 70
    int-to-float v0, v0

    const v1, 0x3f933333    # 1.15f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 74
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ms;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 75
    return-void

    .line 71
    :cond_2a
    if-nez v1, :cond_21

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ms;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lv;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    goto :goto_21
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/ms;
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/view/View$OnClickListener;

    .line 93
    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/baidu/bdgame/sdk/obf/ms$a;)Lcom/baidu/bdgame/sdk/obf/ms;
    .registers 4

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ms;->i:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ms;->g:Landroid/view/View$OnClickListener;

    .line 99
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ms;->k:Lcom/baidu/bdgame/sdk/obf/ms$a;

    .line 100
    return-object p0
.end method
