.class Lcom/duoku/platform/floatview/DKFloatWindow$13$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$13;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$13;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

    iput p2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->b:I

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .prologue
    .line 1140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1141
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$13;->a(Lcom/duoku/platform/floatview/DKFloatWindow$13;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1142
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$13;->a(Lcom/duoku/platform/floatview/DKFloatWindow$13;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->z(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$13;->a(Lcom/duoku/platform/floatview/DKFloatWindow$13;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->n(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$13$4;->a:Lcom/duoku/platform/floatview/DKFloatWindow$13;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$13;->a(Lcom/duoku/platform/floatview/DKFloatWindow$13;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->v(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    return-void
.end method