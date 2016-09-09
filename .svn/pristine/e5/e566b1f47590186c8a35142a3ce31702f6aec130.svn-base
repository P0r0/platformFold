.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getVideosForPage(I)V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

.field final synthetic val$pageNumber:I


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 208
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 10
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 213
    :try_start_0
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 214
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v4

    invoke-interface {v4}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "account":Ljava/lang/String;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v4, v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setMyAccount(Ljava/lang/String;)V

    .line 218
    .end local v0    # "account":Ljava/lang/String;
    :cond_25
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v4

    invoke-virtual {v4}, Lmobisocial/omlib/api/OmletApiManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "postTag":Ljava/lang/String;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_55

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "package_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 220
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "package_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    :cond_55
    iget v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e7

    .line 223
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e6

    .line 224
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v5, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v6, 0x0

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ResultsPerPage:I
    invoke-static {v7}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)I

    move-result v7

    invoke-virtual {v5, v2, v6, v4, v7}, Lmobisocial/omlib/client/ClientGameUtils;->getGameWall(Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;

    move-result-object v3

    .line 229
    .local v3, "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :goto_91
    iget-object v4, v3, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDWall;->ContinuationKey:[B

    if-eqz v4, :cond_ac

    .line 230
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDWall;->ContinuationKey:[B

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_ac
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_CachedPages:Ljava/util/HashMap;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDWall;->Posts:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v5, v3, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDWall;->Posts:Ljava/util/List;

    iput-object v5, v4, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_Items:Ljava/util/List;

    .line 233
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_Items:Ljava/util/List;

    sget-object v5, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->LDPostScoreComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_d0
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_d0} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d0} :catch_101

    .line 241
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_e6

    .line 242
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    .end local v2    # "postTag":Ljava/lang/String;
    .end local v3    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :cond_e6
    :goto_e6
    return-void

    .line 228
    .restart local v2    # "postTag":Ljava/lang/String;
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_e7
    :try_start_e7
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ResultsPerPage:I
    invoke-static {v7}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)I

    move-result v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lmobisocial/omlib/client/ClientGameUtils;->getGameWall(Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :try_end_fa
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_e7 .. :try_end_fa} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_fa} :catch_101

    move-result-object v3

    .restart local v3    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    goto :goto_91

    .line 234
    .end local v2    # "postTag":Ljava/lang/String;
    .end local v3    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :catch_fc
    move-exception v1

    .line 235
    .local v1, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v1}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_e6

    .line 237
    .end local v1    # "e":Lmobisocial/longdan/exception/LongdanException;
    :catch_101
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e6
.end method
