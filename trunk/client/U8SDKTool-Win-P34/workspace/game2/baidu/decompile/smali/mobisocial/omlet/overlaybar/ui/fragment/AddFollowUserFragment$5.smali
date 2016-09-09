.class Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;
.super Ljava/lang/Object;
.source "AddFollowUserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_27

    .line 128
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v3, v4, [Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 134
    :goto_26
    return-void

    .line 130
    :cond_27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_26
.end method
