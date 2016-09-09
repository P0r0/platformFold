.class Lmobisocial/omlib/ui/signin/SignInFragment$5;
.super Landroid/os/AsyncTask;
.source "SignInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment;->confirmAuthCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field p:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lmobisocial/omlib/ui/signin/SignInFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 215
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 215
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/ui/signin/SignInFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$900(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/api/OmletApiManager;->getOmletApiBlocking()Lmobisocial/omlib/api/OmletApi;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v2, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v2}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mAuthCode:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$800(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mQueryKey:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$600(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lmobisocial/omlib/client/ClientAuthUtils;->confirmAuthCodeBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lmobisocial/omlib/exception/AuthenticationException; {:try_start_0 .. :try_end_29} :catch_2b

    .line 240
    :goto_29
    const/4 v1, 0x0

    return-object v1

    .line 228
    :catch_2b
    move-exception v0

    .line 229
    .local v0, "e":Lmobisocial/omlib/exception/AuthenticationException;
    const-string v1, "SignInFragment"

    const-string v2, "Error authenticating"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;

    invoke-direct {v2, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$5$1;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment$5;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_29
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 215
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/ui/signin/SignInFragment$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 245
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 246
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;->onAuthFinished()V

    .line 247
    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 221
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    iget-object v2, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v2}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "oml_logging_in"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmobisocial/omlib/ui/signin/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    iget-object v3, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "oml_please_wait"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$5;->p:Landroid/app/ProgressDialog;

    .line 222
    return-void
.end method
