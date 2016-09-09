.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 152
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->apiManager:Lmobisocial/omlib/api/OmletApiManager;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;)V

    invoke-static {v0, v1, v2}, Lmobisocial/omlib/client/ClientAuthUtils;->promptLogout(Lmobisocial/omlib/api/OmletApiManager;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method
