.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;
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

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 301
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$5;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 332
    return-void
.end method
