.class Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;
.super Ljava/lang/Object;
.source "FollowingFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getUserAccount(Z)V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$doSigninIfNeeded:Z


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;ZLandroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iput-boolean p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->val$doSigninIfNeeded:Z

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 110
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 4
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 114
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->val$doSigninIfNeeded:Z

    if-eqz v0, :cond_25

    .line 115
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 116
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_24
    :goto_24
    return-void

    .line 128
    :cond_25
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;Lmobisocial/omlib/api/OmletApi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 167
    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_24
.end method
