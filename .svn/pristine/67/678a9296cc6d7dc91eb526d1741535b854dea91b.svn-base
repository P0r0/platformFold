.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-boolean v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isUserFollow:Z

    if-eqz v0, :cond_18

    .line 417
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CancelFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_17
    return-void

    .line 420
    :cond_18
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_AddFollow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CancelFollow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method
