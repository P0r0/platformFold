.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    .prologue
    .line 472
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 472
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 476
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    .line 477
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 478
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_26
    :goto_26
    return-void

    .line 491
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_27
    :try_start_27
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v2, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDPost;->YouLiked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_62

    const/4 v1, 0x1

    :goto_42
    invoke-virtual {v2, v3, v1}, Lmobisocial/omlib/client/ClientGameUtils;->likePost(Lmobisocial/longdan/LDProtocols$LDPostId;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_45
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_27 .. :try_end_45} :catch_64

    .line 495
    :goto_45
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 496
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1$2;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_26

    .line 491
    :cond_62
    const/4 v1, 0x0

    goto :goto_42

    .line 492
    :catch_64
    move-exception v0

    .line 493
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v1, "MediaItemAdapter"

    const-string v2, "Couldn\'t like post"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45
.end method
