.class public Lcom/baidu/bdgame/sdk/obf/nf;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/nf$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_index"

.field public static final b:I = 0x0

.field public static final c:I = 0x1


# instance fields
.field private d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/PagerAdapter;

.field private h:Landroid/support/v4/view/PagerAdapter;

.field private i:Lcom/baidu/bdgame/sdk/obf/bl;

.field private j:Lcom/baidu/bdgame/sdk/obf/bm;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/nf;)Lcom/baidu/bdgame/sdk/obf/bm;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->j:Lcom/baidu/bdgame/sdk/obf/bm;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/nf;)Lcom/baidu/bdgame/sdk/obf/bl;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->i:Lcom/baidu/bdgame/sdk/obf/bl;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/nf;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_91"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-string v0, "psts_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    .line 51
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->e:Landroid/widget/ImageView;

    .line 52
    const-string v0, "vp_view"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    .line 53
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bm;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;-><init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->j:Lcom/baidu/bdgame/sdk/obf/bm;

    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bl;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/bl;-><init>(Lcom/baidu/bdgame/sdk/obf/cs;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->i:Lcom/baidu/bdgame/sdk/obf/bl;

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nf$a;

    invoke-direct {v0, p0, v2}, Lcom/baidu/bdgame/sdk/obf/nf$a;-><init>(Lcom/baidu/bdgame/sdk/obf/nf;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->g:Landroid/support/v4/view/PagerAdapter;

    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nf$a;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/nf$a;-><init>(Lcom/baidu/bdgame/sdk/obf/nf;Z)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->h:Landroid/support/v4/view/PagerAdapter;

    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nf;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mf;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nf;->g:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 67
    :goto_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nf$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nf$1;-><init>(Lcom/baidu/bdgame/sdk/obf/nf;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Landroid/support/v4/view/ViewPager;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    const/16 v1, 0x28

    const/16 v2, 0x7b

    const/16 v3, 0xf3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(I)V

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nf$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/nf$2;-><init>(Lcom/baidu/bdgame/sdk/obf/nf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 65
    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nf;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_2f
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(ZLandroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_1a

    .line 95
    if-eqz p2, :cond_1b

    const-string v0, "bundle_key_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    const-string v1, "bundle_key_index"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    :cond_1a
    :goto_1a
    return-void

    .line 98
    :cond_1b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nf;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1a

    .line 102
    :cond_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1a
.end method

.method public f()V
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/nf;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mf;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nf;->g:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->d:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a()V

    .line 115
    return-void

    .line 112
    :cond_17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nf;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nf;->h:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_11
.end method
