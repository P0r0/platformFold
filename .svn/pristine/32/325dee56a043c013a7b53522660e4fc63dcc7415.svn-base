.class Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;
.super Ljava/lang/Object;
.source "CircularProgressBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->animateProgressTo(IIJLcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

.field final synthetic val$end:I

.field final synthetic val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;


# direct methods
.method constructor <init>(Lcom/lylc/widget/circularprogressbar/CircularProgressBar;ILcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    iput p2, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$end:I

    iput-object p3, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 195
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    iget v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$end:I

    invoke-virtual {v0, v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 200
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    if-eqz v0, :cond_10

    .line 201
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    invoke-interface {v0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;->onAnimationFinish()V

    .line 202
    :cond_10
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$1;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    invoke-interface {v0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;->onAnimationStart()V

    .line 212
    :cond_9
    return-void
.end method
