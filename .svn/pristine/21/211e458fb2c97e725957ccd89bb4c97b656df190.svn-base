.class Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field addFollowView:Landroid/view/View;

.field convertView:Landroid/view/ViewGroup;

.field followedTextView:Landroid/widget/TextView;

.field index:I

.field isFollow:Z

.field nameTextView:Landroid/widget/TextView;

.field profileImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Landroid/view/View;Z)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "isContent"    # Z

    .prologue
    .line 100
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .line 101
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    if-eqz p3, :cond_52

    move-object v0, p2

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->convertView:Landroid/view/ViewGroup;

    .line 104
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "profile_icon"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->profileImageView:Landroid/widget/ImageView;

    .line 105
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 106
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "followed"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->followedTextView:Landroid/widget/TextView;

    .line 107
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "add_follow"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;->addFollowView:Landroid/view/View;

    .line 109
    :cond_52
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    return-void
.end method
