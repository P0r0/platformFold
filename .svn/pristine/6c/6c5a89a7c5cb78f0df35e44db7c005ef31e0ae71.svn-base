.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->uploadVideo()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 358
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 362
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_config_flavor"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 363
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 364
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 365
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    :cond_3a
    :goto_3a
    return-void

    .line 378
    :cond_3b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 380
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3a
.end method
