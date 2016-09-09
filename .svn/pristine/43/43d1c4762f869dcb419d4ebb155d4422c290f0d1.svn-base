.class Lmobisocial/omlib/ui/signin/SignInFragment$5$1;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment$5;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/ui/signin/SignInFragment$5;

    .prologue
    .line 230
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 235
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-result-object v0

    sget-object v1, Lmobisocial/omlib/api/OmletApiManager$Error;->ACCESS_CODE_INVALID:Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-interface {v0, v1}, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;->onError(Lmobisocial/omlib/api/OmletApiManager$Error;)V

    .line 236
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$5;

    iget-object v1, v1, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oml_auth_error"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    return-void
.end method
