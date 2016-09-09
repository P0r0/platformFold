.class Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    .line 1605
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1610
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1611
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1612
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Landroid/widget/RelativeLayout;)V

    .line 1613
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Landroid/widget/ImageView;)V

    .line 1614
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_window_normal_press_last"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1615
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->U(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1616
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->V(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1617
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->R(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1618
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v1, v2}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1619
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1620
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1621
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->T(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1622
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    if-lez v0, :cond_224

    .line 1625
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->P(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->W(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow;->W(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v5

    .line 1626
    iget-object v4, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$4$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$4;

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b$4;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$4;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "dk_suspension_right_window_tvbg"

    invoke-static {v4, v6}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move v4, v3

    .line 1625
    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;IIIIII)V

    .line 1629
    :cond_224
    return-void
.end method
