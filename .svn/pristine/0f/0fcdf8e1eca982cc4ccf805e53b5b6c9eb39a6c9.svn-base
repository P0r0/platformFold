.class Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;
.super Landroid/os/AsyncTask;
.source "FollowingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->run(Lmobisocial/omlib/api/OmletApi;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    .prologue
    .line 128
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 133
    :try_start_1
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_11

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    :goto_10
    return-object v0

    .line 136
    :cond_11
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 137
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "account":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0, v6}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setMyAccount(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iput-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_UserAccount:Ljava/lang/String;

    .line 141
    .end local v6    # "account":Ljava/lang/String;
    :cond_42
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientGameUtils;->getFollowingWalls([B)Lmobisocial/longdan/LDProtocols$LDWallsResponse;

    move-result-object v9

    .line 142
    .local v9, "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallsResponse;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_52
    iget-object v0, v9, Lmobisocial/longdan/LDProtocols$LDWallsResponse;->Walls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_70

    .line 143
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_Items:Ljava/util/ArrayList;

    iget-object v0, v9, Lmobisocial/longdan/LDProtocols$LDWallsResponse;->Walls:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v0, v0, Lmobisocial/longdan/LDProtocols$LDWall;->Posts:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    .line 145
    :cond_70
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_Items:Ljava/util/ArrayList;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->LDPostCreationDateComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v10, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_Items:Ljava/util/ArrayList;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, v10, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9e
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_1 .. :try_end_9e} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9e} :catch_ab

    move-result-object v0

    goto/16 :goto_10

    .line 148
    .end local v8    # "i":I
    .end local v9    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallsResponse;
    :catch_a1
    move-exception v7

    .line 149
    .local v7, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v7}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 150
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_10

    .line 151
    .end local v7    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_ab
    move-exception v7

    .line 152
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_10
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 160
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 166
    :cond_1a
    :goto_1a
    return-void

    .line 162
    :cond_1b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-boolean v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->val$doSigninIfNeeded:Z

    if-nez v0, :cond_1a

    .line 163
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->loadItems()V

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$3$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
