.class Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;


# direct methods
.method private constructor <init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
    .param p2, "x1"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V

    return-void
.end method

.method private resetStateIfNeed(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 195
    if-nez p1, :cond_4

    if-eqz p2, :cond_e

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->resetFloatWindowsState()V

    .line 197
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->postGoEdgeRunnable()V

    .line 199
    :cond_e
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$800(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->getFloatX()I

    move-result v1

    # setter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowX:I
    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$602(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;I)I

    .line 190
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$800(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->getFloatY()I

    move-result v1

    # setter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowY:I
    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$702(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;I)I

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 182
    .local v0, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 183
    .local v1, "dy":I
    invoke-direct {p0, v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->resetStateIfNeed(II)V

    .line 184
    const/4 v2, 0x0

    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 167
    .local v0, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 168
    .local v1, "dy":I
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowX:I
    invoke-static {v4}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$600(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)I

    move-result v4

    add-int v2, v4, v0

    .line 169
    .local v2, "newX":I
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowY:I
    invoke-static {v4}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$700(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)I

    move-result v4

    add-int v3, v4, v1

    .line 170
    .local v3, "newY":I
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    invoke-static {v4}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$800(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->moveFloatView(II)V

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->resetStateIfNeed(II)V

    .line 172
    const/4 v4, 0x0

    return v4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getNormalDrawable()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$300(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->postGoEdgeRunnable()V

    .line 149
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # getter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$400(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 150
    invoke-static {}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->getInstance()Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->setShowFLoatHintDisabled()V

    .line 151
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I)V

    .line 152
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->startGameGiftActivity()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$500(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V

    .line 153
    invoke-static {}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->getInstance()Lcom/gionee/game/offlinesdk/statis/StatisHelper;

    move-result-object v0

    const-string v1, "floatWindows"

    const-string v2, "\u70b9\u51fb\u60ac\u6d6e\u7a97"

    invoke-virtual {v0, v1, v2}, Lcom/gionee/game/offlinesdk/statis/StatisHelper;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_33
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_35
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    const/4 v1, 0x0

    # setter for: Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z
    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->access$402(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;Z)Z

    goto :goto_33
.end method
