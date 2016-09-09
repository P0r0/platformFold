.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$6;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 180
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 185
    return-void
.end method
