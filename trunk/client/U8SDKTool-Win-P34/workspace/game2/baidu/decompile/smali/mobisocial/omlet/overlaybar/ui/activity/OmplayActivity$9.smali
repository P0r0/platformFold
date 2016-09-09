.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    .prologue
    .line 353
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 361
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialProfileView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 357
    return-void
.end method
