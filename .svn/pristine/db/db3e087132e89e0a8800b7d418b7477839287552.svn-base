.class public Lcom/duoku/platform/a/g;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/duoku/platform/a/g;->a:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lcom/duoku/platform/a/g;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 23
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/duoku/platform/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/duoku/platform/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 28
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/duoku/platform/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/duoku/platform/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 37
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
