.class Lcom/duoku/platform/floatview/DKFloatWindow$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;->n()V
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
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$6;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 648
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 654
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$6;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->K(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    .line 655
    return-void
.end method
