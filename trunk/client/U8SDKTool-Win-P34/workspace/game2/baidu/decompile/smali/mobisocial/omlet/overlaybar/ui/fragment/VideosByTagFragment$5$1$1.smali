.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "VideosByTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;)V
    .registers 2
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;

    .prologue
    .line 215
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_ItemsLayoutManager:Landroid/support/v7/widget/GridLayoutManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->access$300(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method
