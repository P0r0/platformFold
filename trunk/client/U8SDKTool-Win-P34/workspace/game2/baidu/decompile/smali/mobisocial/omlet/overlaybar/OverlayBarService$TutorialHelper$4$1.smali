.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;)V
    .registers 2
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    .prologue
    .line 1480
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1507
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1488
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    .line 1489
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_4e

    .line 1490
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutCamera()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4700(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    .line 1491
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 1496
    :goto_22
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1497
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable2:Ljava/lang/Runnable;

    if-eqz v0, :cond_4d

    .line 1498
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable2:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1503
    :cond_4d
    :goto_4d
    return-void

    .line 1493
    :cond_4e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutRecord()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4800(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    .line 1494
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    goto :goto_22

    .line 1501
    :cond_5e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;->this$2:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->finishTutorial()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4900(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    goto :goto_4d
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1511
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1484
    return-void
.end method
