.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->onSharedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    .prologue
    .line 197
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 201
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$url:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 202
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_upload_warning_msg_no_network_connection"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    :goto_22
    return-void

    .line 204
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method
