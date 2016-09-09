.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->uploadMedia()V
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
    .line 531
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 536
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->reloadNameField()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    .line 538
    :cond_d
    return-void
.end method
