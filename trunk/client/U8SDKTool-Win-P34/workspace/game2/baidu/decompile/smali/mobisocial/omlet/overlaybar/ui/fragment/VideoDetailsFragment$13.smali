.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;
.super Landroid/os/AsyncTask;
.source "VideoDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->onApiReady(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 634
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 638
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v3

    invoke-interface {v3}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "account":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 640
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 649
    :goto_15
    return-object v3

    .line 642
    :cond_16
    :try_start_16
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v3, v0, v4, v5}, Lmobisocial/omlib/client/ClientGameUtils;->getAccountsFolowed(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;

    move-result-object v1

    .line 643
    .local v1, "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MyFollowItems:Ljava/util/List;

    .line 644
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;->AccountsFollowed:Ljava/util/List;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MyFollowItems:Ljava/util/List;
    :try_end_38
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_16 .. :try_end_38} :catch_3e

    .line 649
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_15

    .line 645
    .end local v1    # "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    :catch_3e
    move-exception v2

    .line 646
    .local v2, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v2}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 647
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 634
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 654
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 655
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_f

    .line 665
    :cond_e
    :goto_e
    return-void

    .line 657
    :cond_f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_MyFollowItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDUser;

    .line 658
    .local v0, "user":Lmobisocial/longdan/LDProtocols$LDUser;
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDUser;->Account:Ljava/lang/String;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPosterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_17

    .line 659
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    .line 663
    .end local v0    # "user":Lmobisocial/longdan/LDProtocols$LDUser;
    :cond_3c
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->SetFollowBtn()V
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    goto :goto_e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 634
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$13;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
