.class Lcom/duoku/platform/floatview/DKFloatWindow$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow$5;)Lcom/duoku/platform/floatview/DKFloatWindow;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 594
    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;I)V

    .line 596
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->e(Lcom/duoku/platform/floatview/DKFloatWindow;I)V

    .line 597
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "x"

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$5;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->P(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const-wide/16 v6, 0xfa

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    new-instance v9, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;

    invoke-direct {v9, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$5$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow$5;)V

    invoke-static/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 629
    return-void
.end method
