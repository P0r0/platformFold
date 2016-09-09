.class Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)V
    .registers 2

    .prologue
    .line 336
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;)V
    .registers 3

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;-><init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 355
    if-nez p1, :cond_12

    .line 356
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;II)V

    .line 359
    :cond_12
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1f

    .line 360
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 362
    :cond_1f
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;I)I

    .line 342
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;F)F

    .line 344
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->d(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;II)V

    .line 346
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 348
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_32

    .line 349
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 351
    :cond_32
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_d

    .line 367
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 369
    :cond_d
    return-void
.end method
