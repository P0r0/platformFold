.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 424
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 428
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_IsPlayingFullscreen:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 447
    :cond_9
    :goto_9
    return-void

    .line 431
    :cond_a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$2902(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 432
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 433
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    .line 434
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    iget v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    iget v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 435
    :cond_5e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalPortraitMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3002(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .line 436
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-array v1, v4, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    goto :goto_9

    .line 438
    :cond_7c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_WeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 439
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    iget v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->height:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_bb

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3100(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    move-result-object v0

    iget v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;->width:I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_d1

    .line 440
    :cond_bb
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;-><init>(II)V

    # setter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_OriginalLandscapeMeasuredSize:Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$3102(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;)Lmobisocial/omlet/overlaybar/ui/helper/UIHelper$Size;

    .line 441
    :cond_d1
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$10;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    new-array v1, v4, [Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->fitVideoToContainer([Landroid/content/res/Configuration;)V

    goto/16 :goto_9
.end method
