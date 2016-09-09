.class Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;
.super Ljava/lang/Object;
.source "AddFollowUserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    .prologue
    .line 175
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 179
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myOmletId:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 180
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_MyIdText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "omp_followUserFragment_your_id"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myOmletId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_3e
    return-void

    .line 182
    :cond_3f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->_MyIdText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3e
.end method
