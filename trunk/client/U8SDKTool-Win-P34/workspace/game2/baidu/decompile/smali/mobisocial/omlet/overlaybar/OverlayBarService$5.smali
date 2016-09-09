.class Lmobisocial/omlet/overlaybar/OverlayBarService$5;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTime:J

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 416
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 430
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 431
    .local v1, "size":Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 432
    .local v0, "changingShortcut":Z
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 434
    .local v2, "time":J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_292

    .line 512
    const/4 v4, 0x0

    :goto_1f
    return v4

    .line 436
    :pswitch_20
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    const/4 v5, 0x0

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1502(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 437
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->maxOverlayBackground()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1600(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 438
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->addShortcutControls()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1700(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 440
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->saveButtonLocationBeforeDrag(II)V
    invoke-static {v4, v5, v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1900(Lmobisocial/omlet/overlaybar/OverlayBarService;II)V

    .line 441
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialX:I

    .line 442
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialY:I

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchX:F

    .line 444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchY:F

    .line 445
    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTime:J

    .line 446
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-wide v8, v7, Lmobisocial/omlet/overlaybar/OverlayBarService;->touchId:J

    invoke-direct {v5, v6, v8, v9}, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;J)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    const/4 v4, 0x1

    goto :goto_1f

    .line 449
    :pswitch_7f
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    const/4 v5, 0x1

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1502(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 450
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-wide v6, v4, Lmobisocial/omlet/overlaybar/OverlayBarService;->touchId:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Lmobisocial/omlet/overlaybar/OverlayBarService;->touchId:J

    .line 451
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 452
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2100(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 453
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    sget-object v5, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V

    .line 454
    const/4 v0, 0x1

    .line 467
    :cond_b4
    :goto_b4
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeOutBackground()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2700(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 469
    :cond_b9
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_19c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchX:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_19c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchY:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x41700000    # 15.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_19c

    .line 470
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialX:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 471
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialY:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 472
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v4, v5, v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 474
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->stopRecording(Z)V

    .line 487
    :goto_110
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v4

    if-nez v4, :cond_118

    .line 490
    :cond_118
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v4, v5, v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 491
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v4

    if-nez v4, :cond_136

    .line 492
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphic()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2900(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 493
    :cond_136
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 455
    :cond_139
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_168

    .line 456
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->hasVideoToRecover()Z
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 457
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->showUnuploadedVideoDialog()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2500(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    goto/16 :goto_b4

    .line 459
    :cond_15e
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    sget-object v5, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_b4

    .line 462
    :cond_168
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 463
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmobisocial/omlet/OmletGameSDK;->setRecordingControlsEnabled(Landroid/content/Context;Z)V

    .line 464
    const/4 v0, 0x1

    .line 465
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b4

    .line 476
    :cond_195
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->performActionState()V

    goto/16 :goto_110

    .line 479
    :cond_19c
    if-eqz v0, :cond_1b4

    .line 480
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialX:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 481
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialY:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_110

    .line 482
    :cond_1b4
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1d8

    .line 483
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_110

    .line 485
    :cond_1d8
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_110

    .line 495
    :pswitch_1ef
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    const/4 v5, 0x0

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1502(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 496
    iget-wide v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-lez v4, :cond_225

    .line 497
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchX:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 498
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->initialTouchY:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 500
    :cond_225
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2100(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 501
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutRecord()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3000(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 509
    :goto_240
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v4, v5, v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 510
    const/4 v4, 0x1

    goto/16 :goto_1f

    .line 502
    :cond_254
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_270

    .line 503
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutCamera()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3100(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    goto :goto_240

    .line 504
    :cond_270
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z
    invoke-static {v4, v5, v6, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_28c

    .line 505
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutTrash()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3200(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    goto :goto_240

    .line 507
    :cond_28c
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutNone()V
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3300(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    goto :goto_240

    .line 434
    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_20
        :pswitch_7f
        :pswitch_1ef
    .end packed-switch
.end method
