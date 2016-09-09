.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 732
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 736
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->val$name:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 737
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_NameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_33

    .line 739
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_profileFragment_me"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    :cond_32
    :goto_32
    return-void

    .line 740
    :cond_33
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->USER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_32

    .line 741
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TitleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$15;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_profileFragment_profile"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method
