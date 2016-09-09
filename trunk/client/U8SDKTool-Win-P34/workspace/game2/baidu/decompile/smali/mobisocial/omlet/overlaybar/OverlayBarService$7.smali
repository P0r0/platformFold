.class Lmobisocial/omlet/overlaybar/OverlayBarService$7;
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
    .line 702
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$7;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 710
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$7;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 712
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$7;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->minOverlayBackground()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3600(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 714
    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 718
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 706
    return-void
.end method
