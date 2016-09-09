.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->UpdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 400
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_UserYouFollowed:Ljava/lang/Boolean;

    .line 405
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 416
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->SetFollowBtn()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    .line 417
    return-void
.end method
