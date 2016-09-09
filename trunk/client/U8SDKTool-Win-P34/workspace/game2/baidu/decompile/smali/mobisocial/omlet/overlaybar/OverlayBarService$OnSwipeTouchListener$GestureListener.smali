.class final Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_DISTANCE_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;)V
    .registers 2

    .prologue
    .line 1536
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;Lmobisocial/omlet/overlaybar/OverlayBarService$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;
    .param p2, "x1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$1;

    .prologue
    .line 1536
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1548
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 1553
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 1554
    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 1555
    .local v1, "distanceY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_27

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_36

    .line 1556
    :cond_27
    cmpl-float v2, v0, v4

    if-lez v2, :cond_34

    cmpl-float v2, v1, v4

    if-lez v2, :cond_34

    .line 1557
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;->onSwipeRightDown()V

    .line 1558
    :cond_34
    const/4 v2, 0x1

    .line 1560
    :goto_35
    return v2

    :cond_36
    const/4 v2, 0x0

    goto :goto_35
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1542
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;->onClickUp(Landroid/view/MotionEvent;)V

    .line 1543
    const/4 v0, 0x1

    return v0
.end method
