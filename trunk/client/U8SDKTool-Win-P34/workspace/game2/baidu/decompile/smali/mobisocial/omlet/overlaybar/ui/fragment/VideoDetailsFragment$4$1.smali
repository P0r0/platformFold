.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    .prologue
    .line 312
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 312
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 316
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    .line 317
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 318
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_24
    :goto_24
    return-void

    .line 331
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_25
    :try_start_25
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v2, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_VideoPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;->getPostId()Lmobisocial/longdan/LDProtocols$LDPostId;

    move-result-object v3

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_62

    const/4 v1, 0x1

    :goto_44
    invoke-virtual {v2, v3, v1}, Lmobisocial/omlib/client/ClientGameUtils;->likePost(Lmobisocial/longdan/LDProtocols$LDPostId;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_47
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_25 .. :try_end_47} :catch_64

    .line 335
    :goto_47
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 336
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1$2;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$4$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 331
    :cond_62
    const/4 v1, 0x0

    goto :goto_44

    .line 332
    :catch_64
    move-exception v0

    .line 333
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_47
.end method
