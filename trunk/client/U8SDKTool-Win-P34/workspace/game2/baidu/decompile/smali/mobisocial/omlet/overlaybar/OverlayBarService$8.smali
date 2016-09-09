.class Lmobisocial/omlet/overlaybar/OverlayBarService$8;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 724
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$8;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 732
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$8;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 733
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$8;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$8;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v1

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;)V

    .line 735
    :cond_13
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 739
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 728
    return-void
.end method
