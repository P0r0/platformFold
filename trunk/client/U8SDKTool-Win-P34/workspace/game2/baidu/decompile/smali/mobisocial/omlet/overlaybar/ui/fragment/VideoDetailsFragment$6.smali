.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->UpdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 385
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 389
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-boolean v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_IsOwner:Z

    if-eqz v1, :cond_17

    .line 390
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v3, v4, [Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 397
    :goto_16
    return-void

    .line 392
    :cond_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "extraUserName"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->val$userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_16
.end method
