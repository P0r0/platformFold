.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->ensureUserAuth()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 633
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 633
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 4
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 637
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 638
    .local v0, "c":Landroid/app/Activity;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 639
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;

    invoke-direct {v1, p0, p1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;Lmobisocial/omlib/api/OmletApi;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 674
    :cond_18
    return-void
.end method
