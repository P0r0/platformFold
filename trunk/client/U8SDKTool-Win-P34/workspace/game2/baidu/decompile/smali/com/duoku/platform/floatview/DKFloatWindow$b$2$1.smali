.class Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;

    .line 1538
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1543
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1544
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v0

    if-lez v0, :cond_46

    .line 1546
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->S(Lcom/duoku/platform/floatview/DKFloatWindow;)I

    move-result v5

    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$b$2$1;->a:Lcom/duoku/platform/floatview/DKFloatWindow$b$2;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b$2;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b$2;)Lcom/duoku/platform/floatview/DKFloatWindow$b;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow$b;->a(Lcom/duoku/platform/floatview/DKFloatWindow$b;)Lcom/duoku/platform/floatview/DKFloatWindow;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWindow;->d(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_suspension_left_window_normal_last"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;IIIIII)V

    .line 1548
    :cond_46
    return-void
.end method
