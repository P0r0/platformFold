.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;
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
    .line 1436
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1441
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->updateState()V
    invoke-static {v8}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4500(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    .line 1442
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutNone()V
    invoke-static {v8}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->access$4600(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    .line 1443
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1444
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialHintText:Landroid/widget/TextView;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v9, v9, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v9}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v10, v10, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v10}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "omp_tutorial_overlay_bar_selection_instruction2"

    invoke-static {v10, v11}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialOK:Landroid/widget/TextView;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v9, v9, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v9}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v10, v10, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v10}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "omp_tutorial_overlay_bar_got_it"

    invoke-static {v10, v11}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1447
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayShortcutBar:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1448
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1449
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1450
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1451
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1452
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1453
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1454
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1455
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1456
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_180

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1459
    .local v3, "omplayTutorialFingerAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1460
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_188

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1461
    .local v4, "omplayTutorialPointAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1463
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1464
    .local v0, "fingerAppearAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1465
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1466
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 1467
    .local v1, "locationFrom":[I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 1468
    .local v2, "locationTo":[I
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1469
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v9, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v8, v9, :cond_177

    .line 1470
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1474
    :goto_10d
    const-string v8, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v2, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1475
    .local v6, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 1476
    .local v7, "translationY":Landroid/animation/PropertyValuesHolder;
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1477
    .local v5, "translation":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1478
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1479
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1480
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;

    invoke-direct {v9, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1513
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->translationAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1514
    return-void

    .line 1472
    .end local v5    # "translation":Landroid/animation/ValueAnimator;
    .end local v6    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "translationY":Landroid/animation/PropertyValuesHolder;
    :cond_177
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_10d

    .line 1458
    nop

    :array_180
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1460
    :array_188
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
