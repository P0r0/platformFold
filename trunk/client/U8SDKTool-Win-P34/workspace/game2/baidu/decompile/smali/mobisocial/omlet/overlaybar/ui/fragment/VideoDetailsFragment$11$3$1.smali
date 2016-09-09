.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;)V
    .registers 2
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    .prologue
    .line 534
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 538
    const/4 v1, 0x4

    if-eq p2, v1, :cond_7e

    .line 539
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v2

    const-string v3, "omp_prompt_report_post_msg"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 541
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v2

    const-string v3, "omp_dialog_ok"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmlibService:Lmobisocial/omlib/service/OmlibService;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/service/OmlibService;

    move-result-object v2

    const-string v3, "omp_dialog_cancel"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 552
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_7e
    return-void
.end method
