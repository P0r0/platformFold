.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

.field final synthetic val$c:Landroid/app/Activity;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;Lmobisocial/omlib/api/OmletApi;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    .prologue
    .line 639
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->val$c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->needsOmletSignout(Lmobisocial/omlib/api/OmletApi;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 644
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckboxContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 646
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_UploadVideoButtonViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 647
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;Landroid/app/Activity;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 670
    :goto_43
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->reloadNameField()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V

    .line 671
    :cond_4a
    :goto_4a
    return-void

    .line 648
    :cond_4b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->isSigninOmlet(Lmobisocial/omlib/api/OmletApi;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 649
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckboxContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 660
    :cond_67
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->isSigninBaidu()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 661
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckboxContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_AgreeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_43

    .line 664
    :cond_88
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->getLoginHelper()Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->showNeedBaiduLoginToast()V

    .line 665
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 666
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$13$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_4a
.end method
