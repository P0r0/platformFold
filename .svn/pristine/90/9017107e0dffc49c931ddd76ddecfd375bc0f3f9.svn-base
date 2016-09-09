.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;
.super Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;
.source "MediaUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaiduBBSIsValidNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/content/Context;Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    .prologue
    .line 973
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .line 974
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/content/Context;)V

    .line 975
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    .line 976
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 969
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->doInBackground([Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    .registers 7
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 980
    const/4 v1, 0x0

    .line 981
    .local v1, "response":Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    if-eqz p1, :cond_f

    array-length v2, p1

    if-lez v2, :cond_f

    .line 983
    :try_start_6
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil;->isValidName(Landroid/content/Context;Ljava/lang/String;)Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_10
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_e} :catch_2e

    move-result-object v1

    .line 990
    :cond_f
    :goto_f
    return-object v1

    .line 984
    :catch_10
    move-exception v0

    .line 985
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "VideoUpload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed check name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 986
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 987
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "VideoUpload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parse json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 969
    check-cast p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->onPostExecute(Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;)V

    return-void
.end method

.method protected onPostExecute(Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;)V
    .registers 7
    .param p1, "response"    # Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;

    .prologue
    .line 995
    invoke-super {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->onPostExecute(Ljava/lang/Object;)V

    .line 996
    if-eqz p1, :cond_f

    iget v1, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    sget-object v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ACCESS_ERROR:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 997
    :cond_f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 998
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_upload_video_name_error_access_error"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1024
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1025
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;->onFinished()V

    .line 1027
    :cond_3b
    return-void

    .line 1000
    :cond_3c
    iget v1, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    sget-object v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->NAME_EXISTED:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_62

    .line 1001
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1002
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_upload_video_name_error_existed"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2a

    .line 1004
    :cond_62
    iget v1, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    sget-object v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->NAME_INVALID:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_d1

    .line 1005
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1007
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_upload_video_name_error_invalid"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 1011
    .end local v0    # "text":Ljava/lang/String;
    :cond_bc
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_upload_video_name_error_invalid"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2a

    .line 1014
    :cond_d1
    iget v1, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    sget-object v2, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->OK:Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse$Status;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_101

    .line 1015
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1016
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_NameDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_upload_video_edit_name_description"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1017
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    if-eqz v1, :cond_2a

    .line 1018
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$BaiduBBSIsValidNameTask;->mListener:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;

    invoke-interface {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$OnBaiduBBSTaskCompletedListener;->onOkayResult()V

    goto/16 :goto_2a

    .line 1022
    :cond_101
    const-string v1, "VideoUpload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown isValidName status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmobisocial/omlet/overlaybar/util/BaiduGameBBSUtil$IsValidNameResponse;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a
.end method
