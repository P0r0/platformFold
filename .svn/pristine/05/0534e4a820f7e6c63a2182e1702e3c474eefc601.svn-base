.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;
.super Landroid/os/AsyncTask;
.source "VideosByTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->run(Lmobisocial/omlib/api/OmletApi;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    .prologue
    .line 192
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 197
    :try_start_0
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/api/OmletApiManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "postTag":Ljava/lang/String;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "package_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 199
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "package_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_38
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v3, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v3}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Tag:Lmobisocial/longdan/LDProtocols$LDPostTag;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-virtual {v3, v1, v4, v5, v6}, Lmobisocial/omlib/client/ClientGameUtils;->getGameWall(Ljava/lang/String;Lmobisocial/longdan/LDProtocols$LDPostTag;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;

    move-result-object v2

    .line 202
    .local v2, "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v4, v2, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDWall;->Posts:Ljava/util/List;

    iput-object v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Items:Ljava/util/List;

    .line 203
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5d
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_5d} :catch_5f

    move-result-object v3

    .line 206
    .end local v1    # "postTag":Ljava/lang/String;
    .end local v2    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :goto_5e
    return-object v3

    .line 204
    :catch_5f
    move-exception v0

    .line 205
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 206
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_5e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 192
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 213
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_Items:Ljava/util/List;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, v6, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 214
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 223
    :cond_4a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 192
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
