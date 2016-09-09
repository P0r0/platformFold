.class Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;
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
    .line 139
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->isUserFollow:Z

    .line 144
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->SetFollowBtn()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V

    .line 145
    return-void
.end method
