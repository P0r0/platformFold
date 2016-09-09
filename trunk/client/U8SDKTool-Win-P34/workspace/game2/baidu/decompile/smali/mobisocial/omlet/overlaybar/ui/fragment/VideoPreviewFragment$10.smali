.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->uploadVideo()V
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
    .line 346
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraHideVideoTooLongAlert"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    const-string v1, "path"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    new-array v2, v3, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->showEditScreen([Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;[Landroid/os/Bundle;)V

    .line 354
    return-void
.end method
