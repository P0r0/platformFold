.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1380
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1384
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    sget-object v4, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 1385
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->updateState()V
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4500(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    .line 1386
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialHintContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1387
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1388
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayShortcutBar:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1389
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1390
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1391
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialHintContainer:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_e0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1393
    .local v1, "hintTextAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1394
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_e8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1395
    .local v2, "overlayBackgroundAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1396
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1397
    .local v0, "animatorSet1":Landroid/animation/AnimatorSet;
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1398
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1399
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1400
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_tutorial_click_point"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getAnimator(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    iput-object v3, v4, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickPointAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1401
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickPointAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1402
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickPointAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1430
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "omp_tutorial_click_finger"

    invoke-static {v5, v6}, Lmobisocial/util/ResUtil;->getAnimator(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    iput-object v3, v4, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickFingerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1431
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickFingerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1432
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->clickPointAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1433
    return-void

    .line 1392
    nop

    :array_e0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1394
    :array_e8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
