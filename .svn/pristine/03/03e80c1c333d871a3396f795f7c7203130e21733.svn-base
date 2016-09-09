.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 140
    :cond_c
    :goto_c
    return-void

    .line 137
    :cond_d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->hasEnoughDiskSpace()Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$SaveVideoTask;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$SaveVideoTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$SaveVideoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c
.end method
