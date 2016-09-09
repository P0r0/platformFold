.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetProfileTab(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V
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
    .line 446
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_TwoColumnLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$800(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method
