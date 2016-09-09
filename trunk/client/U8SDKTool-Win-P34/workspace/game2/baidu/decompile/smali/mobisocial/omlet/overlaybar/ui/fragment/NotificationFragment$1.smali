.class Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;
.super Ljava/lang/Object;
.source "NotificationFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 49
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 4
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 53
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    .line 54
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 55
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    :cond_20
    return-void
.end method
