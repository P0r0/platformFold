.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;
.super Landroid/os/AsyncTask;
.source "VideosByTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadVideosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;


# direct methods
.method private constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;
    .param p2, "x1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->doInBackground([Ljava/lang/Void;)Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
    .registers 8
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 241
    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_1e

    .line 244
    :goto_6
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 242
    :catch_1e
    move-exception v0

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 235
    check-cast p1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$LoadVideosTask;->onPostExecute(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)V

    return-void
.end method

.method protected onPostExecute(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)V
    .registers 2
    .param p1, "mediaItemAdapter"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 250
    return-void
.end method
