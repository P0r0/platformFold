.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    .prologue
    .line 472
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_32

    .line 477
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_videoEditFragment_end_time_must_be_larger_than_start_time"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 506
    :goto_31
    return-void

    .line 480
    :cond_32
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_videoEditFragment_processing"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "omp_videoEditFragment_please_wait"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 481
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    new-instance v2, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;

    invoke-direct {v3, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;-><init>(Lmobisocial/omlet/overlaybar/util/media/IAsyncTaskResponse;)V

    iput-object v2, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    .line 505
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimVideoAsyncTask:Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_originalFilePath:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimStartUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    iget-wide v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->_TrimEndUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/util/media/TrimVideoAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_31
.end method
