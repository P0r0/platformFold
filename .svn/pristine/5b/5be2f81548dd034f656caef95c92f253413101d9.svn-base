.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 269
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 274
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 275
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 276
    return-void
.end method
