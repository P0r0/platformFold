.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;
.super Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->addTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1279
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, p1, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0, v0, p2}, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClickUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1293
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    if-nez v0, :cond_21

    .line 1294
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v0, v1, v2, v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1295
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    const/4 v1, 0x1

    iput v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1298
    :cond_21
    return-void
.end method

.method public onSwipeRightDown()V
    .registers 3

    .prologue
    .line 1283
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1284
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    const/4 v1, -0x1

    iput v1, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1285
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_19

    .line 1286
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1289
    :cond_19
    return-void
.end method
