.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 428
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;

    .line 433
    .local v0, "holder":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;
    iget-boolean v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;->isAdded:Z

    if-eqz v1, :cond_1f

    .line 434
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->removeTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    invoke-static {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V

    .line 438
    :goto_f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getSecondaryTagsAsStringSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setVideoTagsToRecover(Landroid/content/Context;Ljava/util/Set;)V

    .line 439
    return-void

    .line 436
    :cond_1f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->addTag(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V
    invoke-static {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$ViewHolder;)V

    goto :goto_f
.end method
