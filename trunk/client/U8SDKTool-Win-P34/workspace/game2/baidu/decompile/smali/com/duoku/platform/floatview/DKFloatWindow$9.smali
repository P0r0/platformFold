.class Lcom/duoku/platform/floatview/DKFloatWindow$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    iput-wide p2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->b:J

    .line 1424
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .prologue
    .line 1429
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1430
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->g()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->O(Lcom/duoku/platform/floatview/DKFloatWindow;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1433
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow$b;

    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-direct {v0, v1}, Lcom/duoku/platform/floatview/DKFloatWindow$b;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 1434
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->aa(Lcom/duoku/platform/floatview/DKFloatWindow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-wide v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$9;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1437
    :cond_2e
    return-void
.end method
