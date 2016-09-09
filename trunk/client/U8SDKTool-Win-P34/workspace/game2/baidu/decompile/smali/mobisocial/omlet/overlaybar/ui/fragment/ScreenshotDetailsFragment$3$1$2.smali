.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

    .prologue
    .line 269
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 273
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->val$url:Ljava/lang/String;

    if-nez v1, :cond_35

    .line 274
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

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

    .line 282
    :goto_34
    return-void

    .line 276
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_34
.end method
