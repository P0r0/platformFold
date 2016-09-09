.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    .prologue
    .line 509
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 513
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 514
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 515
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v3

    const-string v4, "omp_reportReason_indecent_content"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "omp_reportReason_spam"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "omp_reportReason_copyright_infringement"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "omp_reportReason_other"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v4

    const-string v5, "omp_dialog_cancel"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 516
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v3

    const-string v4, "omp_prompt_report_post_title"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 518
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 539
    return-void
.end method
