.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    .prologue
    .line 700
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 704
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$GetVideoPathAsyncTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v2

    const-string v3, "omp_videoDetailsFragment_error_loading_video"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 705
    return-void
.end method
