.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 406
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 415
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 410
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$13;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    return-void
.end method
