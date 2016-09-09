.class public Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSwipeTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1522
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1523
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener$GestureListener;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;Lmobisocial/omlet/overlaybar/OverlayBarService$1;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 1524
    return-void
.end method


# virtual methods
.method public onClickUp(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1527
    return-void
.end method

.method public onSwipeRightDown()V
    .registers 1

    .prologue
    .line 1530
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1533
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
