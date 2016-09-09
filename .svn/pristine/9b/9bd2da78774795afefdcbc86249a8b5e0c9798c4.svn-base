.class Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;
.super Ljava/lang/Object;
.source "NotificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    .prologue
    .line 55
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 59
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_error_not_signed_in"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "signin":Landroid/content/Intent;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
