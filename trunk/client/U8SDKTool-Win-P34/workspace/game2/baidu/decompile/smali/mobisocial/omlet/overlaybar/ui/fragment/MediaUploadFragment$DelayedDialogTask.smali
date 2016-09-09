.class abstract Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;
.super Landroid/os/AsyncTask;
.source "MediaUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DelayedDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mProgress:Landroid/app/ProgressDialog;

.field mProgressHandler:Landroid/os/Handler;

.field mProgressRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 873
    .local p0, "this":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;, "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 874
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mContext:Landroid/content/Context;

    .line 875
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, "this":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;, "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 897
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 898
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 899
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 901
    :cond_13
    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    .line 879
    .local p0, "this":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;, "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 880
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressHandler:Landroid/os/Handler;

    .line 881
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressRunnable:Ljava/lang/Runnable;

    .line 891
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 892
    return-void
.end method
