.class Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "FollowingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->loadItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method
