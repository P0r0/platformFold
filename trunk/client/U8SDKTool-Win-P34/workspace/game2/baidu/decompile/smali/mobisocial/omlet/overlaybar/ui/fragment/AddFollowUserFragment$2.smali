.class Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;
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
    .line 86
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 91
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 92
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_SearchEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 93
    return-void
.end method
