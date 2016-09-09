.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;

    .prologue
    .line 380
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->pauseVideo()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V

    .line 385
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;[Landroid/os/Bundle;)V

    .line 386
    return-void
.end method
