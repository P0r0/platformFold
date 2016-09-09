.class public Lcom/baidu/bdgame/sdk/obf/dm;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

.field private c:Lcom/baidu/bdgame/sdk/obf/dl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dl;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Lcom/baidu/bdgame/sdk/obf/dl;

    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->b()V

    .line 35
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dl;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->setVisibility(I)V

    .line 40
    :goto_12
    return-void

    .line 38
    :cond_13
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->setVisibility(I)V

    goto :goto_12
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dm;)Lcom/baidu/bdgame/sdk/obf/dl;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Lcom/baidu/bdgame/sdk/obf/dl;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_layout_activity_notices"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->c()V

    .line 60
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_layout_notice_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->a:Landroid/widget/LinearLayout;

    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->d()V

    .line 65
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 82
    :cond_14
    :goto_14
    return-void

    .line 71
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    .line 76
    :cond_21
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()V

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->b()V

    goto :goto_14
.end method

.method private e()V
    .registers 3

    .prologue
    .line 85
    new-instance v0, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dm$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dm;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a(Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView$a;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dm$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dm$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dm;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->a(Lcom/baidu/bdgame/sdk/obf/dn;)V

    .line 126
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->setVisibility(I)V

    .line 45
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dm;->d()V

    .line 50
    :goto_f
    return-void

    .line 47
    :cond_10
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dm;->setVisibility(I)V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/cashier/activity/MarqueeTextView;->c()V

    .line 134
    :cond_c
    return-void
.end method
