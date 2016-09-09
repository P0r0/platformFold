.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;
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
    .line 334
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isUserFollow:Z

    .line 339
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 350
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetFollowBtn()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    .line 351
    return-void
.end method
