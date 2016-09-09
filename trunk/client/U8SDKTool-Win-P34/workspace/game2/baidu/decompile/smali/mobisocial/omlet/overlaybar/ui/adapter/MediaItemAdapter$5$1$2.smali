.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    .prologue
    .line 545
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 549
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->val$url:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 550
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "omp_upload_warning_msg_no_network_connection"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 557
    :goto_34
    return-void

    .line 552
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$5;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_34
.end method
