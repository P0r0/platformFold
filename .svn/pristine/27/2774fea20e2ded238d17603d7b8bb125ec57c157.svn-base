.class Lcom/baidu/bdgame/sdk/obf/ni$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ni;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ni;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->a:Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 128
    if-eqz p2, :cond_3d

    const/4 v0, 0x2

    :goto_9
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->b:[Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ni;->k()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ni;->k()Landroid/content/Context;

    move-result-object v4

    const-string v5, "bdp_account_login_title_baidu"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 130
    if-eqz p2, :cond_3c

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ni;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ni;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_account_login_title_dk"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 133
    :cond_3c
    return-void

    :cond_3d
    move v0, v1

    .line 128
    goto :goto_9
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 151
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 156
    if-nez p2, :cond_1f

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->a:Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ni;->a(Lcom/baidu/bdgame/sdk/obf/ni;)Lcom/baidu/bdgame/sdk/obf/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a()Landroid/view/View;

    move-result-object v0

    .line 161
    :goto_c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 162
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->a:Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ni;->c(Lcom/baidu/bdgame/sdk/obf/ni;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 164
    :cond_1b
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    return-object v0

    .line 159
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ni$a;->a:Lcom/baidu/bdgame/sdk/obf/ni;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ni;->b(Lcom/baidu/bdgame/sdk/obf/ni;)Lcom/baidu/bdgame/sdk/obf/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bn;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_c
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
