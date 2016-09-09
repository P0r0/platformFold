.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    .prologue
    .line 481
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 485
    return-void
.end method

.method public onTaskCancelled(Ljava/lang/Object;)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 503
    return-void
.end method

.method public onTaskComplete(Ljava/lang/Object;)V
    .registers 7
    .param p1, "p"    # Ljava/lang/Object;

    .prologue
    .line 489
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 490
    .local v0, "newVideoPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 491
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_videoEditFragment_fail_to_trim"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 496
    .end local p1    # "p":Ljava/lang/Object;
    :goto_33
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 497
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 498
    return-void

    .line 493
    .restart local p1    # "p":Ljava/lang/Object;
    :cond_44
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_videoEditFragment_finished_trimming"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 494
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "p":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setCurrentFilePath(Ljava/lang/String;)V

    goto :goto_33
.end method
