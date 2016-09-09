.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;
.super Ljava/lang/Object;
.source "VideosByTagFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    return-void
.end method
