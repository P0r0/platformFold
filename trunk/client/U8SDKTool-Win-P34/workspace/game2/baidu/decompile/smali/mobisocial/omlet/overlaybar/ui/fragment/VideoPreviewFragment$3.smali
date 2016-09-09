.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;
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
    .line 119
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 128
    :cond_c
    :goto_c
    return-void

    .line 125
    :cond_d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->hasEnoughDiskSpace()Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->uploadVideo()V

    goto :goto_c
.end method
