.class final Lcom/vivo/assist/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/vivo/assist/widget/AssistView;


# direct methods
.method constructor <init>(Lcom/vivo/assist/widget/AssistView;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/widget/c;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/vivo/assist/widget/c;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/widget/c;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "floatview_alpha_anim"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/vivo/assist/widget/c;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
