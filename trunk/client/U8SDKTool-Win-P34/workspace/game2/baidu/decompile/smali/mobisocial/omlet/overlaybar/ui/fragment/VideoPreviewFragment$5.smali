.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;
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
    .line 145
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoFile:Ljava/io/File;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 157
    :cond_c
    :goto_c
    return-void

    .line 151
    :cond_d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_RedoBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OriginPath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_c

    .line 153
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_OriginPath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setCurrentFilePath(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$402(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_VideoViewGroup:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->resetMediaPlayer(Ljava/lang/String;)V

    goto :goto_c
.end method
