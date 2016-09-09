.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    .prologue
    .line 881
    .local p0, "this":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;, "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;"
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 885
    .local p0, "this":Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;, "Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;"
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 886
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mContext:Landroid/content/Context;

    const-string v5, "omp_please_wait"

    invoke-static {v4, v5}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$DelayedDialogTask;->mProgress:Landroid/app/ProgressDialog;

    .line 888
    :cond_2b
    return-void
.end method
