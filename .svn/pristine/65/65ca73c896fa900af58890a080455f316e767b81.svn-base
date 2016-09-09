.class Lcom/duoku/platform/view/common/b$b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/common/b;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/common/b;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 914
    iput-object p1, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    .line 915
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 916
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 937
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    .line 939
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1c

    .line 941
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 954
    :goto_1b
    return v0

    .line 944
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_38

    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b$b;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_38

    .line 946
    iget-object v1, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v1}, Lcom/duoku/platform/view/common/b;->b()V

    goto :goto_1b

    .line 950
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b

    .line 954
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v0}, Lcom/duoku/platform/view/common/b;->g(Lcom/duoku/platform/view/common/b;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v0}, Lcom/duoku/platform/view/common/b;->g(Lcom/duoku/platform/view/common/b;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 963
    const/4 v0, 0x1

    .line 966
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    .prologue
    .line 921
    iget-object v0, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v0}, Lcom/duoku/platform/view/common/b;->e(Lcom/duoku/platform/view/common/b;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 924
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 925
    iget-object v1, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v1}, Lcom/duoku/platform/view/common/b;->f(Lcom/duoku/platform/view/common/b;)[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 930
    :goto_17
    return-object v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b$b;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_21

    if-ltz v2, :cond_21

    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b$b;->getHeight()I

    move-result v1

    if-lt v2, v1, :cond_27

    .line 977
    :cond_21
    iget-object v1, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v1}, Lcom/duoku/platform/view/common/b;->b()V

    .line 990
    :goto_26
    return v0

    .line 981
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    .line 983
    iget-object v1, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-virtual {v1}, Lcom/duoku/platform/view/common/b;->b()V

    goto :goto_26

    .line 990
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v0}, Lcom/duoku/platform/view/common/b;->h(Lcom/duoku/platform/view/common/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 999
    iget-object v0, p0, Lcom/duoku/platform/view/common/b$b;->a:Lcom/duoku/platform/view/common/b;

    invoke-static {v0}, Lcom/duoku/platform/view/common/b;->h(Lcom/duoku/platform/view/common/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1005
    :goto_11
    return-void

    .line 1003
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_11
.end method
