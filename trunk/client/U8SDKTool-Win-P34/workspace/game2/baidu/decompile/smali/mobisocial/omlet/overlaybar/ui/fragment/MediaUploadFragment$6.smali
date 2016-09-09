.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 271
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 275
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v8}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_b

    .line 346
    :goto_a
    return-void

    .line 279
    :cond_b
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v8}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v8

    invoke-virtual {v8}, Lmobisocial/omlib/api/OmletApiManager;->getConnectedService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/api/OmletApi;

    .line 280
    .local v1, "api":Lmobisocial/omlib/api/OmletApi;
    if-nez v1, :cond_20

    .line 282
    const-string v8, "VideoUpload"

    const-string v9, "api not available"

    invoke-static {v8, v9}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_20
    invoke-static {v0, v11}, Lmobisocial/omlet/overlaybar/util/Misc;->getNetworkState(Landroid/content/Context;I)Z

    move-result v3

    .line 285
    .local v3, "isMobile":Z
    invoke-static {v0, v10}, Lmobisocial/omlet/overlaybar/util/Misc;->getNetworkState(Landroid/content/Context;I)Z

    move-result v4

    .line 286
    .local v4, "isWifi":Z
    new-instance v7, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;

    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    new-instance v9, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$1;

    invoke-direct {v9, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;)V

    invoke-direct {v7, v8, v0, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;)V

    .line 298
    .local v7, "task":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;
    if-eqz v4, :cond_6b

    .line 299
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isBaidu()Z
    invoke-static {v8}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->canUpdateUserName(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 300
    :cond_44
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v8}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->uploadMedia()V

    goto :goto_a

    .line 302
    :cond_4a
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v8, v8, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 303
    sget-object v8, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v9, v10, [Ljava/lang/String;

    iget-object v10, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v10, v10, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a

    .line 307
    :cond_6b
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_title_video"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_msg_no_wifi_data"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "no_WiFI":Ljava/lang/String;
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_msg_no_network_connection"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "no_Online":Ljava/lang/String;
    if-eqz v3, :cond_e7

    .line 312
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_option_continue"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;

    invoke-direct {v9, p0, v0, v7}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;Landroid/app/Activity;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_option_wifi_settings"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$3;

    invoke-direct {v9, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    :goto_e2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a

    .line 331
    :cond_e7
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_upload_warning_option_wifi_settings"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$4;

    invoke-direct {v9, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    iget-object v8, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v9, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "omp_dialog_cancel"

    invoke-static {v9, v10}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$5;

    invoke-direct {v9, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$5;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_e2
.end method
