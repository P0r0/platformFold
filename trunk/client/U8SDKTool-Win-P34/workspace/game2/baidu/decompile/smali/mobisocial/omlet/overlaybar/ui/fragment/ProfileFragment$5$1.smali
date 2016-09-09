.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    .prologue
    .line 305
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 305
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 309
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 310
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 311
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_2e
    :goto_2e
    return-void

    .line 324
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_2f
    :try_start_2f
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->followUser(Ljava/lang/String;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;

    .line 325
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isUserFollow:Z

    .line 326
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    :try_end_4f
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_2f .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 327
    :catch_50
    move-exception v0

    .line 328
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_2e
.end method
