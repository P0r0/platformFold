.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->onLikedListener(Z)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

.field final synthetic val$liked:Z


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;Z)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    .prologue
    .line 156
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iput-boolean p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->val$liked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 156
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 160
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 161
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 162
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->canPause()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 163
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->pause()V

    .line 165
    :cond_2d
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_3d
    :goto_3d
    return-void

    .line 178
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_3e
    :try_start_3e
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-boolean v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;->val$liked:Z

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->likePost(Lmobisocial/longdan/LDProtocols$LDPostId;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_57
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_3e .. :try_end_57} :catch_58

    goto :goto_3d

    .line 179
    :catch_58
    move-exception v0

    .line 180
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_3d
.end method
