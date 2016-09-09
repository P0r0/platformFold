.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$task:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;Landroid/app/Activity;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    .prologue
    .line 313
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->val$task:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isBaidu()Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->canUpdateUserName(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 317
    :cond_13
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->uploadMedia()V

    .line 322
    :goto_1a
    return-void

    .line 319
    :cond_1b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->val$task:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1a
.end method
