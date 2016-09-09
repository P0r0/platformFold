.class Lcom/duoku/platform/floatview/DKFloatWindow$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$5;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$5;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$5;

    .line 597
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow$5$1;)Lcom/duoku/platform/floatview/DKFloatWindow$5;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$5;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 605
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$5;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a(Lcom/duoku/platform/floatview/DKFloatWindow$5;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->Z(Lcom/duoku/platform/floatview/DKFloatWindow;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 607
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$5;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a(Lcom/duoku/platform/floatview/DKFloatWindow$5;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_float_frameanimation_nomal"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    :goto_26
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 614
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 615
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWindow$5$1$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$5$1$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow$5$1;)V

    .line 625
    const-wide/16 v2, 0x3e8

    .line 615
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void

    .line 611
    :cond_43
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$5;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a(Lcom/duoku/platform/floatview/DKFloatWindow$5;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_float_frameanimation_nomal_hint"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26
.end method
