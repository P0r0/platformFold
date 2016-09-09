.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$doSigninIfNeeded:Z


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;ZLandroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 559
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-boolean p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->val$doSigninIfNeeded:Z

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 559
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_2e

    .line 564
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->val$doSigninIfNeeded:Z

    if-eqz v0, :cond_2d

    .line 565
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 695
    :cond_2d
    :goto_2d
    return-void

    .line 577
    :cond_2e
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;Lmobisocial/omlib/api/OmletApi;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 615
    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 616
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;Lmobisocial/omlib/api/OmletApi;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 661
    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 662
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->USER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_2d

    .line 663
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;

    invoke-direct {v0, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;Lmobisocial/omlib/api/OmletApi;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 693
    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2d
.end method
