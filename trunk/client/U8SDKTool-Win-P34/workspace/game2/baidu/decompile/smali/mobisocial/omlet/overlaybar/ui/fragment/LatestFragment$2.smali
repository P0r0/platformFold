.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$2;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->loadNextPage()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)V

    .line 105
    return-void
.end method
