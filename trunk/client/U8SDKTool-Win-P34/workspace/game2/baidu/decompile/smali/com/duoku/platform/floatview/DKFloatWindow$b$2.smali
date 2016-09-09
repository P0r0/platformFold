.class Lcom/duoku/platform/floatview/DKFloatWindow$b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    .line 1529
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)Lcom/duoku/platform/floatview/DKFloatWindow$b;
    .registers 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 12

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->O(Lcom/duoku/platform/floatview/DKFloatWindow;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1537
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->Q(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 1538
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/floatview/DKFloatWindow;->j()Landroid/widget/ImageView;

    move-result-object v2

    const-string v3, "y"

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->T(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->T(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    neg-int v0, v0

    iget-object v5, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b;

    invoke-static {v5}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v5

    invoke-static {v5}, Lcom/duoku/platform/floatview/DKFloatWindow;->T(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v0, v5

    int-to-float v5, v0

    const-wide/16 v6, 0xfa

    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v8}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    new-instance v9, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;

    invoke-direct {v9, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)V

    invoke-static/range {v1 .. v9}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;Ljava/lang/Object;Ljava/lang/String;FFJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 1552
    :cond_55
    return-void
.end method
