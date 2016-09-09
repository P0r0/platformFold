.class Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    .line 1566
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    .line 1571
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1572
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1573
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Landroid/widget/RelativeLayout;)V

    .line 1574
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Landroid/widget/ImageView;)V

    .line 1575
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "dk_suspension_right_window_normal_last"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1576
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->U(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1577
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->V(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1578
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->R(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1580
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v1, v3}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1581
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    if-lez v0, :cond_1dd

    .line 1585
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->W(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v5

    iget-object v3, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$3$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$3;

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b$3;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$3;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "dk_suspension_left_window_tvbg"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;IIIIII)V

    .line 1587
    :cond_1dd
    return-void
.end method
