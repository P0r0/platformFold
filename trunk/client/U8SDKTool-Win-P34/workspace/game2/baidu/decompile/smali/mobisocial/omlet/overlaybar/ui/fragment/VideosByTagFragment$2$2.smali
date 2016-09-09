.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$2;
.super Ljava/lang/Object;
.source "VideosByTagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    .prologue
    .line 145
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->LATEST:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 150
    return-void
.end method
