.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$7;
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
    .line 368
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;->UPLOAD:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetProfileTab(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$700(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V

    .line 373
    return-void
.end method
