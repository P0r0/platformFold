.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "LatestFragment.java"


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
    .line 114
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method
