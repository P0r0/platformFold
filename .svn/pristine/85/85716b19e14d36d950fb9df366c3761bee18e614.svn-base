.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->showUploadFailedDialog(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

.field final synthetic val$positiveResult:[Z


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;[Z)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 811
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->val$positiveResult:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    .line 815
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadFailedDialog:Landroid/app/Dialog;

    .line 816
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->val$positiveResult:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_29

    .line 817
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_MediaPath:Ljava/lang/String;

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->getStatus(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    move-result-object v0

    .line 818
    .local v0, "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    if-eqz v0, :cond_30

    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->status:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    sget-object v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;->RetryableFailure:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$Status;

    if-ne v1, v2, :cond_30

    .line 819
    iget-object v1, v0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->retryResult:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;

    invoke-virtual {v1, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$RetryResult;->trySetResult(Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 820
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iput-boolean v3, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_IsUploading:Z

    .line 828
    .end local v0    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :cond_29
    :goto_29
    return-void

    .line 822
    .restart local v0    # "upload":Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;
    :cond_2a
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->uploadMedia()V

    goto :goto_29

    .line 825
    :cond_30
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$16;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->uploadMedia()V

    goto :goto_29
.end method
