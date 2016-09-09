.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->UpdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

.field final synthetic val$ldPostTag:Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .prologue
    .line 437
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;->val$ldPostTag:Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraTag"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;->val$ldPostTag:Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDPostTag;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 444
    return-void
.end method
