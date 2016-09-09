.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    .prologue
    .line 521
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 521
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 525
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v2

    invoke-interface {v2}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    .line 526
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 527
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 559
    :cond_26
    :goto_26
    return-void

    .line 539
    :cond_27
    const/4 v0, 0x0

    .line 540
    .local v0, "share_link":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    instance-of v2, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v2, :cond_4c

    .line 541
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v0, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;->LinkUrl:Ljava/lang/String;

    .line 544
    :cond_38
    :goto_38
    move-object v1, v0

    .line 545
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;

    invoke-direct {v3, p0, v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_26

    .line 542
    .end local v1    # "url":Ljava/lang/String;
    :cond_4c
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    instance-of v2, v2, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    if-eqz v2, :cond_38

    .line 543
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    check-cast v2, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v0, v2, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->LinkUrl:Ljava/lang/String;

    goto :goto_38
.end method
