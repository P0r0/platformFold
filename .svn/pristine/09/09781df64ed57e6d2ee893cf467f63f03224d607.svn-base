.class Lmobisocial/omlib/ui/signin/SignInFragment$1$1;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/ui/signin/SignInFragment$1;

    .prologue
    .line 89
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iget-object v1, v1, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oml_already_have_account"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;->onAuthFinished()V

    .line 95
    return-void
.end method
