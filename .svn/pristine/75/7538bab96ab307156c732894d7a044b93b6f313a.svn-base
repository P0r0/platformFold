.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;
.super Landroid/os/AsyncTask;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->run(Lmobisocial/omlib/api/OmletApi;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    .prologue
    .line 663
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 667
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-interface {v3}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v3

    invoke-interface {v3}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "account":Ljava/lang/String;
    :try_start_a
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v3, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-virtual {v3, v0, v4, v5}, Lmobisocial/omlib/client/ClientGameUtils;->getAccountsFolowed(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;

    move-result-object v1

    .line 670
    .local v1, "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_MyFollowItems:Ljava/util/List;

    .line 671
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v4, v1, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;->AccountsFollowed:Ljava/util/List;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_MyFollowItems:Ljava/util/List;
    :try_end_2e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_a .. :try_end_2e} :catch_34

    .line 676
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .end local v1    # "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    :goto_33
    return-object v3

    .line 672
    :catch_34
    move-exception v2

    .line 673
    .local v2, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v2}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 674
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_33
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 663
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 681
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 682
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_11

    .line 692
    :cond_10
    :goto_10
    return-void

    .line 684
    :cond_11
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_MyFollowItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDUser;

    .line 685
    .local v0, "user":Lmobisocial/longdan/LDProtocols$LDUser;
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDUser;->Account:Ljava/lang/String;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    .line 686
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isUserFollow:Z

    .line 690
    .end local v0    # "user":Lmobisocial/longdan/LDProtocols$LDUser;
    :cond_3c
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    goto :goto_10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 663
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
