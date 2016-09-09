.class Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;
.super Ljava/lang/Object;
.source "CircularProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;


# direct methods
.method constructor <init>(Lcom/lylc/widget/circularprogressbar/CircularProgressBar;Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    iput-object p2, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 219
    .local v0, "progress":I
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_38

    .line 220
    const-string v1, "CircularProgressBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->this$0:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    invoke-virtual {v1, v0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->setProgress(I)V

    .line 222
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    if-eqz v1, :cond_38

    .line 223
    iget-object v1, p0, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$2;->val$listener:Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;

    invoke-interface {v1, v0}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;->onAnimationProgress(I)V

    .line 225
    :cond_38
    return-void
.end method
