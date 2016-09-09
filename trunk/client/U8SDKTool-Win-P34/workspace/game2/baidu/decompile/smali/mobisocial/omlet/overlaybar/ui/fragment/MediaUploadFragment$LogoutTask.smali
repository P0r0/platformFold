.class public Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;
.super Landroid/os/AsyncTask;
.source "MediaUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1039
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1040
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    .line 1041
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1053
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1}, Lmobisocial/omlib/api/OmletApiManager;->getOmletApiBlocking()Lmobisocial/omlib/api/OmletApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->logout()V

    .line 1054
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    .line 1057
    :goto_12
    return-object v1

    .line 1055
    :catch_13
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib"

    const-string v2, "Error logging out"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1057
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_12
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1031
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1063
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1064
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 1065
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1066
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1083
    :goto_1b
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 1084
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    .line 1085
    return-void

    .line 1068
    :cond_26
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    .line 1069
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v3, "omp_upload_logout_auth_error"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v3, "omp_retry"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$2;

    invoke-direct {v3, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v3, "omp_cancel"

    .line 1075
    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;

    invoke-direct {v3, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1081
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1031
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 1045
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    const-string v4, "omp_please_wait"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mProgress:Landroid/app/ProgressDialog;

    .line 1046
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 1047
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 1048
    return-void
.end method
